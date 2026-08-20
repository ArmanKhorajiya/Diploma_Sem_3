import java.util.Scanner;
      public class p2 {
      	public static void main(String[] args){
        Scanner SC=new Scanner(System.in);
        System.out.println("enter value A,B and C");
        int a=SC.nextInt();
        int b=SC.nextInt();
        int c=SC.nextInt();
        int ans= max(a,b,c);
        System.out.println("answer is:"+ans);
      	}
      	public static int max(int a,int b,int c){
      		if(a>b && b>c){
      			return a;
      		}
      		else if(b>a && b>c){
      			return b;
      		}
      		else{
      			return c;
      		}
      }

      }
