#include<bits/stdc++.h>
using namespace std;
const int MAXN = (int)50e6;
int arr[MAXN];
int main(){
    srand(time(NULL));
    for(int i = 0; i < MAXN; ++i)
        arr[i] = rand();
    int sum = 0;
    sort(arr, arr + MAXN);
    auto ini = chrono::high_resolution_clock::now();
    for(int j = 0; j < 5; ++j)
        for(int i = 0; i < MAXN; ++i)
            if(arr[i] > INT_MAX/2)
                ++sum;
    auto end = chrono::high_resolution_clock::now();
    printf("%d %ld\n", sum, chrono::duration_cast<chrono::nanoseconds>(end-ini).count());
    return 0;
}