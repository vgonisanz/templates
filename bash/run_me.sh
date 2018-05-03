#!/bin/bash

#set -x     # Uncomment to execute with extra info

CONFIG_FILE="config.cfg"    # config file with customizable data

function usage()
{
    echo ""
    echo "Usage: $0 - Select and action"
    echo "-h = help, print this message"
    echo "-i = print config"
    echo "-o = generate a file with parsed info"
    echo ""
    exit 1
}

function read_config()
{
  [ ! -f ${CONFIG_FILE} ] && echo "Config file ${CONFIG_FILE} not found" && exit 1
  echo "Reading config...." >&2
  . ${CONFIG_FILE}
  echo "done."  >&2
}

function print_config()
{
  echo "CONFIG_DATA path: ${CONFIG_DATA}" >&2
  echo "CONFIG_RELATIVE_PATH path: ${CONFIG_RELATIVE_PATH}" >&2
}

function generate_output()
{
  echo "Doing stuffs..."
}

# MAIN
#######

# Parse arguments
[ $# -eq 0 ] && usage   # Require at least a parameter
[ $# -gt 1 ] && usage   # No more than one

read_config

while getopts ":hio" opt; do
  case $opt in
    h)
      usage
      ;;
    i)
      print_config
      exit 0
      ;;
    o)
      generate_output
      exit 0
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

exit 0
