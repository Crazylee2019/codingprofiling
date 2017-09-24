#include <stdio.h>
#include <math.h>
#define NUM 393216  

void add(int *a,int *b,int num)
{  
	int i=0;  
	for(i=0;i<num;i++) {  
		*a=*a+*b;  
		a++;  
		b++;  
	}     
	return;
} 

int main()
{  
	int a[NUM],b[NUM];  
	int i;  
	for(i=0;i<1000;i++)  
		add(a,b,NUM);  
}  

