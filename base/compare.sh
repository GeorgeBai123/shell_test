#!/bin/sh

# SHELL中的[],[[]],(()),test,let
A="$1"
B="$2"
	echo "输入的原始值：A=$A,B=$B"
# []与test是一样的
# test可用 == != -eq -gt

# []是一条命令 若使用< > 需转义,[]]是关键词里边可以有 || && < > 的逻辑判断
# [][[]]用<>是按ASCII码逐个比较的
# [[ ... && ... && ...  ]] 和 [ ... -a ... -a ...] 不一样，[[ ]] 是逻辑短路操作，而 [ ] 不会进行逻辑短路

# (()) 主要做数字运算和比较,不建议使用expr与let是一样的
# 使用 (( )) 时，不需要空格分隔各值和运算符，使用 [[ ]] 时需要用空格分隔各值和运算符
# 在bash中，数字的比较最好使用 (( ))，虽说可以使用 [[ ]]，但若在其内使用运算符 >、>=、<、<=、==、!= 时，其结果经常是错误的


if test $A = "1"-a $B = "2" ; then
   echo "equal"
fi

if test $A != "1" -o $B != "2" ; then
   echo "not equal"
fi

if ! test $A != "1"; then
   echo "not 1"
fi