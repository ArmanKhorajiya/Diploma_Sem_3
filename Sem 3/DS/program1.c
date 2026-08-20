#include<stdio.h>
void area(int r)
{
	float area=3.14*r*r;
	printf("Area of circle is:%f",area);
}
void main()
{
	int r;
	printf("Enter radius:\n");
	scanf("%d",&r);
	area(r);
}