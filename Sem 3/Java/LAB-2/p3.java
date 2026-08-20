import java.util.Scanner ;
public class p3{
	public static  void main(String[] args) {
		Scanner sc=new Scanner(System.in);

		System.out.println("Enter No:");
		int No = sc.nextInt();
		if (No>0) {
			System.out.println("possitive");
		}
	     else if(No==0){
		     System.out.println("No is 0");
		}
		else{
			System.out.println("negative");
		}
	}
}
