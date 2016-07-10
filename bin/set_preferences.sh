#!/bin/bash

u_path=".config/sublime-text-2/Packages/User/"

function usage(){
cat <<_EOT_
Usage:
  ${0} path [-h]

Description:
  指定したファイルを ${u_path}Preferences.sublime-settings
  へコピーします。

Options:
  -h ヘルプを表示します。
_EOT_
exit 1
}

while getopts "h" option
do
  case $option in
    h)
      usage
      ;;
    \?)
      usage
      ;;
  esac
done

cp "$1" ~/"${u_path}"