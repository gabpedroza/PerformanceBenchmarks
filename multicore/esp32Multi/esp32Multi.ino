#pragma GCC optimize("Ofast")
TaskHandle_t code0handle, code1handle;
const int MAXN = 25000;
int arr[MAXN];
int max0, max1;
QueueHandle_t q = xQueueCreate(2, 4);
void code0(void* parameter) {
  for (int i = 0; i < MAXN / 2; ++i)
    if (arr[i] > arr[max0])
      max0 = i;
  xQueueSend(q, &max0, 0);
  while(1){}
}
void code1(void* parameter) {
  for (int i = MAXN / 2; i < MAXN; ++i)
    if (arr[i] > arr[max1])
      max1 = i;
  int buff;
  xQueueSend(q, &buff, portMAX_DELAY);
  vTaskDelete(NULL);
}
void setup() {
  //pinMode(13, INPUT);
  //srand(analogRead(13));

  Serial.begin(9600);
  for (int i = 0; i < MAXN; ++i)
    arr[i] = esp_random() % INT_MAX;
  long long ini = micros();
  xTaskCreatePinnedToCore(
    code0,
    "code0handle",
    10000,
    NULL,
    0,
    &code0handle,
    0);  //roda no core 0
  xTaskCreatePinnedToCore(
    code1,
    "code1handle",
    10000,
    NULL,
    1,
    &code1handle,
    1);  //roda no core 1
  
  if (arr[max0] > arr[max1]) {
    long long end = micros();
    Serial.print("Max = ");
    Serial.print(arr[max0]);
    Serial.print(" @ ");
    Serial.println(max0);
    Serial.println((double)(end-ini));
  } else {
    long long end = micros();
    Serial.print("Max = ");
    Serial.print(arr[max1]);
    Serial.print(" @ ");
    Serial.println(max1);
    Serial.println((double)(end-ini));
  }
}
void loop() {}