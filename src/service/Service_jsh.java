package service;


import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import com.sun.imageio.plugins.common.ImageUtil;
import dao.DAO_jsh;
import model.ImageUtil_jsh;
import model.Member;



public class Service_jsh {

	private static Service_jsh service = new Service_jsh();
	private static DAO_jsh dao;
	
	public static Service_jsh getInstance() {
		dao = DAO_jsh.getInstance();
		return service;
	}
	
	public int insertMemberService(HttpServletRequest request)throws Exception{
		request.setCharacterEncoding("utf-8");

				
		Member member = new Member();
		member.setId(request.getParameter("id"));
		member.setPassword(request.getParameter("password"));
		member.setPhoneNo(request.getParameter("phoneNo"));
		member.setAddress(request.getParameter("address"));
		member.setSex(request.getParameter("sex"));
		member.setName(request.getParameter("name"));
		member.setEmail(request.getParameter("email"));

	    
		request.setAttribute("member", member);
		
		
		
		return dao.insertMember(member);
	}

	public int loginService(HttpServletRequest request)throws Exception {

		
		String chk_id = request.getParameter("username");
		String chk_password = request.getParameter("pass");
		
		
		String password2 = dao.loginMember(chk_id);
	
	Member member = dao.getMember(chk_id);
		
		
		
		HttpSession session = request.getSession(true);	
	
		


		if(session.getAttribute("id")!=null) {  //�α��� ����
			String id=(String)session.getAttribute("id");

		}else {
			if(chk_password.equals(password2)) {
				session.setAttribute("id",chk_id);
				//session.setAttribute("member", member);
			
			}
		}
		
		System.out.println(session.getAttribute("id"));
		
		if(chk_password.equals(password2)) {
			return 1;
		}else {
			return 0;
		}
		
		
		
		
		
	
		

		
		
		
	}

	public int detailInfoService(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("utf-8");
		//���Ͼ��ε�(���,����ũ��,���ڵ�,�����̸���ø ��å)

				String uploadPath = request.getRealPath("upload");
				int size = 20*1024*1024; //20MB
				String id = request.getParameter("id");
				String introduction = "";
				introduction=request.getParameter("introduction");
				String picture="";
				
				
			
				
				MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());

				//���Ͼ��ε� DB(�����̸� ����)
				if(multi.getFilesystemName("fname")!=null) {
					picture = (String)multi.getFilesystemName("fname");

					member.setPicture(picture);

					
					//����� �̹���(gif,jpg)=>aa.gif, aa.jpg
					String pattern = picture.substring(picture.indexOf(".")+1);  //gif
					String head = picture.substring(0,picture.indexOf("."));  //aa
					
					//���� File ��ü
					String imagePath = uploadPath+"\\"+picture;
					File src = new File(imagePath);  //�������� ��ü
					
					//����� File ��ü
					String thumPath = uploadPath+"\\"+head+"_small."+pattern;
					File dest = new File(thumPath);
					
					if(pattern.equals("gif")||pattern.equals("jpg")) {
						ImageUtil_jsh.resize(src, dest, 100, ImageUtil_jsh.RATIO);
					}
					

				
				}
				
				return dao.detailInfo(member);
		
	}


	public int chk_idService(String chk_id)throws Exception {
		
		return dao.chk_id(chk_id);
		
	}


}
