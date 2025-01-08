#include <bits/stdc++.h>
#pragma GCC optimize("unroll-loops")
using namespace std;
const int MAXN = (int)8000;
const int mult = (int)1e5;
int arr[MAXN];
int main()
{
    for (int j = 0; j < 10; ++j)
    {
        srand(time(NULL));
        for (int i = 0; i < MAXN; ++i)
        {
            arr[i] = rand();
        }
        int s1 = 0, s2 = 0, s3 = 0, s4 = 0, s5 = 0, s6 = 0, s7 = 0, s8 = 0, s9 = 0;
        int sum = 0;
        int mul = 1;
        auto ini = chrono::high_resolution_clock::now();
        for (int i = 0; i < mult; ++i)
        {
            for (int j = 0; j < MAXN; ++j)
            {
                mul *= arr[j];
                //mul *= mul;
                s5 += mul;
                ++sum;
                ++sum;
                ++sum;
                ++sum;
                ++sum;
                ++sum;
                ++sum;
                ++sum;
                ++sum;
                ++sum; //comment the sums to see the effect of oooe
            }
        }
        s1 += s2 + s3 + s4 + s5 + s6 + s7 + s8 + mul + sum;
        auto end = chrono::high_resolution_clock::now();
        printf("%d %ld\n", s1, chrono::duration_cast<chrono::nanoseconds>(end - ini));
    }
    return 0;
}