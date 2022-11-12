#!/bin/bash

# $1指的是脚本传入的第一个参数，对应makepkg.conf文件里给定的%o
# $2指的是脚本传入的第二个参数，对应makepkg.conf文件里给定的%u(应该是指src-url)

DOMAIN=`echo $2 | cut -f3 -d'/'`;        # 获取域名及后半部分
OTHERS=`echo $2 | cut -f3- -d'/'`;       # 截取github.com/以及后面所有内容

case "$DOMAIN" in
    "github.com")                        #如果DOMAIN变量的值出现在字符串中
    url="反代/"$OTHERS;
    echo "从 【火星】 下载文件 $url";
    /usr/bin/curl -gqb "" -fLC - --retry 3 --retry-delay 3 -o $1 $url;
    ;;

    "raw.githubusercontent.com")
    url="反代/"$OTHERS;
    echo "从 【土星】 下载文件 $url";
    /usr/bin/curl -gqb "" -fLC - --retry 3 --retry-delay 3 -o $1 $url;
    ;;

    *)                                  # 其它时候还是curl下载
    url=$2;
    echo "正在龟速下载 $url";
    /usr/bin/curl -gqb "" -fLC - --retry 3 --retry-delay 3 -o $1 $url; 
    ;;

esac
