package main;

public aspect CheckAssurance {

	pointcut verifyAssurance():execution(void PetStore.makeAppointment(..));
	before() : verifyAssurance() {
		System.out.println("Verify assurance..");
		System.out.println("Name of your pet:");
	}
}