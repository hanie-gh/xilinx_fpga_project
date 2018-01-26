#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=F:/Tools/sdSoC201702/SDx/2017.2/SDK/bin;F:/Tools/sdSoC201702/SDx/2017.2/Vivado/ids_lite/ISE/bin/nt64;F:/Tools/sdSoC201702/SDx/2017.2/Vivado/ids_lite/ISE/lib/nt64:F:/Tools/sdSoC201702/SDx/2017.2/Vivado/bin
else
  PATH=F:/Tools/sdSoC201702/SDx/2017.2/SDK/bin;F:/Tools/sdSoC201702/SDx/2017.2/Vivado/ids_lite/ISE/bin/nt64;F:/Tools/sdSoC201702/SDx/2017.2/Vivado/ids_lite/ISE/lib/nt64:F:/Tools/sdSoC201702/SDx/2017.2/Vivado/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='D:/Project/warmup/vivado/Z_halfAdder/Z_halfAdder.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .write_bitstream.begin.rst
EAStep vivado -log adr.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source adr.tcl -notrace


