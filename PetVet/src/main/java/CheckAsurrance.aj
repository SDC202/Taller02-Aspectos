
public aspect CheckAsurrance {
	
	pointcut verifyAssurance(): execution(void PetStore.makeAppointment(..));
	before(): verifyAssurance(){
		
	}
}
