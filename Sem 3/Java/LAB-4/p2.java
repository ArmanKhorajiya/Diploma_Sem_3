import java.util.Scanner;
public class p2{
	public static void main(String[] args)
	{
	Scanner SC=new Scanner(System.in);
	System.out.println("enetr array no:");
	int n;
	int odd=0;
	int even=0;
	n=SC.nextInt();
	int[] a1=new int[n];
	System.out.println("enter element:\n");
	for (int i=0;i<n;i++) {

        a1[i]=SC.nextInt();
	}
	for (int i=0;i<n;i++) {

		if (a1[i]%2==0) {

			even++;
		}
		else{

			odd++;
		}
	}
	System.out.println("even number:"+even);
	System.out.println("odd number:"+odd);
	}
}

	