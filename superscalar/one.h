void one()
{
    int s = 0;
    auto ini = chrono::high_resolution_clock::now();
    for (int i = 0; i < mult; ++i)
    {
        for (int j = 0; j < MAXN; ++j)
        {
            s += arr[j];
        }
    }
    auto end = chrono::high_resolution_clock::now();
    printf("%d %ld\n", s, chrono::duration_cast<chrono::nanoseconds>(end - ini));
}