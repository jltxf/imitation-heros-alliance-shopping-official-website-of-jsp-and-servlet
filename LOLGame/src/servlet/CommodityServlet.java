package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Commodity;
import model.FileUtil;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import dao.CommodityDAO;

public class CommodityServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ServletConfig config;
	String obj="";
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg = null;
		request.setCharacterEncoding("utf-8");
		System.out.println("in CommodityServlet!!!");
		try {
			// 创建SmartUpload对象
			SmartUpload mySmartUpload = new SmartUpload();
			// 初始化SmartUpload对象
			mySmartUpload.initialize(config, request, response);
			// 限制上传文件的大小为500KB
			mySmartUpload.setMaxFileSize(500 * 1024);// 单位：byte
			// 设置允许上传的文件类型 文件的后缀（二选一）
			mySmartUpload
					.setAllowedFilesList("jpg,jpeg,gif,bmp,png,JPG,JPEG,GIF,BMP,PNG");
			// 设置禁止上传的文件类型 文件的后缀
			mySmartUpload.setDeniedFilesList("exe,bat,jsp,htm,html");
			// 上传文件 被封装到mySmartUpload组件里
			mySmartUpload.upload();
			System.out.println("sssss");
			// 获取上传的文件，由于只上传一个文件，所以索引为0
			com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(0);
			// mySmartUpload.getFiles()所有的文件在里面
			 com.jspsmart.upload.File myFile1 = mySmartUpload.getFiles()
			 .getFile(1);

			String fileExt = "";
			String fileName = "";
			// 下面代码处理文件上传
			if (myFile != null && !myFile.isMissing()) {// .isMissing()上传文件缺失
				fileExt = myFile.getFileExt(); // 获取上传文件的扩展名
				if (fileExt == null)
					fileExt = "jpg"; // 如果扩展名不存在，则为其赋值jpg作为文件的默认扩展名
				// UUID.randomUUID() java自动生成16进制字符串

				 fileName=UUID.randomUUID()+"."+fileExt;
				//fileName = FileUtil.getNewFileName(fileExt); // 获取图片文件的新名称，以免重名
				System.out.println(fileName);
				System.out.println(request.getContextPath()
						+ "/image/commodity/" + fileName);// 生成存放地址
				// 将上传的文件保存到指定路径处
				myFile.saveAs("/image/commodity/" + fileName,
						SmartUpload.SAVE_VIRTUAL);// SAVE_VIRTUAL当前网站根目录
				msg = "文件上传成功!";
			} else {
				msg = "上传文件不存在！";
			}
			System.out.println(msg);

			String fileExt1 = "";
			String fileName1 = "";
			if (myFile1 != null && !myFile1.isMissing()) {// .isMissing()上传文件缺失
				fileExt1 = myFile1.getFileExt(); // 获取上传文件的扩展名
				if (fileExt1 == null)
					fileExt1 = "jpg"; // 如果扩展名不存在，则为其赋值jpg作为文件的默认扩展名
				// UUID.randomUUID() java自动生成16进制字符串
				fileName1=UUID.randomUUID()+"."+fileExt;
				//fileName1 = FileUtil.getNewFileName(fileExt1); // 获取图片文件的新名称，以免重名
				System.out.println(fileName1);
				System.out.println(request.getContextPath()
						+ "/image/commodity/" + fileName1);// 生成存放地址
				// 将上传的文件保存到指定路径处
				myFile1.saveAs("/image/commodity/" + fileName1,
						SmartUpload.SAVE_VIRTUAL);// SAVE_VIRTUAL当前网站根目录
				msg = "文件上传成功!";
			} else {
				msg = "上传文件不存在！";
			}

			// 以上为上传文件代码，接下来要获取表单数据，将其保存到数据库中

			com.jspsmart.upload.Request req = mySmartUpload.getRequest();// 得到请求对象
			/*
			 * com.jspsmart.upload.组件里面自带的request对象，内容request从mySmartUpload.
			 * getRequest()，组件里面获取
			 */
			String name = req.getParameter("name");
			float price = Float.parseFloat(req.getParameter("price"));
			int number = Integer.parseInt(req.getParameter("number"));
			String classify = req.getParameter("classify");
			String classify1 = req.getParameter("classify1");
			String webpagename = request.getParameter("webpagename");
			//obj = webpagename.replaceAll("/|/", "");// 去除/
			
			int cell = 0;
			int evaluation = 0;
			int collect = 0;

			CommodityDAO co = new CommodityDAO();
			int i = 0;
			List<Commodity> list = co.getAllCommodity();
			for (Commodity c : list) {
				if (i <= c.getId()) {
					i = c.getId();
				}
			}
			i += 1;
			Commodity c = new Commodity(i, name, price, number, cell,
					evaluation, collect, fileName, fileName1, classify,
					classify1);
			int d = co.insertCommdity(c);
			if (d == 0) {
				msg = "新增失败！";
			}
			msg ="新增";
		} catch (SmartUploadException ex) {
			msg = "上传文件失败！";
		} catch (SecurityException e) {
			msg = "只能上传500K以内的图像文件";
		} catch (SQLException e) {
			// e.printStackTrace();
			msg = "数据库操作失败";
		} finally {
			System.out.println(msg);
			request.setAttribute("msg", msg);
			request.setAttribute("obj", obj);
			request.getRequestDispatcher("success1.jsp").forward(request,
					response);
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		this.config = config;
	}
}
