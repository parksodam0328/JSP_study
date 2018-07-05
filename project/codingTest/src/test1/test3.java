package test1;

import java.util.Scanner;

public class test3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a=0,b=0;
		Scanner scan = new Scanner(System.in);
		
			a = scan.nextInt();
			b = scan.nextInt();
		if(a>0 && b<10) {
		int sum = a-b;
		System.out.println(sum);
		}
	}

}
