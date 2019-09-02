#!/bin/bash


file="$1"
lineknt=0
while IFS= read -r line
do
  lineknt=$(($lineknt+1))
  aws s3api get-bucket-acl --bucket "aws_s3.txt" > aws_s3_list.txt
done < "aws_s3.txt"
