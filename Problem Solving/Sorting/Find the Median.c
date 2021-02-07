#include<stdio.h>
#include<stdlib.h>

int cmpfunc(const void *a, const void *b) {
    return (*(int*)a) - (*(int*)b);
}

int main() {
    
    int n;
    scanf("%d",&n);
    int arr[n];
    for(int i=0;i<n;i++) {
        scanf("%d",&arr[i]);
    }
    qsort(arr, n, sizeof(int), cmpfunc);
    printf("%d\n",arr[n/2]);
    
    return 0;
}
