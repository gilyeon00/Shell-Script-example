#!/bin/bash

./test1.sh $1

if [ $? -eq 0 ];then
        echo "성공"
else
        echo "실패"
fi
