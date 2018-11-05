package model;

import java.util.Random;

public class Number {

	private static final int MAX_NUMBER_OF_TRIALS = 7;
	private int number;
	private int number_of_tries;
	private boolean correct;
	private boolean finished;
	private boolean higher;

	public Number() {
		Random random = new Random();
		number = random.nextInt(100) + 1;
		number_of_tries = MAX_NUMBER_OF_TRIALS;
		correct = false;
		finished = false;
		higher = false;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public int getNumber_of_tries() {
		return number_of_tries;
	}

	public void setNumber_of_tries() {
		this.number_of_tries--;
	}

	public boolean trialFinished() {
		return finished = number_of_tries > 0 ? false : true;
	}

	public boolean numberGuessed(int number) {
		if(number > this.number)
			higher = true;
		else
			higher = false;
		
		return correct = this.number == number ? true : false;
	}

	public boolean isHigher() {
		return higher;
	}

	public void setHigher(boolean higher) {
		this.higher = higher;
	}

	public boolean isFinished() {
		return finished;
	}

	public void setFinished(boolean finished) {
		this.finished = finished;
	}

	public boolean isCorrect() {
		return correct;
	}

	public void setCorrect(boolean correct) {
		this.correct = correct;
	}

	
}
