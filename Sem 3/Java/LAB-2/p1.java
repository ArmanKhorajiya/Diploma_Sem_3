import java.util.Scanner;
public class p1
{
	public static void main(String[] args) 
	{
		Scanner SC=new Scanner(System.in);
		int a,b;
		System.out.println("press 1 for Additon:");
		System.out.println("press 2 for Substraction:");
		System.out.println("press 3 for Multiplication:");
		System.out.println("press 4 for Division:");
		int ans;
		ans=SC.nextInt();
		System.out.println("Enter Values:");
		a=SC.nextInt();
		b=SC.nextInt();
		switch(ans)
		{
			case 1:
				System.out.println(a+b);
				break;
		
		
		
		
		case 2:
			System.out.println(a-b);
			break;

		
	
		
			case 3:
			System.out.println(a*b);
			break;
		
		
		case 4:
		System.out.println(a/b);
		break;
		}
		
			

	}




}
