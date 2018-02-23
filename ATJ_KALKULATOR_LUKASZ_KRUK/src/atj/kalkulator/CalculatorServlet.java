package atj.kalkulator;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pl.edu.pw.ii.kalkulator.controller.CalculatorController;
import pl.edu.pw.ii.kalkulator.controller.Controller;
import pl.edu.pw.ii.kalkulator.model.CalculatorFactory;
import pl.edu.pw.ii.kalkulator.model.CalculatorImpl;
import pl.edu.pw.ii.kalkulator.model.CalculatorInteface;

/**
 * Servlet implementation class CalculatorServlet
 */
@WebServlet("/Kalkulator")
public class CalculatorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CalculatorServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);

		CalculatorInteface calculator = (CalculatorInteface) session
				.getAttribute("calculator");
		CalculatorController controller = (CalculatorController) session
				.getAttribute("controller");
		if (calculator == null || controller == null) {
			calculator = new CalculatorImpl();
			session.setAttribute("calculator", calculator);
			session.setAttribute("controller", new Controller(calculator));
		}

		String pressedBtn = (String) request.getParameter("button");

		if (pressedBtn != null) {
			passButton(pressedBtn, controller);
		}
		if (controller != null) {
			request.setAttribute("display", controller.getDisplay());
			request.setAttribute("disabled", controller.getError());
		}
		
		String calcView =(String)session.getAttribute("calcView");
		if(calcView == null){
			session.setAttribute("calcView", "def");// widok standardowy
		}

		if (request.getParameter("calcView") != null) {
			System.out.println(request.getParameter("calcView"));
			session.setAttribute("calcView", request.getParameter("calcView"));
		}

		switch ((String) session.getAttribute("calcView")) {
		case ("def"):
			request.getRequestDispatcher("/WEB-INF/kalkulator.jsp").forward(request,
					response);
			break;
		case ("bs"):
			request.getRequestDispatcher("/WEB-INF/kalkulator_bs.jsp").forward(request,
					response);
			break;
		default: request.getRequestDispatcher("/WEB-INF/kalkulator.jsp").forward(request,
				response);
			break;
		}
		/*
		 * request.getRequestDispatcher("kalkulator.jsp").forward(request,
		 * response); System.out.println("Pressed: " + pressedBtn);
		 */
	}

	private void passButton(String pressedBtn, CalculatorController controller) {
		if (controller != null) {
			switch (pressedBtn) {
			case "0":
				controller.enterZero();
				break;
			case "1":
				controller.enterNonZeroDigit(1);
				break;
			case "2":
				controller.enterNonZeroDigit(2);
				break;
			case "3":
				controller.enterNonZeroDigit(3);
				break;
			case "4":
				controller.enterNonZeroDigit(4);
				break;
			case "5":
				controller.enterNonZeroDigit(5);
				break;
			case "6":
				controller.enterNonZeroDigit(6);
				break;
			case "7":
				controller.enterNonZeroDigit(7);
				break;
			case "8":
				controller.enterNonZeroDigit(8);
				break;
			case "9":
				controller.enterNonZeroDigit(9);
				break;
			case "10":
				controller.enterDivide();
				break;
			case "11":
				controller.enterSqrt();
				break;
			case "12":
				controller.enterMultiply();
				break;
			case "13":
				controller.enterPercent();
				break;
			case "14":
				controller.enterMinus();
				break;
			case "15":
				controller.enterEquals();
				break;
			case "16":
				controller.enterDecimalSeparator();
				break;
			case "17":
				controller.enterReverse();
				break;
			case "18":
				controller.enterPlus();
				break;
			case "19":
				controller.enterClear();
				break;
			default:
				break;

			}
		}
	}

}
