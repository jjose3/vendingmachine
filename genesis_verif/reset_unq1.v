//
//--------------------------------------------------------------------------------
//          THIS FILE WAS AUTOMATICALLY GENERATED BY THE GENESIS2 ENGINE        
//  FOR MORE INFORMATION: OFER SHACHAM (CHIP GENESIS INC / STANFORD VLSI GROUP)
//    !! THIS VERSION OF GENESIS2 IS NOT FOR ANY COMMERCIAL USE !!
//     FOR COMMERCIAL LICENSE CONTACT SHACHAM@ALUMNI.STANFORD.EDU
//--------------------------------------------------------------------------------
//
//  
//	-----------------------------------------------
//	|            Genesis Release Info             |
//	|  $Change: 11904 $ --- $Date: 2013/08/03 $   |
//	-----------------------------------------------
//	
//
//  Source file: /afs/asu.edu/users/j/j/o/jjose3/vendingmachine/vendingmachine/verif/reset.vp
//  Source template: reset
//
// --------------- Begin Pre-Generation Parameters Status Report ---------------
//
//	From 'generate' statement (priority=5):
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From Command Line input (priority=4):
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From XML input (priority=3):
//
//		---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
//
//	From Config File input (priority=2):
//
// ---------------- End Pre-Generation Pramameters Status Report ----------------

//reset module





//reset//
module reset_unq1 (
		
		input int    clk_period ,

		output logic rst,
		output logic stall
		
		);

   //YAY for RESET
   initial begin
      rst = 1'b1 ;
      stall = 1'b1 ;
      #1
      rst = 1'b0 ;
      stall = 1'b1 ;
      #clk_period ;
      #clk_period ;
      #clk_period ;
      #clk_period ; 
      rst = 1'b1 ;
      stall = 1'b0 ;
   end
   
endmodule // reset