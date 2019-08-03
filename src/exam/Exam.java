package exam;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Exam
 */
@WebServlet("/Exam")
public class Exam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Exam() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//System.out.println("im exam");
		HttpSession session=request.getSession();
		//QuestionAnswerBean fetchQuestionBean;
		String question_id="";
		String level="";
		String username=(String) session.getAttribute("username");
		String schedule_id=(String) session.getAttribute("schedule_id");
		String exam_status=(String) session.getAttribute("exam_status");
		String action="Next";
		if(exam_status.equals("false")) {//checking exam is already started or not
			//QuestionAnswerBean.fetchQuestionBean=null;
			System.out.println("adding new question object into session");
		
			//adding new question object into session
			Map<String, String> answermap = new HashMap<>();
			Map<String, String> reviewMap = new HashMap<>();
			GetQuestion getQuestion=new GetQuestion();
			getQuestion.setQuestionResultSet(schedule_id);
			int question_number=0;
			
			//storing object which have resultset off all the random question for that  exam into session
			session.setAttribute("questionsObj",getQuestion);
			//storing the map in session for update the score in it 
			session.setAttribute("answerMap",answermap);
			//map for store reviewed questions
			session.setAttribute("reviewMap",reviewMap);
			//seting exam status . for understatnd exam already started in the nex run
			session.setAttribute("exam_status","true");
			//storing question number
			session.setAttribute("question_number", question_number);
		}
		//fetchQuestionBean=QuestionAnswerBean.getBeanInstance();
		session.setAttribute("exam_status","true");
		if(exam_status.equals("true")) {//already exam started
			action=request.getParameter("submit");
			System.out.println("inside checking exam started or not");
			//fetchQuestionBean.setAnswer_map(question, answer);
			
			 question_id=request.getParameter("question_id");
			String answer=request.getParameter("option");
			System.out.println("adding answer into session");
			Map<String, String> answermap =(Map<String, String>) session.getAttribute("answerMap");
			answermap.put(question_id, answer);
			session.setAttribute("answerMap",answermap);
			//fetchQuestionBean.setAnswer_map(question_id, answer);
			
			
		}
		System.out.println("exam started");
		
		System.out.println("clicked button is :"+request.getParameter("submit"));
		
		//fetchQuestionBean.fetchQuestion(schedule_id,action);
		
		GetQuestion getQuestion=(GetQuestion) session.getAttribute("questionsObj");
		String questionId,question,optionA,optionB,optionC,optionD,answer;
		ResultSet singleQuestion=null;
		
		if (action.equals("Next")) {//if user choose next question
			try {
				System.out.println("user choosed next");
				
				if(getQuestion.question_set.next()) {
				//more questionsid available
					session.setAttribute("level", getQuestion.question_set.getString(4));
				singleQuestion=	getQuestion.getNextQuestion(getQuestion.question_set.getString(3),getQuestion.question_set.getString(4));
				singleQuestion.next();
				System.out.println("setting attributes for exam page");
				request.setAttribute("question_id",singleQuestion.getString(1));
				//System.out.println("id "+fetchQuestionBean.getQuestion_id());
				request.setAttribute("question",singleQuestion.getString(2));
				//System.out.println("question "+ fetchQuestionBean.getQuestion());
				request.setAttribute("option_a",singleQuestion.getString(3));
				request.setAttribute("option_b",singleQuestion.getString(4));
				request.setAttribute("option_c",singleQuestion.getString(5));
				request.setAttribute("option_d",singleQuestion.getString(6));
				//request.setAttribute("order_num",singleQuestion.getString(7));
				int question_number=(int) session.getAttribute("question_number");
				question_number+=1;
				session.setAttribute("question_number", question_number);
				
				
					
				}
				else {
					//no more next questions
					level=(String) session.getAttribute("level");
					System.out.println("inside else of next: questionid: "+question_id+"  level:"+level);
					
					singleQuestion=	getQuestion.getNextQuestion(question_id,level);
					singleQuestion.next();
					System.out.println("setting attributes for exam page");
					request.setAttribute("traverse_status","no more questions. click finish exam");
					request.setAttribute("question_id",singleQuestion.getString(1));
					//System.out.println("id "+fetchQuestionBean.getQuestion_id());
					request.setAttribute("question",singleQuestion.getString(2));
					//System.out.println("question "+ fetchQuestionBean.getQuestion());
					request.setAttribute("option_a",singleQuestion.getString(3));
					request.setAttribute("option_b",singleQuestion.getString(4));
					request.setAttribute("option_c",singleQuestion.getString(5));
					request.setAttribute("option_d",singleQuestion.getString(6));
					//request.setAttribute("order_num",singleQuestion.getString(7));
					
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		
		
		if (action.equals("Previous")) {//if user chooses previous question
			try {
				System.out.println("user choosed previous ");
				if(getQuestion.question_set.previous()) {
				//more questionsid available
				singleQuestion=	getQuestion.getNextQuestion(getQuestion.question_set.getString(3),getQuestion.question_set.getString(4));
				singleQuestion.next();
				System.out.println("setting attributes for exam page");
				request.setAttribute("question_id",singleQuestion.getString(1));
				//System.out.println("id "+fetchQuestionBean.getQuestion_id());
				request.setAttribute("question",singleQuestion.getString(2));
				//System.out.println("question "+ fetchQuestionBean.getQuestion());
				request.setAttribute("option_a",singleQuestion.getString(3));
				request.setAttribute("option_b",singleQuestion.getString(4));
				request.setAttribute("option_c",singleQuestion.getString(5));
				request.setAttribute("option_d",singleQuestion.getString(6));
				//request.setAttribute("order_num",singleQuestion.getString(7));
				
				int question_number=(int) session.getAttribute("question_number");
				question_number-=1;
				session.setAttribute("question_number", question_number);
				
					
				}
				else {
					//no more previous questions
					level=(String) session.getAttribute("level");
					System.out.println("inside else of previous: questionid: "+question_id+"  level:"+level);
					
					singleQuestion=	getQuestion.getNextQuestion(question_id,level);
					singleQuestion.next();
					System.out.println("setting attributes for exam page");
					request.setAttribute("traverse_status","no more questions. click finish exam");
					request.setAttribute("question_id",singleQuestion.getString(1));
					//System.out.println("id "+fetchQuestionBean.getQuestion_id());
					request.setAttribute("question",singleQuestion.getString(2));
					//System.out.println("question "+ fetchQuestionBean.getQuestion());
					request.setAttribute("option_a",singleQuestion.getString(3));
					request.setAttribute("option_b",singleQuestion.getString(4));
					request.setAttribute("option_c",singleQuestion.getString(5));
					request.setAttribute("option_d",singleQuestion.getString(6));
					//request.setAttribute("order_num",singleQuestion.getString(7));
					
					
					
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}
		if (action.equals("Review Answer")) {
			
			Map<String, String> reviewMap =(Map<String, String>) session.getAttribute("reviewMap");
			reviewMap.put(question_id, level);
			session.setAttribute("reviewMap",reviewMap);
			
			try {
				
				
				if(getQuestion.question_set.next()) {
				//more questionsid available
					session.setAttribute("level", getQuestion.question_set.getString(4));
				singleQuestion=	getQuestion.getNextQuestion(getQuestion.question_set.getString(3),getQuestion.question_set.getString(4));
				singleQuestion.next();
				System.out.println("setting attributes for exam page");
				request.setAttribute("question_id",singleQuestion.getString(1));
				//System.out.println("id "+fetchQuestionBean.getQuestion_id());
				request.setAttribute("question",singleQuestion.getString(2));
				//System.out.println("question "+ fetchQuestionBean.getQuestion());
				request.setAttribute("option_a",singleQuestion.getString(3));
				request.setAttribute("option_b",singleQuestion.getString(4));
				request.setAttribute("option_c",singleQuestion.getString(5));
				request.setAttribute("option_d",singleQuestion.getString(6));
				//request.setAttribute("order_num",singleQuestion.getString(7));
				int question_number=(int) session.getAttribute("question_number");
				question_number+=1;
				session.setAttribute("question_number", question_number);
					
				}
				else {
					//no more next questions
					level=(String) session.getAttribute("level");
					System.out.println("inside else of next: questionid: "+question_id+"  level:"+level);
					
					singleQuestion=	getQuestion.getNextQuestion(question_id,level);
					singleQuestion.next();
					System.out.println("setting attributes for exam page");
					request.setAttribute("traverse_status","no more questions. click finish exam");
					request.setAttribute("question_id",singleQuestion.getString(1));
					//System.out.println("id "+fetchQuestionBean.getQuestion_id());
					request.setAttribute("question",singleQuestion.getString(2));
					//System.out.println("question "+ fetchQuestionBean.getQuestion());
					request.setAttribute("option_a",singleQuestion.getString(3));
					request.setAttribute("option_b",singleQuestion.getString(4));
					request.setAttribute("option_c",singleQuestion.getString(5));
					request.setAttribute("option_d",singleQuestion.getString(6));
					//request.setAttribute("order_num",singleQuestion.getString(7));
					
					
					
					
					
					
					
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
			
		}
		
		
		
		
		if(action.equals("Finish")) {
		
			Map<String, String> reviewMap =(Map<String, String>) session.getAttribute("reviewMap");
			
			if(reviewMap.size()>0) {
				System.out.println("reviews remining: "+reviewMap.size());
				session.setAttribute("reviewMap","");
				
				
				
				Map<String, String> answerMap =(Map<String, String>) session.getAttribute("answerMap");
				CalculateMarks calculateMarks=new CalculateMarks();
				int score=calculateMarks.calculateMark(answerMap,schedule_id,username);
				
				
				
				request.setAttribute("reviews","reviewed questions  :"+reviewMap.size() );
				request.getRequestDispatcher("exam.jsp").forward(request, response);
				//reviewMap=null;
			
			}
			else {
				System.out.println("user choosed Finish ");
				Map<String, String> answerMap =(Map<String, String>) session.getAttribute("answerMap");
				CalculateMarks calculateMarks=new CalculateMarks();
				int score=calculateMarks.calculateMark(answerMap,schedule_id,username);
				request.getRequestDispatcher("view_score.jsp").forward(request, response);
			}
			
			
			
			
		}
		

		
		
		request.getRequestDispatcher("exam.jsp").forward(request, response);

		
		
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
