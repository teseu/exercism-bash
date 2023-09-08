#!/usr/bin/env bash

str=${1}

subst () {
  str=${str//-/\ }
  str=${str//\_/}
  str=${str//\*/}
  str=${str^^}
  sed -e 's/\(.\)[^ ]* */\1/g' <<<"$str"
}

main () {
  subst $str
}
 main '$@'

