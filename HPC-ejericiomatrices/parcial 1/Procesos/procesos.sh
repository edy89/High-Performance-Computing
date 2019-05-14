#cd /media/edison/5CAC40DEAC40B3F4/Users/Edyson/Desktop/HPC/Parcial1/parcial\ 1
gcc -DUSE_CLOCK -O3 jacobi1dProcesos.c timing.c -o jacobi1dProcesos 
#N=100000
NSTEPS=1000
echo "" &> datosexcel.ods
#./jacobi1dProcesos $N $NSTEPS u_serial.out > timing_serial.out

for VARIABLE in 10 100 1000 1500 2000 2500 3000
do
	#echo $VARIABLE
	./jacobi1dProcesos $VARIABLE  NSTEPS &>> datosexcel.ods
done
