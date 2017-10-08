#!/bin/bash

LUXAFOR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

lux ()
{
  local COLOR_ARGS
  case ${1} in
    red)
      COLOR_ARGS="-l 0 -r 255 -g 0 -b 0"
      ;;
    green)
      COLOR_ARGS="-l 0 -r 0 -g 255 -b 0"
      ;;
    blue)
      COLOR_ARGS="-l 0 -r 0 -g 0 -b 255"
      ;;
    white)
      COLOR_ARGS="-l 0 -r 255 -g 255 -b 255"
      ;;
    off)
      COLOR_ARGS="-l 0 -r 0 -g 0 -b 0"
      ;;

  esac

  ${LUXAFOR_DIR}/luxafor-linux.py color ${COLOR_ARGS}
}
