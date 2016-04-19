#!/bin/bash -f
xv_path="/usr/local.nfs/pas/sw/Xilinx/Vivado/2015.3"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim CarryLookAheadAdder_tb_behav -key {Behavioral:sim_1:Functional:CarryLookAheadAdder_tb} -tclbatch CarryLookAheadAdder_tb.tcl -log simulate.log
