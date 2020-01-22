#!/bin/bash
set -x

# EM version 8
ssh emu003@lxsrvmgi5033.mgi.de "bash -s" -- < ./max_jobs.sh 365 > jobno
ssh emu008@lxsrvmgi5043.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu011@lxsrvmgi5051.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu004@lxsrvmgi5035.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu005@lxsrvmgi5037.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu012@lxsrvmgi5053.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu014@lxsrvmgi5057.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu006@lxsrvmgi5039.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu022@lxsrvmgi5093.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu015@lxsrvmgi5065.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu007@lxsrvmgi5041.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu009@lxsrvmgi5045.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu013@lxsrvmgi5055.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu016@lxsrvmgi5074.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu017@lxsrvmgi5076.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu018@lxsrvmgi5079.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu019@lxsrvmgi5081.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu020@lxsrvmgi5083.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu021@lxsrvmgi5085.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu023@lxsrvmgi5095.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu024@lxsrvmgi5097.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu025@lxsrvmgi5099.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu026@lxsrvmgi5101.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu027@lxsrvmgi5103.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu028@lxsrvmgi5105.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu029@lxsrvmgi5108.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu030@lxsrvmgi5110.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu031@lxsrvmgi5112.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu032@lxsrvmgi5114.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu034@lxsrvmgi5119.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu035@lxsrvmgi5124.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu036@lxsrvmgi5201.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu037@lxsrvmgi5202.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu039@lxsrvmgi5129.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu040@lxsrvmgi5131.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu041@lxsrvmgi5133.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu042@lxsrvmgi5144.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu045@lxsrvmgi5139.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu045@lxsrvmgi5205.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu046@lxsrvmgi5207.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu047@lxsrvmgi5150.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu048@lxsrvmgi5152.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu051@lxsrvmgi5142.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu054@lxsrvmgi5163.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu055@lxsrvmgi5165.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu056@lxsrvmgi5169.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu057@lxsrvmgi5173.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu058@lxsrvmgi5178.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
# ssh emu059@lxsrvmgi5181.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu083@lxsrvmgi5344.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu060@lxsrvmgi5184.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu061@lxsrvmgi5192.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu062@lxsrvmgi5196.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu063@lxsrvmgi5198.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu064@lxsrvmgi5210.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu065@lxsrvmgi5212.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu066@lxsrvmgi5215.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu067@lxsrvmgi5218.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu068@lxsrvmgi5221.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu069@lxsrvmgi5260.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
# ssh emu072@lxsrvmgi5267.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu073@lxsrvmgi5294.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu077@lxsrvmgi5303.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu078@lxsrvmgi5311.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu079@lxsrvmgi5316.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu080@lxsrvmgi5321.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
ssh emu081@lxsrvmgi5323.mgi.de "bash -s" -- < ./max_jobs.sh 365 >> jobno
#EM version 9
ssh emuser@lxsrvmgi5127.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5159.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5284.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5363.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5289.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5397.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5387.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
# ssh emuser@lxsrvmgi5330.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5345.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5364.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5375.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5369.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5371.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5373.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5376.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5146.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
ssh emuser@lxsrvmgi5148.mgi.de "bash -s" -- < ./max_jobs9.sh 365 >> jobno
echo "Total number of jobs bellow. For details on every EM please see jobno file!"
# Sum first element of every line
awk '{n += $1}; END{print n}' jobno
