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
//  Source file: /afs/asu.edu/users/j/j/o/jjose3/vendingmachine/vendingmachine/verif/saif_extract.vp
//  Source template: saif_extract
//
// --------------- Begin Pre-Generation Parameters Status Report ---------------
//
//	From 'generate' statement (priority=5):
// Parameter Region 	= top_vendingmachine
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

//



// Region (_GENESIS2_INHERITANCE_PRIORITY_) = top_vendingmachine
//

//saif_extract
module saif_extract_unq1 (
		input logic triggerStart ,
		input logic triggerStop
		);

   logic 		    foo ;
   
   
   initial begin
      foo = 1'b0;
      #1
      //$set_gate_level_monitoring("rtl_on");
      //$set_gate_level_monitoring("mda");
      $set_gate_level_monitoring("rtl_on","sv");
      $set_gate_level_monitoring("rtl_on","mda");
      #1
      $set_toggle_region(top_vendingmachine);
      #1
      @( posedge triggerStart );
      $display( "Starting Toggle Collection" );
      $toggle_start();
      #100000000000000000000
      foo = 1'b1;
   end
 
   initial begin
      #1 
      @( posedge triggerStart );
      #1
      @( posedge triggerStop );
      $display( "Stopping Toggle Collection" );
      #1
      $toggle_stop();
      #1
      $toggle_report( "top.saif" , 1.0e-12 , top_vendingmachine );

   end


     
endmodule
