### Request "check" route and save response in "RESULT" variable
RESULT=$(curl http://localhost:5000/check)

### Check Response to see if it's equal to "OK"
if [ $RESULT = "OK" ]
  then
    ### Exit script with status code 0
    exit 0
else
    ### Exit script with statis code 1
    exit 1
fi