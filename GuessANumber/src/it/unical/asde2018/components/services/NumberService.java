package it.unical.asde2018.components.services;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Service;

@Service
public class NumberService {
	
	private model.Number number;
	
	@PostConstruct
	public void init() {
		number = new model.Number();
	}
	
	
	
	
	public model.Number getNumber() {
		return number;
	}




	public void setNumber(model.Number number) {
		this.number = number;
	}

	
	public void reset() {
		number = new model.Number();
	}


	public boolean checkNumber(int number) {
		this.number.setNumber_of_tries();
		this.number.trialFinished();
		return this.number.numberGuessed(number);	
	}
}
