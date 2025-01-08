#include <bits/stdc++.h>
#pragma GCC optimize("unroll-loops")
using namespace std;
const int MAXN = (int)4200*2;
const int mult = (int)1e5;
int arr[MAXN];
#include "one.h"
#include "two.h"
#include "three.h"
#include "four.h"
#include "five.h"
#include "six.h"
#include "seven.h"

int main()
{
    for(int j = 0; j < 10; ++j){
        srand(time(NULL));
        for (int i = 0; i < MAXN; ++i)
        {
            arr[i] = rand()%2;
        }
        one();
        two();
        three();
        four();
        five();
        six();
        seven();
    }
    return 0;
}