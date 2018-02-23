package pl.edu.pw.ii.kalkulator.controller;

import java.text.DecimalFormat;

import pl.edu.pw.ii.kalkulator.model.CalculatorInteface;
import pl.edu.pw.ii.kalkulator.model.DisplayObserver;
import pl.edu.pw.ii.kalkulator.polecenie.DivideCommand;
import pl.edu.pw.ii.kalkulator.polecenie.MultiplyCommand;
import pl.edu.pw.ii.kalkulator.polecenie.PercentCommand;
import pl.edu.pw.ii.kalkulator.polecenie.PlusCommand;
import pl.edu.pw.ii.kalkulator.polecenie.SquareCommand;
import pl.edu.pw.ii.kalkulator.polecenie.SubstractCommand;

public class Controller implements CalculatorController, DisplayObserver {
	private String display;
	private String error;
	private CalculatorInteface calculator;

	public Controller(CalculatorInteface calculator) {
		this.calculator = calculator;
		calculator.addDisplayListener(this);
	}

	public String getDisplay() {
		return display;
	}

	public String getError() {
		return error;
	}

	@Override
	public void disableButtons() {
		error = "disabled";

	}

	@Override
	public void enableButtons() {
		error = "";

	}

	@Override
	public void enterZero() {
		System.out.println("Controller: " + "0");
		calculator.enterZero();
	}

	@Override
	public void enterNonZeroDigit(int digit) {
		System.out.println("Controller: " + digit);
		calculator.enterNonZeroDigit(digit);

	}

	@Override
	public void enterDecimalSeparator() {
		System.out.println("Controller: " + ".");
		calculator.enterDecimalSeparator();

	}

	@Override
	public void enterPlus() {
		System.out.println("Controller: " + "+");
		calculator.enterMathOperator(new PlusCommand(calculator));

	}

	@Override
	public void enterMinus() {
		System.out.println("Controller: " + "-");
		calculator.enterMathOperator(new SubstractCommand(calculator));

	}

	@Override
	public void enterDivide() {
		System.out.println("Controller: " + "/");
		calculator.enterMathOperator(new DivideCommand(calculator));

	}

	@Override
	public void enterMultiply() {
		System.out.println("Controller: " + "*");
		calculator.enterMathOperator(new MultiplyCommand(calculator));

	}

	@Override
	public void enterPercent() {
		System.out.println("Controller: " + "%");
		calculator.enterUnaryOperator(new PercentCommand(calculator));

	}

	@Override
	public void enterSqrt() {
		System.out.println("Controller: " + "sqrt");
		calculator.enterUnaryOperator(new SquareCommand(calculator));

	}

	@Override
	public void enterReverse() {
		System.out.println("Controller: " + "+/-");
		calculator.enterReverseSign();

	}

	@Override
	public void enterEquals() {
		System.out.println("Controller: " + "=");
		calculator.enterEquals();

	}

	@Override
	public void enterClear() {
		System.out.println("Controller: " + "C");
		calculator.enterClear();

	}

	@Override
	public void updateDisplay() {
		if (calculator.isError()) {
			disableButtons();
			display = "Err";
		} else {
			enableButtons();

			DecimalFormat df = new DecimalFormat("#.############");
			String text = calculator.getDisplay();
			try {
				if ((text.charAt(text.length() - 1) != ".".charAt(0))
						&& (text.charAt(text.length() - 1) != "0".charAt(0))) // sprawdzenie
																				// czy
																				// display
																				// na
																				// koñcu
																				// ma
																				// ','
																				// lub
																				// '0'
					text = df.format(Double.parseDouble(text));
			} catch (Exception e) {
			}
			display = text.replace(".", ",");
		}
	}

}
