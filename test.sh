#!/bin/bash

#1
#echo "Hello World!"

#2
#echo "what's your name?"
#read PERSON
#echo "hello, $PERSON"

#3
#variableName="value"
#echo $variableName

#4 使用变量时可以在变量名外加{}，方便解释器区分变量
#echo "you are a ${variableName}haha"
#echo "you are a $variableNamehaha"

#5 只读变量
#readonly name="zhanghaitao"
#echo ${name}
#name="zhang"
#echo ${name}

#6 删除变量
#variable1="value1"
#variable2="value2"
#echo ${variable1}
#echo ${variable2}
#unset variable1
#echo ${variable1}
#echo ${variable2}

#7 特殊变量
#echo $$ #当前shell的进程ID
#echo $0 #当前脚本的文件名
#echo $1 #传递给当前脚本的参数，$1代表第一个参数，$2代表第二个参数...
#echo $# #传递给当前脚本的参数个数
#echo $* #传递给脚本或函数的所有参数
#echo $@ #传递给脚本或函数的所有参数。被双引号(" ")包含时，与 $* 稍有不同，下面将会讲到。
#echo $? #上个命令的退出状态，或函数的返回值。

#8 "$*"与"$@"区别
#echo "print each param from \"\$*\""
#for var in "$*"
#do
#echo "$var"
#done
#
#echo "print each param from \"\$@\""
#for var in "$@"
#do
#echo "$var"
#done

#9 转移字符替换 -e ???为什么不加-e一样能转义呢？
#a=10
#echo "variable a is ${a} \a \n"
#echo -e "variable a is ${a} \n"

#10 命令替换 格式为`command`
#DATE=`date`
#echo "Date is ${DATE}"
#echo "date is `date`"

#11 变量替换
#${var}  变量本来的值
#${var:-word}    如果变量var为空或已被删除(unset)，那么返回word，但不改变var的值
#${var:=word}    如果变量var为空或已被删除(unset)，那么返回word，并将var的值设置为word
#${var:?message} 如果变量var为空或已被删除(unset)，那么将消息message送到标准错误输出，可以用来检测变量var是否可以正常赋值。
#${var:+word}    如果变量var被定义，那么返回word，但不改变var的值。???测试不好使啊？

#echo ${var:-"variable is not set"}
#echo ${var}

#echo ${var:="variable is not set"}
#echo ${var}

#var="value of var"
#unset var
#echo ${var:+"this is default value"}
#echo ${var}

#echo ${var:?"Print this message"}
#echo ${var}
#echo "看看这句能不能输出来"

#12 算数运算符
#var=`expr 2 + 3`
#echo "total value : ${var}"
#echo "2+3= `expr 2 + 3`"
#echo "2-3= `expr 2 - 3`"
#echo "2*3= `expr 2 \* 3`"
#echo "2/3= `expr 2 / 3`"
#echo "2%3= `expr 2 % 3`"

#13 关系运算符
#-eq -ne -gt -lt -ge -le 只支持数字，不支持字符串，除非字符串的值是数字
#if [ 2 -eq 3 ] #数字比较用 -eq
#then
#echo "="
#else
#echo "!="
#fi

#if [ 2 -ne 3 ]
#then
#echo "!="
#else
#echo "="
#fi

#if [ 2 -gt 3 ]
#then
#echo "a is greater than b"
#else
#echo "a is not greater than b"
#fi

#if [ 2 -lt 3 ]
#then
#echo "a is less than b"
#else
#echo "a is not less than b"
#fi

#if [ 2 -ge 2 ]
#then
#echo "a is greater or equal to b"
#else
#echo "a is not greater or equal to b"
#fi

#if [ 2 -le 2 ]
#then
#echo "a is less or equal to b"
#else
#echo "a is not less or equal to b"
#fi

#14 布尔运算符
# = != 两个符号可以比较数字和字符串
# -o 逻辑或； -a 逻辑与

#if [ 10 = 20 ]
#then
#echo "="
#else
#echo "!="
#fi

#if [ "value1" = "value2" ]
#then
#echo "="
#else
#echo "!="
#fi

#if [ 10 != 20 ]
#then
#echo "="
#else
#echo "!="
#fi

#if [ "value1" != "value2" ]
#then
#echo "="
#else
#echo "!="
#fi

#if [ 10 -eq 20 -o "value1" != "value2" ]
#then
#echo "its true"
#else
#echo "its false"
#fi

#if [ 10 -ge 10 -a 10 != 20 ]
#then
#echo "its true"
#else
#echo "its false"
#fi

#15 字符串运算符
# = != 可以判断字符串是否相等

#a="aaa"

#if [ -z ${a} ]
#then
#echo "a string length is zero"
#else
#echo "a string length is not zero"
#fi

#if [ -n "${a}" ] # -n 需要将后面的变量用双引号包起来
#then
#echo "a string length is not zero"
#else
#echo "a string length is zero"
#fi

#if [ ${a} ]
#then
#echo "a string is not empty"
#else
#echo "a string is empty"
#fi

#16 文件测试运算符
#修改文件读写权限 chmod 777 qq.txt
#file="/Users/zhanght/Desktop/qq.txt"

#检查文件是否可读
#if [ -r ${file} ]
#then
#echo "file has read access"
#else
#echo "file dose not have read access"
#fi

#检查文件是否可写
#if [ -w ${file} ]
#then
#echo "file has write permission"
#else
#echo "file does not have write permission"
#fi

#检查文件是否可执行
#if [ -x ${file} ]
#then
#echo "file has execute permission"
#else
#echo "file does not have execute permission"
#fi

#检查文件是否是普通文件（既不是目录，也不是设备文件）
#if [ -f ${file} ]
#then
#echo "file is an ordinary file"
#else
#echo "file is sepcial file"
#fi

#检查文件是否是目录
#if [ -d ${file} ]
#then
#echo "file is a directory"
#else
#echo "file is not a directory"
#fi

#检查文件是否不为空（文件大小是否不为0），不为空返回true
#if [ -s ${file} ]
#then
#echo "file size is not zero"
#else
#echo "file size is zero"
#fi

#检测文件（包括目录）是否存在，如果是，则返回true
#if [ -e ${file} ]
#then
#echo "file exists"
#else
#echo "file does not exist"
#fi

#17 字符串
# 单引号字符串
# 单引号字符串的任何字符都会原样输出，单引号字符串中的变量是无效的
# 单引号字符串中不能出现单引号（对单引号使用转义字符也不行）
# str='this is a string'

# 双引号字符串
# 双引号字符串中可以有变量
# 双引号字符串可以出现转义字符
#your_name="zhanght"
#greeting="hello, i know you are ${your_name}! \n"
#echo $greeting

# 拼接字符串
#your_name="zhanght"
#greeting="hello, "$your_name"!"
#greeting_1="hello, ${your_name}!"
#echo $greeting$greeting_1

# 获取字符串长度
#string="abcd"
#echo "string length is ${#string}"

# 提取子字符串
#string="you are a boy!"
#echo ${string:1:5}

# 查找子字符串 ???有错误？
#string="you are a boy!"
#echo `expr index "$string" are`

#18 数组
#定义数组
#array1=("value1" "value2" "value3")
#array2=(
#"value1"
#"value2"
#"value3"
#)
#array3[0]="value1"
#array3[1]="value2"
#array3[2]="value3"

#读取数组
#echo "array1 first index: ${array1[0]}"
#echo "array2 second index: ${array2[1]}"
#echo "array3 third index: ${array3[2]}"

#使用@或*可以获取数组中的所有元素
#echo "array1 values : ${array1[@]}"
#echo "array2 values : ${array2[*]}"

#获取数组元素的个数
#echo "array1 length : ${#array1[@]}"
#echo "array2 length : ${#array2[*]}"

#获取数组中单个元素的长度
#echo "array1 value at index 0 length : ${#array1[0]}"
#array4=(10 20 100 4000)
#echo "array4 value at index 3 length : ${#array4[3]}"

#19 echo命令
#echo "\"it is a test!\""
#echo it is a test!

#显示变量
#name="OK"
#echo "${name} it is a test"

#如果变量与其他字符相连，建议使用大括号
#month=8
#echo "${month}12015"

#显示换行
#echo "OK!\nit is a test"

#显示不换行
#echo "OK!\c"
#echo "it is a test"

#显示结果重定向至文件
#echo "it is a test\nOK!">example.txt

#原样输出字符串，使用单引号，不进行转义
#name="jack"
#echo '$name\"'

#显示命令执行结果
#echo `date`

#20 printf命令
#printf命令不用加括号
#format-string可以没有引号，但是加上最好，单引号双引号均可
#参数多于格式控制符(%)时，format-string可以重用，可以将所有参数都转换
#arguments使用空格分隔，不用逗号
#printf "hello shell\n"
#printf "%d %s\n" 2015 "abc"
#printf '%d %s\n' 2015 "abc"
#printf %s\n "abc"

#如果没有arguments，那么%s用null代替，%d用0代替
#printf "%s and %d\n"

#如果以%d的格式来显示字符串，那么会有警告，提示无效的数字，此时默认置为0
#printf "%d" "a string"

#21 if else 语句
#shell有三种if else语句
# if ... fi
# if ... else ... fi
# if ... elif ... else ... fi

#a=10
#b=10
#if [ $a -eq $b ]
#then
#echo "a is equal to b"
#echo "a is equal to b !"
#fi

#比较两个字符串是否相等
#a="string a"
#b="string b"
#if [ "$a" = "$b" ]
#then
#echo "a is equal to b"
#else
#echo "a is not equal to b"
#fi

#a=10
#b=20
#if [ $a -eq $b ]
#then
#echo "a is equal to b"
#elif [ $a -gt $b ]
#then
#echo "a is greater than b"
#elif [ $a -lt $b ]
#then
#echo "a is less than b"
#else
#echo "none of the condition met"
#fi

# test命令可以检查某个条件是否成立，与方括号[]类似
#a=10
#b=20
#if test $a -lt $b
#then
#echo "a is less than b"
#fi

#22 case
#echo "input a number between 1 to 4"
#echo "your number is : \c"
#read aNum
#case $aNum in
#1) echo "you select 1"
#;;
#2) echo "you select 2"
#;;
#3) echo "you select 3"
#;;
#4) echo "you select 4"
#;;
#*) echo "you do not select a number between a to 4"
#;;
#esac

#23 for循环
#for loop in 1 2 3 4 5
#do
# echo "the value is : $loop"
#done

#for str in this is a string
#do
#echo "$str"
#done

#array=("this" "is" "a" "shell" "test")
#for str in ${array[*]}
#do
# echo "$str"
#done

#显示主目录下以.bash开头的文件
#for FILE in $HOME/.bash*
#do
# echo $FILE
#done

#24 while循环
#COUNTER=0
#while [ $COUNTER -lt 5 ]
#do
# COUNTER=`expr $COUNTER + 1`
# echo $COUNTER
#done

#输入信息被设置为变量FILM,按<CTRL-D>结束循环
#echo "type <CTRL-D> to terminate"
#echo "enter your most liked film : "
#while read FILM
#do
# echo "Yeah! great film the $FILM"
#done

#24 until循环
#a=0
#until [ $a -gt 10 ]
#do
# echo $a
# a=`expr $a + 1`
#done

#25 break命令，跳出循环
#while :
#do
#    echo "input a number between 1 to 5:"
#    read aNum
#    case $aNum in
#    1|2|3|4|5) echo "your number is $aNum!"
#    ;;
#    *)  echo "you do not select a number between 1 to 5, game is over!"
#        break
#    ;;
#    esac
#done

#break后可接正整数标示跳出几层循环，若break后没有接数字，则跳出当前循环
#while :
#do
#while :
#do
#while :
#do
#echo "input a number(0-3) to break"
#read num
#break $num
#echo "your number is $num"
#done
#echo "跳出循环 1"
#done
#echo "跳出循环 2"
#done
#echo "跳出循环 3"

#26 continue命令跳过本层本次循环
#for num in 1 2 3 4 5 6 7 8 9
#do
#    if [ $num = 2 ]
#    then
#    continue
#    fi
#    echo "num : $num"
#done

#与break类似，continue后接数字可以跳过多层本次循环
#for str in "frist" "second" "third"
#do
#    for num in 1 2 3
#    do
#        echo "input 0 to break"
#        read input
#        if [ $input -eq 0 ]
#        then
#        continue 2
#        fi
#        echo "num : $num"
#    done
#    echo "str : $str"
#done

#27函数
#函数的定义格式
#sayHello(){
#    echo "hello"
#}

#也可以在函数前加上 function 标示
#function sayHelloWithName(){
#    echo "please input your name : \c"
#    read name
#    echo "Hello $name"
#}

#a shell函数必须先定义后使用
#b 函数返回值，可以显示增加return语句；如果不加，会将最后一条命令运行结果作为返回值。
#c shell函数的返回值只能是整数，0表示成功，其他值标示失败。返回字符串往往会得到错误提示“numeric argument required”
#d 如果想返回字符串，可先定义一个变量，用来接收函数的计算结果，脚本在需要的时候访问这个变量来获得函数返回值

#带有返回值的函数调用
#funWithReturn(){
#    echo "the function is to get the sum of two numbers..."
#    echo "input first number : \c"
#    read num1
#    echo "input second number : \c"
#    read num2
#    echo "the two nums are $num1 and $num2"
#    return $[ $num1 + $num2 ]
#}
#funWithReturn #函数调用
#ret=$? #获取函数返回值
#echo "the sum of two numbers is $ret"

#删除函数
#$unset .f funWithReturn

#函数参数
#funWithParam(){
#    echo "param 1 : $1"#第一个参数
#    echo "param 3 : $3"#第三个参数
#    echo "param 10 : $10"#错误，需要使用${10}
#    echo "param 10 : ${10}"
#    echo "param count : $#"#参数个数
#    echo "param all : $*"#所有参数
#}
#funWithParam 1 2 3 4 5 6 7 8 9 33

#28 输出、输入重定向
#将who命令的结果输出到example.txt
#who > example.txt

#如果不希望文件内容被覆盖，可以使用>>追加到文件末尾
#echo "追加字符串" >> example.txt

#输入重定向将read的输入为example1.txt内容，此时str变量中为example1.txt内容
#read str < example1.txt
#echo $str

#/dev/null是一个特殊文件，将命令重定向到它，会起到禁止输出的效果
#echo "禁止输出的文字" > /dev/null
#如果要屏蔽stdout和stderr，可以这样写：$ command > /dev/null 2>&1

#29文件包含 两种方式，用. 或者source; 一般被包含脚本不需要有执行权限
#. subFile.sh
#source subFile.sh
#echo $name












