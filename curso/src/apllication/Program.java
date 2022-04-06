package apllication;

import java.util.Locale;
import java.util.Scanner;

public class Program {

	public static void main(String[] args) {
		
		
		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);
		double xA,xB,xC,yA,yB,yC;
		
		System.out.println("Enter the measures of triangle x: ");
		xA = sc.nextDouble();
		xB = sc.nextDouble();		
		xC= sc.nextDouble();	
		System.out.println("Enter the measures of triangle y : ");
		yA= sc.nextDouble();
		yB= sc.nextDouble();
		yC= sc.nextDouble();
		
		double P = (xA + xB +xC) / 2.0;
		double areaX = Math.sqrt(P *(P - xA)*(P - xB) *(P - xC));
		
		 P = (yA + yB +yC) / 2.0;
		double areaY = Math.sqrt(P *(P - yA)*(P - yB) *(P - yC));
		
		System.out.printf("Triangle X area: %.4f%n",areaX);
		System.out.printf("Triangle X area: %.4f%n",areaY);
		
		if(areaX > areaY) {
			System.out.println("Larger area :X");
		}
		else {
			System.out.println("Larger area:Y");
		}
		
		
				sc.close();
	}

}
