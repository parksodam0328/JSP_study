package test2;

import java.util.Scanner;

public class test4 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		double a=0,b=0;
		Scanner scan = new Scanner(System.in);
		
			a = scan.nextInt();
			b = scan.nextInt();
		if(a>0 && b<10) {
		double sum = a/b;
		System.out.println(sum);
		}
	}

}
