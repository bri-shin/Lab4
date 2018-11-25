TEST='test'
R='r'
TEN="10"
for i in {1..16}; do
CMD="$TEST"
echo " "
echo "------------------"
echo "Running test $i"
    if [ $i -lt "10" ]; then
        i="0$i"
    fi
CMD1="$(make $CMD$i)"
CMD2="$(make r$CMD$i)"

echo "YOUR ANSWER BELOW"
OUTPUT1= echo "${CMD1}"
echo "******************"
echo "CORRECT ANSWER BELOW"
OUTPUT2= echo "${CMD2}"


echo "------------------"
echo ""

# if [ $OUTPUT1 -eq $OUTPUT2 ]; then 
#     echo "Test #$i has passed"
# else 
#     echo "Test #$i has failed"
# fi

done