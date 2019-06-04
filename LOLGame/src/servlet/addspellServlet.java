package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import model.Heroinfo;
import model.Iteminfo;
import model.Spellinfo;
import dao.HeroDAO;
import dao.ItemDAO;
import dao.SpellDAO;

public class addspellServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletConfig config;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg = null;
		request.setCharacterEncoding("utf-8");
		System.out.println("in register.do!!!");
		try {
			// 创建SmartUpload对象
			SmartUpload mySmartUpload = new SmartUpload();
			// 初始化SmartUpload对象
			mySmartUpload.initialize(config, request, response);
			// 限制上传文件的大小为200KB
			mySmartUpload.setMaxFileSize(200 * 1024);// 单位：byte
			// 设置允许上传的文件类型
			mySmartUpload
					.setAllowedFilesList("jpg,jpeg,gif,bmp,png,JPG,JPEG,GIF,BMP,PNG");
			// 设置禁止上传的文件类型
			mySmartUpload.setDeniedFilesList("exe,bat,jsp,htm,html");
			// 上传文件
			mySmartUpload.upload();
			// 获取上传的文件，由于只上传一个文件，所以索引为0
			com.jspsmart.upload.File myFile = mySmartUpload.getFiles().getFile(
					0);
			String fileExt = "";
			String fileName = "";
			// 下面代码处理文件上传
			if (myFile != null && !myFile.isMissing()) {
				fileExt = myFile.getFileExt(); // 获取上传文件的扩展名
				if (fileExt == null)
					fileExt = "jpg"; // 如果扩展名不存在，则为其赋值jpg作为文件的默认扩展名
				// UUID.randomUUID()
				// fileName=FileUtil.getNewFileName(fileExt); //获取图片文件的新名称，以免重名
				fileName = UUID.randomUUID() + "." + fileExt;
				System.out.println(fileName);
				System.out.println(request.getContextPath() + "/image/spell/"
						+ fileName);
				// 将上传的文件保存到指定路径处
				myFile.saveAs("/image/spell/" + fileName,
						SmartUpload.SAVE_VIRTUAL);
				msg = "文件上传成功!";
				request.setAttribute("imgFileName", fileName);
			} else {
				msg = "上传文件不存在！";
			}
			System.out.println(msg);
			//
			com.jspsmart.upload.Request req = mySmartUpload.getRequest();
			Spellinfo sp = new Spellinfo();
			sp.setName(req.getParameter("namexxx"));
			sp.setPicture(fileName);
			SpellDAO spellDAO = new SpellDAO();
			spellDAO.insertintospell(sp);
			// request.setAttribute("list", spellDAO.getAllSpellinfo());

			// request.setAttribute("list", heroDAO.getAllHeroinfo());

		} catch (SmartUploadException ex) {
			msg = "上传文件失败！";
		} catch (SecurityException e) {
			msg = "只能上传200K以内的图像文件";
		} catch (SQLException e) {
			// e.printStackTrace();
			msg = "数据库操作失败";
		} finally {

			request.getRequestDispatcher("gameinfo.jsp").forward(request,
					response);

		}
	}

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		this.config = config;
	}

}
