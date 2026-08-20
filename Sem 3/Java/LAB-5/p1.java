class student{
	int Enrollmenno;
	String name;
	String gender;
	int mark;
	static int count=0;
	public student(int Enrollmennom,String name,String gender,int mark)
	{
		this.Enrollmenno=Enrollmenno;
		this.name=name;
		this.gender=gender;
		this.mark=mark;
		count++;
	} 
	public void disply()
	 {
		System.out.println("Enrollmenno="+Enrollmenno);
		System.out.println("name="+name);
		System.out.println("gender="+gender);
		System.out.println("mark="+mark);
	}
} 
public class p1
{
	public static void main(String[] args)
	{
			student p1=new student(101,"darshan","male",70);
			p1.disply();
			student  p2=new student(102,"value","female",10);
			p2.disply();
	}
}