[![MIT License](https://img.shields.io/apm/l/atomic-design-ui.svg?)](https://github.com/tterb/atomic-design-ui/blob/master/LICENSEs)
# Bitcoin-Improvement-Proposal-39

<img src="https://img.shields.io/badge/c%20-%2300599C.svg?&style=plastic&logo=c&logoColor=white"/> ![GitHub](https://img.shields.io/badge/-GitHub-181717?style=plastic&logo=github) ![Bitcoin](https://img.shields.io/badge/-Bitcoin-F7931A?style=plastic&logo=bitcoin)

A compilation tool to generate binaries for [crypto](https://github.com/trezor/trezor-firmware/tree/master/crypto) and to implement BIP 39.


## Syntax and Usage:

* The main bash script compiles and generate binaries for the [crypto](https://github.com/trezor/trezor-firmware/tree/master/crypto) folder and provides a method to revert all the changes through an additional functionality.

* The following is the output of the **`-h`** (**help**) flag of `helper_script.sh`:

      ./helper_script.sh -h

                                   CRYPTO COMPILER

      usage: ./helper_script.sh [option] ... [-b build | -c clean | -h help | -]

      Options and arguments (and corresponding command description):
      -h     : print this help message and exit
      -b     : Builds the 'trezor-firmware' crypto folder and outputs the binary in src/main
      -c     : Cleans all objects and residual binary files

* Say if we need to **build** the folder, we need to call `helper_script.sh` as follows:

      ./helper_script.sh -b
 
 * This will redirect you to provide the relative directory of [trezor-firmware](https://github.com/trezor/trezor-firmware) in you local system:

       Enter the relative path to 'trezor-firmware' the repository:
      
 * This generates all the binaries you need to run the bip39 program, to run it:

       ./src/main
        
 * To clean all the residual files, use the **`-c`** (**clean**) flag:
 
       ./helper_script.sh -c


      





###### 💾 EOF
  
