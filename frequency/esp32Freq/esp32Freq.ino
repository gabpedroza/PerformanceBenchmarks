const int MAXN = 25000;
int arr[MAXN];
byte speeds[3] = {240, 160, 80};
void setup(){
  Serial.begin(9600);
  for(int i = 0; i < MAXN; ++i)
    arr[i] = rand();
  for(byte s = 0; s < 3; ++s){
    setCpuFrequencyMhz(speeds[s]);
    long long ini = micros();
    int chcksum = 1;
    for(byte i = 0; i < 20; ++i){
      for(int j = 0; j < MAXN; ++j){
        chcksum ^= arr[j];
      }
      //Serial.println("summing...");
    }
    long long end = micros();
    Serial.println(chcksum);
    Serial.print(speeds[s]);
    Serial.print(", ");
    Serial.println((double)(end-ini));
  }

}
void loop(){}