#!/bin/sh

## 1. 入力パラメータを受け取って、その値が3の倍数の場合は「fiz」、5の倍数の場合は「buzz」、15の倍数の場合は「fizz buzz」と表示するスクリプトを記述してください。
## （それ以外の倍数の場合はパラメータをそのまま表示させてください）
## 実行例：　$ ./problem1.sh 30 →   出力結果：「fizz buzz」

# 1_1 入力チェック（存在判定）
if [ ! $# -eq 1 ]; then
  echo "パラメーターを1つ設定してください"
  exit
fi

# 1_2 入力チェック（数値判定）
expr $1 + 1 >/dev/null 2>&1
if [ ! $? -lt 2 ];then
  echo "パラメーターには数字を設定してください"
  exit
fi

## ここから
echo "$1"

# 一番シンプルなの
num=$1
if (($num % 15 == 0)); then
	echo fizz buzz
elif (($num % 3 == 0)); then
	echo fizz
elif (($num % 5 == 0)); then
	echo buzz
else
	echo $num
fi



