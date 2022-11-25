#!/bin/bash

awk -F '[ :-]' '{
        if($2 == "Johnson") {   
                $5 = int(rand()*10000);
                $6 = int(rand()*10000);
                print $1" "$2":"$3":" $4"-"$5"-"$6;
         }else print $0;
        }' name.txt > result.txt

yes | cp result.txt name.txt
cat name.txt


# awk 명령어를 이용한다.
# 구분자는 공백, :, -을 사용해서 레코드를 나눠준다

# 성이 Johnson일 경우, 휴대폰 번호를 무작위로 변환해준다.
# 이때 무작위 수는 rand()를 사용해서 생성해준다 (기본적으론 0.xxxx형태로 나옴)
# 결과값은 result.txt에 저장해주고 cp명령어를 이용해서 기존 파일에 덮어씌운다.
  # name.txt > name.txt 으로 할 경우 오류남

# 문제점
# 너무나도 하드코딩..
# 딱 레코드 $5, $6부분만 치환해주면 더 효율적일듯하다
# 0003, 0055, 1060과 같은 번호는 나오지 않는다 
 # why? 4자리 int형이기때문에.. 
 # 0.60204 같은 경우 602로 출력
