import java.util.Scanner;
public class p1
{
	public static void main(String[] args)
	{
	Scanner SC=new Scanner(System.in);
	
		System.out.println("enetr no array:");
		int n;
		n=SC.nextInt();
	    System.out.println("enetr element:");
		int[] a1=new int[n];
		for(int i=0;i<n;i++)
		{
	        a1[i]=SC.nextInt();
		}
		for (int i=0;i<n;i++ ) {
			System.out.println(a1[i]+"\t");

		}
	}
}

