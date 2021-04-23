#include <stdio.h>
#include <string.h>
#include "bip39.h"


void print_hex(uint8_t *s) {
    size_t len = strlen((char*)s);
    for(size_t i = 0; i < len; i++) {
        printf("%02x", s[i]);
    }
    printf("\n\n");
}



int main(void){

    const char *passphrase ="password";
    int keylength = 64;                 //3,6,9,12,15,18,21,24
    uint8_t bip39_seed[keylength];

    const char *mnemonic = "garden reject beauty inch scissors rifle "
                           "amazing couch bacon multiply swim poverty "
                           "impose spray ugly term stamp prevent "
                           "nothing mutual awful project wrist movie";

    printf("\nMNEMONIC STRING: \n%s \n\n",mnemonic);


    
    
    //Generate a bip39 from mnemonic
    mnemonic_to_seed(mnemonic, passphrase, bip39_seed, 0);


    printf("BIP39 SEED:\n");
    print_hex(bip39_seed);



    

}