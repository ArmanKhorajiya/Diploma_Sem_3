#include<stdio.h>
void oddeven(int);
void main()
{
	int n;
	printf("enter n:");
	scanf("%d",&n);
    oddeven (n);
}
void oddeven(int n)
{
	if(n%2==0)
		printf("number is even");
	else
		printf("number is odd");
}