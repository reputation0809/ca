#include<stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
    char letter[3]={'c','f','j'};
    char target='a';
    char output;
    for(int i=0;i<sizeof(letter);i++){
        if((int)letter[i]>(int)target){
            output=letter[i];
            break;
        }
    }
    printf("%c",output);
}

