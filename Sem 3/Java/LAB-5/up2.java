import java.util.Scanner;
class employee{
	int id,age,salary;
	String name, designation;
	public void GetEmployeeDetails()
	{
		Scanner sc= new Scanner(System.in);
		System.out.println("Enter employee id : ");
		this.id=sc.nextInt();
		System.out.println("Enter age : ");
		this.age=sc.nextInt();
		System.out.println("Enter name : ");
		this.name=sc.next();
		System.out.println("Enter salary : ");
		this.salary=sc.nextInt();
		System.out.println("Enter designation : ");
		this.designation=sc.next();
	}
	public void DisplayEmpolyeeDetails()
	{
		System.out.println("Name : "+name);
		System.out.println("Age : "+age);
		System.out.println("Employee ID : "+id);
		System.out.println("Salary : "+salary);
		System.out.println("Designation : "+designation);
	}
}
public class up2
{
	public static void main(String[] args)
	{
		employee obj= new employee();
		obj.GetEmployeeDetails();
		System.out.println();
		obj.DisplayEmpolyeeDetails();
	}
}