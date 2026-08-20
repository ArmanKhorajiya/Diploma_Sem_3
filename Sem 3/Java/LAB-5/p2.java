class emp
{
	int id;
	String name;
	int age;
	int salary;
	String designation;
	public emp(int id,String name,int age,int salary,String designation)
	{
		this.id=id;
		this.name=name;
		this.age=age;
		this.salary=salary;
		this.designation=designation;		
	}
	public void disply()
	{
		System.out.println("id="+id);
		System.out.println("name="+name);
		System.out.println("age="+age);
		System.out.println("salary="+salary);
		System.out.println("designation="+designation);
	}
}
public class p2
{
	public static void main(String[] args)
	{
		emp p2=new emp(222,"pank",100,100000000,"job");
		p2.disply();
	}
}