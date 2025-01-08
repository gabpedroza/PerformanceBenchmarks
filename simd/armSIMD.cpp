#include<bits/stdc++.h>
using namespace std;
const int MAXN = 128e3/4;
int arr[MAXN];
int main(){
    srand(time(NULL));
    for(int i = 0; i < MAXN; ++i)
        arr[i] = rand();
    int sum = 0;
    auto ini = chrono::high_resolution_clock::now();
    for(int j = 0; j < 20; ++j)
        for(int i = 0; i < MAXN; ++i)
            sum += arr[i];
    auto end = chrono::high_resolution_clock::now();
    printf("%d %ld\n", sum, chrono::duration_cast<chrono::nanoseconds>(end-ini).count());
    return 0;
}