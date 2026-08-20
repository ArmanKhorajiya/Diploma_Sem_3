import java.util.Scanner ;
public class p2{
	public static void main(String[] agrs){
	
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter r");
		int r = sc.nextInt();
		double  area=3.14*r*r;
		System.out.println("Answer is:" + area);
		double diameter=Math.sqrt(area/3.14)*2;
		System.out.println("Answer 2 is:" + diameter);
	}
}
