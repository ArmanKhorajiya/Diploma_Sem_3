#include <stdio.h>
#include <stdlib.h>
int push(int[],int,int,int);
int pop (int [],int,int);
void display (int [],int,int,int);
void peep(int[],int,int,int);
void change(int[],int,int,int,int);
void main()
{
	int choice,a[100],n,top=-1,x,i;
	printf("enetr size(n)of stack");
	scanf("%d",&n);
	do
	{
		printf("enter 1 for push\n");
		printf("enter 2 for pop\n");
		printf("enter 3 for peep\n");
		printf("enter 4 for change\n");
		printf("enter 5 for display\n");
		printf("enter 0 for exit\n");

		scanf("%d",&choice);
		switch (choice)
		{
		case 1:
			printf("puch");
			printf("\n enter the value");
			scanf("%d",&x);
			top=push (a,n,top,x);
			break;

		case 2:
			printf("pop");
			top= pop(a,n,top);
			break;

		case 3:
			printf("peep");
			printf("enter value");
			scanf("%d",&i);
			peep(a,top,i,n);
			break;

		case 4:
			printf("change");
			printf("enter value to be change ");
			scanf("%d",&x);
			change (a,i,x,top,n);
			break;

		case 5:
			printf("display");
			display (a,top,x,n);
			break;

		case 0:
			exit(0);
			break;

		default:
			printf("enter valid choice");
		}
	}
	while(1);
}
	int push (int a[],int n, int top,int x)
	{
		if (top>=n-1)
		{
			printf("stack overflow");
		}
		else
		{
			top=top+1;
			a[top]=x;
		}
		return top;
	}
	int pop (int a[], int top, int n)
	{
		int value;
		printf("pop function top== %d\n",top);
		if (top>=n+1)
		{
			printf("stack is underflow");
		}
		else
		{
						value=a[top];

			top=top-1;
			printf("poped element is %d",value);
		}
		return top;
	}
	void peep (int a[],int top,int i, int n)
	{
		int temp;
		printf("peep funcation top==%d\n",top);
		if (top==-1)
		{
			printf("stack is empty \n");
		}
		else 
		{
			if(top-i+1<0)
			{
				printf("stack is underflow\n");
			}
			else
			{
				temp=a[top-i+1];
				printf("ith element is:%d\n",temp);
			}
		}
	}
	void display (int a[],int top,int x,  int n)
	{
		int i;
		if(top==-1)
		{
			printf("stack is empty");
		}
		else 
		{
			printf("stack is :\n");
			for (i=top;i>=0;i--)
			{
				printf("%d",a[i]);
			}
		}
	}
	void change (int a[],int top, int x,int i,int n)
	{
		printf("change function top=%d\n",top);
		if(top<0)
		{
			printf("stack is empty");
		}
		else
		{
			if(top-i+1<0)
			{
				printf("stack underflow");
			}
			else
			{
				a[top-i+1]=x;
			}
		}
	}

     
