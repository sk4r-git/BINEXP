//TODO write a description for this script
//@author
//@category CustomerSubmission
//@keybinding
//@menupath
//@toolbar

import java.lang.StringBuilder;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.util.*;
import ghidra.program.model.reloc.*;
import ghidra.program.model.data.*;
import ghidra.program.model.block.*;
import ghidra.program.model.symbol.*;
import ghidra.program.model.scalar.*;
import ghidra.program.model.mem.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.lang.*;
import ghidra.program.model.pcode.*;
import ghidra.program.model.address.*;


public class ghidra_export extends GhidraScript {


    private static final String HEX = "0123456789abcdef";
    private static String hexlify(byte[] bytes) {
	char[] chars = new char[bytes.length * 2];
	for (int j = 0; j < bytes.length; j++) {
	    int v = bytes[j] & 0xFF;
	    chars[j * 2] = HEX.charAt(v >>> 4);
	    chars[j * 2 + 1] = HEX.charAt(v & 0x0f);
	}
	return new String(chars);
    }

    public void run() throws Exception {
	Address newaddr = toAddr(0);
	currentProgram.setImageBase(newaddr, false);
	Listing listing = currentProgram.getListing();
	Address begin_plt;
	Address end_plt;
    int b_plt = 0;
	int e_plt = 0;
	for (MemoryBlock b : currentProgram.getMemory().getBlocks()) {
	    if (b.isInitialized()) {
		AddressSet s = new AddressSet(b.getStart(), b.getEnd());
		String plt_sec = new String(".plt");
		if (b.getName().equals(plt_sec)){
			begin_plt = b.getStart();
			end_plt   = b.getEnd();
			b_plt = Integer.parseInt(begin_plt.toString(), 16);
			e_plt = Integer.parseInt(end_plt.toString(), 16);
		}

		for (Instruction i : listing.getInstructions(s, true)) {
			System.out.println("\n\nbegin plt = " + b_plt + "\n");
			System.out.println("\n\nend plt = " + e_plt + "\n");
		    println("(address . 0x" + i.getAddress() + ")");
		    println("(opcode . 0x" + hexlify(i.getBytes()) + ")");
		    println("(size . " + i.getBytes().length + ")");
			StringBuilder m = new StringBuilder();
			m.append("(mnemonic . ");
			int call_libc = 0;
			if (i.getOperandType(0) == 8256){
			 	if (i.getOperandType(1) == 4194304){
			 		Address[] a = i.getFlows();
					String at = a[0].toString();
			 		int at2 = Integer.parseInt(at, 16);
					if (at2 > b_plt){
						if (at2 < e_plt){
							SymbolTable symbolTable = currentProgram.getSymbolTable();
							SymbolIterator si = symbolTable.getAllSymbols(true);
							for (Symbol cs : si){
								Address ca = cs.getAddress();
								if(!ca.isExternalAddress()){
									String ca2 = ca.toString();
									try {
										int ext_ad = Integer.parseInt(ca.toString(), 16);
										if (ext_ad == at2){
											System.out.println(cs);
											m.append('"');
											m.append("CALL ");
											m.append(cs);
											m.append('"');
											m.append(")");
											call_libc = 1;
											break;
										}
									}
									catch(NumberFormatException e){}
								}
							}
						}
					}
				}
			}
			if (call_libc == 0){
				m.append('"');
				m.append(i);
				m.append('"');
				m.append(")");
			}
			println(m.toString());
		    println("(kind . " + '"' + i.getFlowType() + '"' + ")");
		    StringBuilder k = new StringBuilder();
		    k.append("(successors .");
		    for (Address a : i.getFlows()) {
			if (!a.isExternalAddress()) {
			    k.append(" 0x");
			    k.append(a);
			}
		    }
		    k.append(")");
		    println(k.toString());
		}
	    }
	}
    }

}
