#include<stdio.h>
#include<stdlib.h>
int push(int[],int,int,int);
int pop(int[],int,int);
int peep(int[],int,int,int);
void change(int[],int,int,int);
void display(int[],int,int);
void main()
{
	int choice,s[100],top=-1,x,n=5,i;
	printf("enter size of array");
	scanf("%d",&n);
	do
	{
		printf("press 1 for push operation\n");
		printf("press 2 for pop operation\n");
		printf("press 3 for peep operation\n");
		printf("press 4 for change operation\n");
		printf("press 5 for display operation\n");
		printf("press 0 for exit");
		scanf("%d",&choice);
		switch(choice)
		{
		case 1:
			printf("enter value\n");
			scanf("%d",&x);
			top=push(s,top,x,n);
			printf("push operation\n");
			break;

		case 2:
			top=pop(s,top,n);
			printf("pop operation\n");
			break;

		case 3:
			scanf("%d",&i);
			printf("peep operation\n");
			break;

		case 4:
			scanf("%d",&i);
			printf("change operation\n");
			break;

		case 5:
			display(s,top,n);
			printf("display operation\n");
			break;

		case 0:
			exit(0);
			break;

		default:
			printf("enter valid choice\n");
         }
	}while(1);
}
int push(int s[],int top,int x,int n)
{
	printf("push function top==%d\n",top);
	if(top>=n-1)
	{
      printf("stack is overflow \n");
	}
	else
	{
		top=top+1;
		s[top]=x;
	}
	return top;
}

int pop(int s[],int top,int n)
{
	int value;
	printf("pop function top==%d\n",top);
	if(top==-1)
	{
      printf("stack is undererflow \n");
	}
	else
	{
		value=s[top];
		top=top-1;
		printf("%d",value);
	}
	return top;
}

int peep(int s[],int top,int i,int n)
{
	int temp;
	printf("peep function top==%d\n",top);
	if(top==n-1)
	{
      printf("stack is emty ");
	}
	else
	{
		if(top-i+1<0)
		{
			printf("stack is overflow \n");
		}
		else
		{
			temp=s[top-i+1];
			printf("ith element is %d\n",temp);
		}
	}
}

void change(int s[],int top,int i,int n)
{
	int temp;
	printf("change function top==%d\n",top);
	if(top==-1)
	{
      printf("stack is emty ");
	}
	else
	{
		if(top-i+1<0)
		{
			printf("stack is overflow \n");
		}
		else
		{
			temp=s[top-i+1];
			printf("ith element is %d\n",temp);
		}
	}
}

void display(int s[],int top,int n)
{
	printf("display function top==%d\n",top);
	if(top==-1)
	{
      printf("stack is underflow ");
	}
	else
	{
		while(top>=0)
		{
			printf("display element %d\n",s[top]);
			top=top-1;
		}
	}
	printf("%d \n",stack[i]);
}
