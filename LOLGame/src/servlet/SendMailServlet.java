package servlet;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.MessageFormat;
import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserInfo;
import dao.UserInfoDAO;

import utils.Md5Utils;
import utils.common.CommonUtils;
import utils.mail.Mail;
import utils.mail.MailUtils;

public class SendMailServlet extends HttpServlet {
	private static final long serialVersionUID = -870359785046131033L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/**
		 * 发邮件
		 */

		Properties prop = new Properties();// 外部property属性文件
		prop.load(this.getClass().getClassLoader()
				.getResourceAsStream("email.properties"));
		response.setCharacterEncoding("utf-8");
		String host = prop.getProperty("host"); // 获取主机名
		String authname = prop.getProperty("authname"); // 获取发件人名
		String authpassword = prop.getProperty("authpassword"); // 密码

		String from = prop.getProperty("from"); // 发件人邮箱
		
		String email = request.getParameter("email1"); // 收件人邮箱
		String subject = prop.getProperty("subject"); // 主题
		// String content = prop.getProperty("content"); // 内容
		String errMsg2 = "";

		HttpSession session1 = request.getSession(true);
		String username = (String) session1.getAttribute("username2");
		String username1 = (String)username;
		
		UserInfoDAO dao =new UserInfoDAO();
		UserInfo u = new UserInfo(username, null, 1L, email, null);// 封装成Userinfo对象
		int res = dao.findUserEmail(u);
		System.out.println(res);
		if (res == 1) {
			long currentTime = System.currentTimeMillis() + 120000;
			Date time = new Date(currentTime);
			Timestamp ts = new Timestamp(time.getTime());
			Random random = new Random();
			String key = username + "|" + ts + "|" + random.nextInt();
			String signature = Md5Utils.md5(key); // 验证码

			String signature1 = (String)signature;
			// content = MessageFormat.format(content, CommonUtils.uuid());
			// //把properties文件中content的第一个{0} 替换符换成真实内容 发过去

			Session session = MailUtils.createSession(host, authname,
					authpassword); // 获得Session
			Mail mail = new Mail(from, email, subject, signature); // 创建邮件对象
			try {

				MailUtils.send(session, mail); // 发邮件
			} catch (MessagingException e) {
				e.printStackTrace();
				throw new RuntimeException();
			}
			
			errMsg2= "验证码已经发送";
			session1.setAttribute("signature1", signature1);
			session1.setAttribute("username1", username1);
			request.setAttribute("errMsg2",errMsg2);
			System.out.println("111111");
			System.out.println(signature1);
			request.getRequestDispatcher("/alteros.jsp").forward(request,
					response);

			
		}else{
			
			errMsg2= "邮箱或验证码不匹配";
			request.setAttribute("errMsg2",errMsg2);
			request.getRequestDispatcher("/alter.jsp").forward(request,
					response);
		}

	}

}
