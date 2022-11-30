#!/bin/bash

check_test(){

        if [ -n "$1" ]
        then
                if [ $1 = "test" ]
                then
                        result=1
                else
                        result=0
                fi
        else
                result=0
        fi

        return $result
}

check_test $1



# 파라미터가 test일 경우 실패, 그 외일경우엔 성공하는 function
