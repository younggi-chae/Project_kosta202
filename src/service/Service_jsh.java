package service;


import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
	
		

		
		if(session.getAttribute("id")!=null) {  //로그인 상태
			String id=(String)session.getAttribute("id");  //세션에서 가져온 아이디
			//Member member = dao.getMember(id);
			//request.setAttribute("member", member);
		
		}else {
			if(chk_password.equals(password2)) {
				session.setAttribute("id",chk_id);
				//session.setAttribute("member", member);
			
			}
		}
		
		
		
		if(chk_password.equals(password2)) {
			return 1;
		}else {
			return 0;
		}
		
		
		
		
		
	
		

		
		
		
	}

	public int detailInfoService(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("utf-8");
		//파일업로드(경로,파일크기,인코딩,파일이름중첩 정책)
				
		String uploadPath = request.getRealPath("upload");
		int size = 20*1024*1024; //20MB
		
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());

	
				String id = multi.getParameter("id");
				String introduction=multi.getParameter("introduction");
				String picture="";
				
				Member member = new Member();
			
				member.setId(id);
				member.setIntroduction(introduction);
				
				
				//파일업로드 DB(파일이름 저장)
				if(multi.getFilesystemName("fname")!=null) {
					picture = (String)multi.getFilesystemName("fname");
					member.setPicture(picture);
					
					//썸네일 이미지(gif,jpg)=>aa.gif, aa.jpg
					String pattern = picture.substring(picture.indexOf(".")+1);  //gif
					String head = picture.substring(0,picture.indexOf("."));  //aa
					
					//원본 File 객체
					String imagePath = uploadPath+"\\"+picture;
					File src = new File(imagePath);  //원본파일 객체
					
					//썸네일 File 객체
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
