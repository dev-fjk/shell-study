#!/bin/sh
 
INPUT_FILE=./problem_fruits
OUTPUT_FILE=./problem3_fruits_output

## 3. 「fruits」で始まる行だけを対象に、文字列「apple」を排除してファイルにして吐き出してください。
## 出力は「problem3_fruits_output」でお願いいたします。

if [ ! -e $INPUT_FILE ]; then
        echo "該当ファイルがありません"
        exit
fi

# ファイルの書き出し
grep -E "^fruits_*" $INPUT_FILE | sed 's/apple//gi' > $OUTPUT_FILE

