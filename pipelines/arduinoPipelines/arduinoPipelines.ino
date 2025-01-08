#pragma GCC optimize("Ofast")
//code: https://godbolt.org/#g:!((g:!((g:!((g:!((h:codeEditor,i:(filename:'1',fontScale:14,fontUsePx:'0',j:1,lang:c%2B%2B,selection:(endColumn:28,endLineNumber:1,positionColumn:28,positionLineNumber:1,selectionStartColumn:28,selectionStartLineNumber:1,startColumn:28,startLineNumber:1),source:'%23pragma+GCC+optimize(%22Ofast%22)%0A%23include%3CArduino.h%3E%0Aconst+int+MAXN+%3D+1750%3B%0Abyte+arr%5BMAXN%5D%3B%0Avoid+setup()%7B%0A++++srand(analogRead(A0))%3B%0A++++Serial.begin(9600)%3B%0A++++for(int+i+%3D+0%3B+i+%3C+MAXN%3B+%2B%2Bi)%7B%0A++++++++arr%5Bi%5D+%3D+rand()%3B%0A++++%7D%0A++++byte+chcksum+%3D+1%3B%0A++++long+long+ini+%3D+micros()%3B%0A++++for(int+i+%3D+0%3B+i+%3C+MAXN%3B+%2B%2Bi)%0A++++++++chcksum+%5E%3D+arr%5Bi%5D%3B%0A++++long+long+end+%3D+micros()%3B%0A++++Serial.println((int)chcksum)%3B%0A++++Serial.println((double)(end+-+ini))%3B%0A%7D%0A%0Avoid+loop()%7B%7D'),l:'5',n:'0',o:'C%2B%2B+source+%231',t:'0')),k:50,l:'4',n:'0',o:'',s:0,t:'0'),(g:!((h:compiler,i:(compiler:arduinouno189,filters:(b:'0',binary:'1',binaryObject:'1',commentOnly:'0',debugCalls:'1',demangle:'0',directives:'0',execute:'0',intel:'0',libraryCode:'1',trim:'1',verboseDemangling:'0'),flagsViewOpen:'1',fontScale:14,fontUsePx:'0',j:1,lang:c%2B%2B,libs:!(),options:'-std%3Dgnu%2B%2B17+-fverbose-asm',overrides:!(),selection:(endColumn:1,endLineNumber:1,positionColumn:1,positionLineNumber:1,selectionStartColumn:1,selectionStartLineNumber:1,startColumn:1,startLineNumber:1),source:1),l:'5',n:'0',o:'+Arduino+Uno+(1.8.9)+(Editor+%231)',t:'0')),k:50,l:'4',n:'0',o:'',s:0,t:'0')),l:'2',m:67.13580246913581,n:'0',o:'',t:'0'),(g:!((h:output,i:(compilerName:'x86-64+gcc+14.1',editorid:1,fontScale:14,fontUsePx:'0',j:1,wrap:'1'),l:'5',n:'0',o:'Output+of+Arduino+Uno+(1.8.9)+(Compiler+%231)',t:'0')),header:(),l:'4',m:32.864197530864196,n:'0',o:'',s:0,t:'0')),l:'3',n:'0',o:'',t:'0')),version:4
const int MAXN = 1750;
byte arr[MAXN];
void setup(){
    srand(analogRead(A0));
    Serial.begin(9600);
    for(int i = 0; i < MAXN; ++i){
        arr[i] = rand();
    }
    byte chcksum = 1;
    long long ini = micros();
    for(int i = 0; i < MAXN; ++i)
        chcksum ^= arr[i];
    long long end = micros();
    Serial.println((int)chcksum);
    Serial.println((double)(end - ini));
}

void loop(){}