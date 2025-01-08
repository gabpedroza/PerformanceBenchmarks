#pragma GCC optimize("Ofast")
TaskHandle_t code0handle;
const int MAXN = 25000;
int arr[MAXN];

void setup() {
  //pinMode(13, INPUT);
  //srand(analogRead(13));

  Serial.begin(9600);
  for (int i = 0; i < MAXN; ++i)
    arr[i] = esp_random() % INT_MAX;
  int max0 = 0;
  long long ini = micros();
  for (int i = 0; i < MAXN; ++i)
    if (arr[max0] < arr[i])
      max0 = i;
  long long end = micros();
  Serial.print("Max = ");
  Serial.print(arr[max0]);
  Serial.print(" @ ");
  Serial.println(max0);
  Serial.println((double)(end - ini));
}
void loop() {}