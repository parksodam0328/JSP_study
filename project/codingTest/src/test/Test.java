package test;
import java.util.Scanner;
public class Test {
	
	public static void main(String[] args) {
		int busNum;
		int cityNum;
		
		Scanner scan = new Scanner(System.in);
		
		busNum = scan.nextInt();//버스 수 입력
		
		int[] busName = new int[busNum*2];
		
		for(int i=0;i<busName.length;i++) {
			busName[i] = scan.nextInt();//버스명 입력
		}
		
		cityNum = scan.nextInt();//도시의 수
		
		int cityArray[] = new int[cityNum];
		
		for(int i=0;i<cityNum;i++) {
			cityArray[i] = scan.nextInt();//지나가는 도시 번호 입력
		}
		int cnt[] = new int[cityNum];//카운트
		
		for(int i=0;i<cityArray.length;i++) { //지나가는 도시 찾기
			for(int j=0;j<busNum;j+=2) {
				if(busName[j]>=cityArray[i] && cityArray[i]<=busName[j]) {
					cnt[i]++;
				}
			}
		}
		System.out.println("문제 #1: ");
		for(int i=0;i<cnt.length;i++) {
			System.out.print(cnt[i]+" ");
		}
	}
}
