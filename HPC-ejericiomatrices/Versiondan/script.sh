#!/bin/bash
# A sample Bash script, by Ryan
cd /home/demai/Escritorio/HPC/HPC/HPC-ejericiomatrices/Versiondan
gcc version_full_hilos_1.c -o mahilos -lpthread
gcc matricesed.c -o maed 

#(time -o datos.txt ./mulma 2) 

echo "" &> datosexcel.ods	

#./mulmapa 3 &>> datosexcel.ods
#./maed 10 &>> datosexcel.ods

for VARIABLE in 100 200 300 400 500 600 700 800 900 1000 1100 1200 1300 1400 1500 1600 
do
	#echo $VARIABLE
	./mahilos $VARIABLE &>> datosexcel.ods
	./maed $VARIABLE &>> datosexcel.ods
done

#for VARIABLE in 100 200 300 400 500 600 700 800 900 1000 1100 1200 1300 1400 1500 1600 
#do
	#echo $VARIABLE
#	./maed $VARIABLE &>> datosexcel.ods
#done

#(time ./mulma 1) &>> datosexcel.ods
#(time ./mulma 10) &>> datosexcel.ods
#(time ./mulma 200) &>> datosexcel.ods
#(time ./mulma 2000) &>> datosexcel.ods
#./mulma 810
#(time ./mulma 100000) &>> datosexcel.ods
#(time ./mulma 1000000) &>> datosexcel.ods
#(time ./mulma 10000000) &>> datosexcel.ods
#start_time=$(date +%s)
#Ejecución
#(time ./mulma 1000) &>> datosexcel.ods
#finish_time=$(date +%s)
#let a=$((finish_time - start_time)) 
#echo "$a"
#echo "Time duration: $((finish_time - start_time)) secs."
