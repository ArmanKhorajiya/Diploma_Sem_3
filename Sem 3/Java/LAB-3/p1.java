import java.util.Scanner;
      public class p1 {
      	public static void main(String[] args){
                  Scanner SC=new Scanner(System.in);
                  System.out.println("enter value P,R and T");
                  double P=SC.nextDouble();
                  double R=SC.nextDouble();
                  double T=SC.nextDouble();
                  double ans= interst(P,R,T);
                  System.out.println("answer is"+ans);
      	}
      	public static Double interst(double p,double r,double t){
                  return (p*r*t/100);
            }
            
      }

