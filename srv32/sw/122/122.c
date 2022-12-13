#include<stdio.h>
#include<stdlib.h>

int maxProfit(int* prices, int pricesSize){
    int totalProfit = 0;
    int i=0;
    int increases = 0;
    for (i = 1; i < pricesSize; i++) {
        if (prices[i] <= prices[i - 1]) {
            totalProfit += increases;
            increases = 0;
        }
        else
            increases += prices[i] - prices[i - 1];
    }
    totalProfit += increases;
    return totalProfit;
}

int main(){
    int arr[]={99,32,3,56,0,2,56,99};
    int size=8;
    int a= maxProfit(arr,size);
    printf("%d\n",a);
}
