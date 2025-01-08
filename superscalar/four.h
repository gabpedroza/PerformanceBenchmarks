void four()
{
    int s1 = 0, s2 = 0, s3 = 0, s4 = 0;
    auto ini = chrono::high_resolution_clock::now();
    for (int i = 0; i < mult; ++i)
    {
        for (int j = 0; j < MAXN - 3; j += 4)
        {
            s1 += arr[j];
            s2 += arr[j + 1];
            s3 += arr[j + 2];
            s4 += arr[j + 3];
        }
    }
    s1 += s2 + s3 + s4;
    auto end = chrono::high_resolution_clock::now();
    printf("%d %ld\n", s1, chrono::duration_cast<chrono::nanoseconds>(end - ini));
}