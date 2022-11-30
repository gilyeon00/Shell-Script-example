#!/bin/bash

source test1.sh $1
result=$?

if [ $result -eq 0 ];then
        echo "성공"
else
        echo "실패"
fi



# test1.sh 을 이용함
# test2.sh을 실행하면 파라미터를 test1로 전달하여, test1의 function의 return값을 이용해 성공/실패를 출력해준다.
