import java.util.Scanner;
public class p3{
  public static void main(String[] args) {
    
    Scanner SC = new Scanner(System.in);
    
    System.out.println("Enter redis of Circle = ");
    double r=SC.nextDouble();
    System.out.println("area of Circle is :"+area(r));
    
    System.out.println("Enter redis of Triangle = ");
    double b=SC.nextDouble();
    double h=SC.nextDouble();
    System.out.println("area of Triangle:"+area(b,h));
    
    System.out.println("Enter redis of Square = ");
    int s=SC.nextInt();
    System.out.println("area of Square:"+area(s));
  }
  public static double area (double r)
  {
    return (3.14*r*r);
  }
  public static double area (double b,double h)
  {
    return ((1/2)*b*h);
  }
  public static int area (int s)
  {
    return (s*s);
  }
}