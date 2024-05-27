#ifndef __ANJIAN_H__
#define __ANJIAN_H_
extern unsigned char keynum;
extern unsigned char num[];
void delay2(unsigned int a);
unsigned char keyscan(void);//键盘扫描
unsigned char read_key(void); //读键值函数
void delay2(unsigned int a);
extern unsigned char yinSe;
extern unsigned char yinSeNum;//音色数量
extern unsigned char practice;//默认练习模式
extern unsigned char Teach;
extern unsigned char MusicID ;//默认第一首
extern unsigned char musicNum;
extern unsigned char nextMusic;
void keyInit();
		
#endif