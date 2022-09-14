#Extent the prime factorization program to store all the prime factors
#!/bin/bash -x
read -p "Enter a number: " number
PrimeFactor=0
for(( i=2; i<=number; i++ ))
{
  while(( number%i==0 ))
do
Factor[PrimeFactor]=$i
number=$((number/$i))
(( PrimeFactor++ ))
done
}
echo ${Factor[@]}

