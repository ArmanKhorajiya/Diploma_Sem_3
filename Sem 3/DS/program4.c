#include<stdio.h>
void power(int,int);
void main()
{
   int a,b,ans=1;
   printf("enter base and power:");
   scanf("%d%d",&a,&b);
   power(a,b);
}
void power (int a,int b)
{
    int sum=1,i;
    for(i=1;i<=b;i++)
    {
      sum=sum*a;
    }
    printf("ans is %d\n",sum);
}