class time {
	int hour;
	int minute;
	public time (int hour ,int minute)
	{
		this.hour=hour;
		this.minute=minute;
	}
	 public void add(time t1,time t2)
	 {
	 	this.hour=t1.hour+t2.hour;
	 	this.minute=t1.minute+t2.minute;
	 	if(this.minute>=60)
	 	{
	 		this.hour=this.hour+(this.minute/60);
	 		this.minute=this.minute%60;
	 	}
	 }
	 public void print()
	 {
	 	System.out.println(this.hour);
	 	System.out.println(this.minute);
	 }
}
public class p1
{
	public static void main(String[] args)
	{
		time t1=new time (5,40);
		time t2=new time (6,50);
		time t3=new time (0,0);
		t3.add(t1,t2);
		t3.print();
	}
}