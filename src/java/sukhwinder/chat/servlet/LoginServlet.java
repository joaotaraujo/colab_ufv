package sukhwinder.chat.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import sukhwinder.chat.*;

/**
@author Sukhwinder Singh
*/
public class LoginServlet extends HttpServlet
{
	private String contextPath = "";
	/** This method just redirects user to a login page.*/
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		contextPath = request.getContextPath();
		response.sendRedirect(contextPath + "/login.jsp");		
	}
	/** Performs some validation and if everything is ok sends user to a page which displays a list of
	* rooms available.
	*/
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		contextPath = request.getContextPath();	
                HttpSession sessao = request.getSession();
		String nickname = (String) sessao.getAttribute("nickname");
                System.out.println("AGESGWEGWG");
		nickname = nickname.trim().toLowerCase();
		String sex = "m";
		if (sex.length() > 0)
		{
			sex = sex.trim().toLowerCase();
		}
		if (sex != null && (sex.equals("m") || sex.equals("f") ) )
		{
			try
			{
				ChatRoomList roomlist = (ChatRoomList)getServletContext().getAttribute("chatroomlist");
				boolean chatterexists = roomlist.chatterExists(nickname);
				if (chatterexists)
				{
					response.sendRedirect(contextPath + "/login.jsp?d=t&n="+nickname);
				}
				else
				{
					HttpSession session = request.getSession(true);
					int timeout = 1800; // 30 minutes
					String t = getServletContext().getInitParameter("sessionTimeout"); // gets Minutes
					if (t != null)
					{
						try
						{
							timeout = Integer.parseInt(t);
							timeout = timeout * 60;
						}
						catch (NumberFormatException nfe)
						{							
						}
					}
					session.setMaxInactiveInterval(timeout);
					session.setAttribute("nickname", nickname);
					// Because Chatter objects are stored in room.
					// So before user selects any room he is added to a temporary room "StartUp"
					ChatRoom chatRoom = roomlist.getRoom("Java"); 
					nickname = nickname.toLowerCase();
					Chatter chatter = null;
					if ("m".equals(sex))
					{
						sex = "Male";
					}
					else
					{
						sex = "Female";
					}
					chatter = new Chatter(nickname, sex, new java.util.Date().getTime());
					chatRoom.addChatter(chatter);
					response.sendRedirect(contextPath + "/start.jsp");

				}
			}
			catch(Exception exception)
			{
				System.out.println("Exception thrown in LoginServlet: " + exception.getMessage());
				exception.printStackTrace();
				response.sendRedirect(contextPath + "/error.jsp");
			}
		}
		else
		{
			response.sendRedirect(contextPath + "/login.jsp?ic=t");
		}
	}
}