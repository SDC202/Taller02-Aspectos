package main;
import java.util.Scanner;
public aspect CheckAssurance {

	pointcut verifyAssurance():execution(void PetStore.makeAppointment(..));
	before() : verifyAssurance() {
		System.out.println("Verifying assurance...");
		System.out.println("Name of your pet:");
		Scanner scanner=new Scanner(System.in);
		String name = scanner.nextLine();
		System.out.println("Welcome "+name);
		System.out.println("You are able to use this service");
	}
}