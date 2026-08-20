import java.util.Scanner;
public class p3
	{
		public static void main(String[] args)
		{
			int row,col;
			Scanner sc=new Scanner(System.in);
			System.out.print("Enter Rows of Array :");
			row=sc.nextInt();

			System.out.print("Enter Columns of Array :");
			col=sc.nextInt();


			int arr[][] = new int[row][col];
			int size = row * col;
			System.out.print("Enter " + size + " Elements Here:" );
			for(int i=0;i<row;i++)
			{
				for(int j=0;j<col;j++)
				{
					arr[i][j] = sc.nextInt(); 
				}
			}
			for(int i=0;i<row;i++)
			{
				for(int j=0;j<col;j++)
				{
					System.out.print(arr[i][j] + "\t" );
				}
				System.out.print("\n");
			}
		}
	}