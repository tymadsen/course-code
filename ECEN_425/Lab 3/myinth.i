# 1 "myinth.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myinth.c"
# 1 "clib.h" 1



void print(char *string, int length);
void printNewLine(void);
void printChar(char c);
void printString(char *string);


void printInt(int val);
void printLong(long val);
void printUInt(unsigned val);
void printULong(unsigned long val);


void printByte(char val);
void printWord(int val);
void printDWord(long val);


void exit(unsigned char code);


void signalEOI(void);
# 2 "myinth.c" 2

extern int KeyBuffer;
unsigned tickCount = 0;
unsigned delay;


void resetHandler(){
 exit(0);
}

void tickHandler(){
 tickCount++;
 printNewLine();
 printString("TICK ");
 printUInt(tickCount);
 printNewLine();
}

void keyHandler(){
 printNewLine();
 if (KeyBuffer != 'd'){
  printString("KEYPRESS (");
  printChar(KeyBuffer);
  printString(") IGNORED");
 } else {
  printString("DELAY KEY PRESSED");
  delay = 0;
  while(delay < 5000)
   delay++;
  printNewLine();
  printString("DELAY COMPLETE");
 }
 printNewLine();
}
