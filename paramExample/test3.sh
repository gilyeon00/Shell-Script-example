#!/bin/bash

var=$1,$2
[ "$1" = "" ] && echo 성공

for i in ${var//,/ }
do
        if [ -n "$i" ]
        then
                if [ "$i" = "test" ]
                then
                        echo $i is 실패
                else
                        echo $i is 성공
                fi
        else
                echo 성공
        fi

done



# 최대 2개의 파라미터를 받아와 각각 'test'와 일치하는 지 확인해서 성공/실패를 출력해준다.
