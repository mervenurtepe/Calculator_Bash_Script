#!/bin/bash
echo "Hesap Makinesi"
sum=0
i="y"
echo "ilk sayiyi girin..."
read n1
echo "ikinci sayiyi giriniz..."
read n2
while [ $i = "y" ]
do
echo "1.Toplama"
echo "2.Çıkartma"
echo "3.Çarpma"
echo "4.Bölme"
echo "Secim yapiniz"
read ch
case $ch in
1)sum=$(echo " $n1 + $n2" | bc -l)
echo "Toplam =" $sum;;
2)sum=$(echo "$n1 - $n2" | bc -l)
echo "Cıkartma =" $sum;;
3)sum=$(echo "$n1 * $n2" | bc -l)
echo "Carpma =" $sum;;
4)sum=$(echo "$n1 / $n2" | bc -l)
echo "Bolme =" $sum;;
*)echo "Hatali secim!"
esac
echo "Devam etmek icin y yazin..."
read i
if [ $i != "y" ]
then
exit
fi
done
