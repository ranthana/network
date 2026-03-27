echo "enter the coefficient of x^2:"
read a

echo "enter the coefficient of x:"
read b

echo "enter the constant term:"
read c

if [ $a -eq 0 ]; then
    echo "coefficient of x^2 cannot be 0"
    exit
fi

d=$((b*b - 4*a*c))

if [ $d -lt 0 ]; then
    awk -v a=$a -v b=$b -v d=$d 'BEGIN {
        real = -b/(2*a)
        imag = sqrt(-d)/(2*a)
        printf "roots are: %.2f + %.2fi and %.2f - %.2fi\n", real, imag, real, imag
    }'

elif [ $d -eq 0 ]; then
    awk -v a=$a -v b=$b 'BEGIN {
        res = -b/(2*a)
        printf "root is: %.2f\n", res
    }'

else
    awk -v a=$a -v b=$b -v d=$d 'BEGIN {
        r1 = (-b + sqrt(d))/(2*a)
        r2 = (-b - sqrt(d))/(2*a)
        printf "roots are: %.2f and %.2f\n", r1, r2
    }'
fi
