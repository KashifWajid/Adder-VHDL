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
ExecStep $xv_path/bin/xelab -wto adb8965db4bb44f9b39202338a9f5ce9 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot CarryLookAheadAdder_tb_behav xil_defaultlib.CarryLookAheadAdder_tb -log elaborate.log
