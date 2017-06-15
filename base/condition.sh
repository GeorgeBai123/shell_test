#/bin/sh
#
#
#双引号解析变量,单引号不解析变量

A="$1"
B="$2"
	echo "输入的原始值：A=$A,B=$B"

#######################################判断字符串是否相等###########################################
if [ "$A" = "$B" ];then
	echo "[$A = $B]"
fi

if [ "$A" == "$B" ];then
	echo "[ $A == $B]"
fi

#注意:==的功能在[[]]和[]中的行为是不同的，如下

#如果$a以”a”开头(模式匹配)那么将为true
if [[ "$A" == a* ]];then
	echo "[[ $A==a* ]]"
fi

#如果$a等于a*(字符匹配),那么结果为true
if [[ "$A" == "a*" ]];then
	echo "==/"a*/""
fi

#File globbing(通配) 和word splitting将会发生, 此时的a*会自动匹配到对应的当前以a开头的文件
#如在当前的目录中有个文件：add_crontab.sh,则下面会输出ok
#if [ "add_crontab.sh" == a* ];then
#	echo "ok"
#fi
if [ "$A" == a* ];then
	echo "[ $A==a* ]"
fi

#如果$a等于a*(字符匹配),那么结果为true
if [ "$A" == "a*" ];then
	echo "$A==/"a*/""
fi

#字符串不相等
if [ "$A" != "$B" ];then
	echo "[ $A!= $B]"
fi

#字符串不相等
if [[ "$A" != "$B" ]];then
	echo "[[ $A!= $B]]"
fi

#字符串不为空，长度不为0
if [ -n "$A" ];then
	echo "[ $A not null]"
fi

#字符串为空.就是长度为0.
if [ -z "$A" ];then
	echo "[  $A is null]"
fi

#需要转义<，否则认为是一个重定向符号
if [ $A < $B ];then
	echo "[ $A< $B]"
fi

if [[ $A < $B ]];then
	echo "[[  $A<$B ]]"
fi

#需要转义>，否则认为是一个重定向符号
if [ $A \> $B ];then
	echo "[  $A>$B ]"
fi

if [[ $A > $B ]];then
	echo "[[  $A> $B]]"
fi

#######################################判断数字是否相等###########################################

if [[ $A -eq $B ]];then
	echo "$A=$B"
fi

if [[ $A -ne $B ]];then
	echo "$A!=$B"
fi

if [[ $A -gt $B ]];then
	echo "$A>$B"
fi

if [[ $A -ge $B ]];then
	echo "$A>=$B"
fi

if [[ $A -le $B ]];then
	echo "$A<=$B"
fi

if [[ $A -lt $B ]];then
	echo "$A<$B"
fi

#######################################判断文件[]等价[[]]##########################################

if [[ -f $A ]]; then
	echo "$A is a normal file"
fi

if [[ -d $A ]]; then
	echo "$A is a directory file"
fi

if [[ -e $A ]]; then
	echo "$A is a exist file"
fi

if [[ -s $A ]]; then
	echo "$A is a exist and not null file"
fi

if [[ -L $A ]]; then
	echo "$A is a link file"
fi

if [[ -r $A ]]; then
	echo "$A is a readable file"
fi

if [[ -w $A ]]; then
	echo "$A is a writeable file"
fi

if [[ -x $A ]]; then
	echo "$A is a executable file"
fi

if [[ $A -nt $B ]]; then
	echo "$A is new than $B"
fi