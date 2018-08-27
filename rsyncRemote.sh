#!/bin/bash
# rsync -PaHAv --numeric-ids -e 'ssh -T -i /Users/yj/.ssh/id_rsa' younguj@pal:~/repo/vpsc-fld/archive/FLD_A/20160831/ ./
# rsync -PaHAv --numeric-ids -e 'ssh -T -i /Users/youngung/.ssh/id_rsa  -o Compression=no' younguj@pal:~/repo/vpsc-fld/archive/FLD_A/ ./
## rsync -PaHAv --numeric-ids -e 'ssh -T -i /Users/youngung/.ssh/id_rsa  -o Compression=no' yj@10.0.1.6:~/repo/vpsc/vpsc-dev-fld/archive/FLD_A/ ./


# rsync -PaHAv --numeric-ids -e 'ssh -T -i /Users/youngung/.ssh/id_rsa  -o Compression=no' youngung@mml:~/repo/vpsc-fld-yld/archive/FLD_A/ ./
# rsync -PaHAv --numeric-ids ~/OneDrive\ -\ changwon.ac.kr/Lectures/2017Fall/금속유동해석특론/*.pdf lecturenotes/MetalPlasticity/
# rsync -PaHAv --numeric-ids ~/OneDrive\ -\ changwon.ac.kr/Lectures/2017Fall/기계재료개론/*.pdf lecturenotes/MechMSE/
# rsync -PaHAv --numeric-ids ~/OneDrive\ -\ changwon.ac.kr/Lectures/2017Fall/소성가공/*.pdf lecturenotes/MetalForming/

## 2018-Spring
#rsync -PaHAv --numeric-ids ~/OneDrive\ -\ changwon.ac.kr/Lectures/2018Spring/TransportPhenomena/*.pdf lecturenotes/TransportPhenomena/
#rsync -PaHAv --numeric-ids ~/OneDrive\ -\ changwon.ac.kr/Lectures/2018Spring/MSE/*.pdf lecturenotes/MSE/

## 2018-Fall
rsync -PaHAv --numeric-ids ~/OneDrive\ -\ changwon.ac.kr/Lectures/2018Fall/mse2/*.pdf lecturenotes/MechMSE/              ## 기계재료개론
rsync -PaHAv --numeric-ids ~/OneDrive\ -\ changwon.ac.kr/Lectures/2018Fall/metalforming/*.pdf lecturenotes/MetalForming/ ## 소성가공
rsync -PaHAv --numeric-ids ~/OneDrive\ -\ changwon.ac.kr/Lectures/2018Fall/cp/*.pdf lecturenotes/CP/                     ## 금속가공학특론


# bash update.sh
# git commit -am 'Lecture note updates'&&git push github master
