void seven()
{
    int s1 = 0, s2 = 0, s3 = 0, s4 = 0, s5 = 0, s6 = 0, s7 = 0;
    auto ini = chrono::high_resolution_clock::now();
    for (int i = 0; i < mult; ++i)
    {
        for (int j = 0; j < MAXN - 6; j += 7)
        {
            s1 += arr[j];
            s2 += arr[j + 1];
            s3 += arr[j + 2];
            s4 += arr[j + 3];
            s5 += arr[j + 4];
            s6 += arr[j + 5];
            s7 += arr[j + 6];
        }
    }
    s1 += s2 + s3 + s4 + s5 + s6 + s7;
    auto end = chrono::high_resolution_clock::now();
    printf("%d %ld\n", s1, chrono::duration_cast<chrono::nanoseconds>(end - ini));
}