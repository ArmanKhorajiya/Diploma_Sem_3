#include<stdio.h>
void fact(int);
void main()
{
	int a;
	printf("enter a:");
	scanf("%d",&a);
	fact(a);
}
void fact(int a)
{
	 int fact=1,i;
	for(i=1;i<=a;i++)
	{
		fact=fact*i;
	}
	printf("%d",fact);
}