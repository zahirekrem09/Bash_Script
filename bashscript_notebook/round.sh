!/bin/bash
# the function "round()" was taken from 
# http://stempell.com/2009/08/rechnen-in-bash/

# the round function:
round()
{
echo $(printf %.f $(echo "scale=;(((10^)*)+0.5)/(10^)" | bc))
};

echo "Insert the price you want to calculate:"
read float
echo "This is the price without taxes:"
#echo "scale=2; $float/1.18" |bc -l
echo $(round $float/1.18 2);
read -p "Press any key to continue..."