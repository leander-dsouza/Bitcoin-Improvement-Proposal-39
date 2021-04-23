#!/bin/bash

light_cyan='\033[96m' 
light_yellow='\033[93m'
white='\033[0m'  

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

CURRENT_PATH=$(pwd)
KEY='$REPO_DIR'



help_instructions="
			   ${GREEN}CRYPTO COMPILER${light_cyan}

usage: ./helper_script.sh [option] ... [-b build | -c clean | -h help | -]\n
Options and arguments (and corresponding command description):
-h     : print this help message and exit
-b     : Builds the 'trezor-firmware' crypto folder and outputs the binary in src/main
-c     : Cleans all objects and residual binary files
"


while getopts "hbc" opt
   do
     case $opt in

     	h ) echo -e "${help_instructions}"

			exit 0 ;;

        b ) printf "\n%bEnter the relative path to 'trezor-firmware' the repository:%b\n" ${light_cyan} ${light_yellow}
			read REPOSITORY_PATH

			printf "\n%b" ${white}

			sed -i "s|${KEY}|$PWD|g" custom_makefile

			cd ${REPOSITORY_PATH}/crypto && mkdir lib && cp -r ${CURRENT_PATH}/custom_makefile . && make -f custom_makefile
			cd ${CURRENT_PATH} && sed -i "s|$PWD|${KEY}|g" custom_makefile

            exit 0 ;;

        c ) printf "\n%bEnter the relative path to 'trezor-firmware' the repository:%b\n" ${light_cyan} ${light_yellow}
			read REPOSITORY_PATH

			printf "\n%b" ${white}

			cd ${REPOSITORY_PATH}/crypto
			make clean -f custom_makefile && rm -r custom_makefile lib/
			exit 0 ;;
     esac
done

echo -e "${help_instructions}"
