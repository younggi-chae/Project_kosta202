package action;

import java.io.File;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.Sell;
import service.Service_kjj;

public class registerSellAction_kjj implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Service_kjj service = Service_kjj.getInstance();
		
		String savePath = "C:\\Users\\82109\\Project-KOSTA\\Architecture-kosta202\\WebContent\\resources\\img\\upload_kjj";
		int sizeLimit = 1024*1024*15;
		MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		
		Sell sell = new Sell();
		sell.setId("testID");
		sell.setItemName(multi.getParameter("ItemName"));
		sell.setKeyword1(multi.getParameter("Keyword1"));
		sell.setKeyword2(multi.getParameter("Keyword2"));
		sell.setKeyword3(multi.getParameter("Keyword3"));
		sell.setType(multi.getParameter("Type"));
		sell.setRegion(multi.getParameter("Region"));
		sell.setItemCondition(multi.getParameter("ItemCondition"));
		sell.setPrice(Integer.parseInt(multi.getParameter("Price")));
		
		System.out.println(multi.getParameter("fileName"));
		
		int categoryNo = -1;
		if (multi.getParameter("BigClassifier").equals("의류")) {
			if (multi.getParameter("MediumClassifier").equals("상의")) {
				categoryNo = 1;
			} else if (multi.getParameter("MediumClassifier").equals("하의")) {
				categoryNo = 2;
			} else if (multi.getParameter("MediumClassifier").equals("악세사리")) {
				categoryNo = 3;
			}
		} else if (multi.getParameter("BigClassifier").equals("가전")) {
			if (multi.getParameter("MediumClassifier").equals("냉장고")) {
				categoryNo = 4;
			} else if (multi.getParameter("MediumClassifier").equals("에어컨")) {
				categoryNo = 5;
			} else if (multi.getParameter("MediumClassifier").equals("세탁기")) {
				categoryNo = 6;
			}
		}
		sell.setCategoryNo(categoryNo);
		
        Enumeration fileNames=multi.getFileNames(); //파일 이름 반환
        boolean save= false; //파일 저장 성공
        
        String fileInput = ""; //폼으로 받아온 fileName
        String fileName = ""; //저장된 파일 이름
        String type = ""; //저장된 파일 종류
        File fileObj = null; //저장된 파일 객체
        String originFileName = ""; //원본 파일 이름
        String fileExtend = ""; //jpg,png,gif 등 확장자
        String fileSize = ""; //저장된 파일 사이즈
        String newFileName = "uploadPic_"+System.currentTimeMillis(); //저장된 파일을 바꿀 이름
        System.out.println("newFileName:"+newFileName);
        
        while (fileNames.hasMoreElements()) {
			fileInput = (String)fileNames.nextElement();
			fileName = multi.getFilesystemName(fileInput);
			if(fileName != null){
	        	save = true;
                type = multi.getContentType(fileInput);
                fileObj = multi.getFile(fileInput);
                originFileName = multi.getOriginalFileName(fileInput);
                fileExtend = fileName.substring(fileName.lastIndexOf(".")+1);//"file1.jpg"라면 jpg 반환
                fileSize = String.valueOf(fileObj.length());//file도 결국 문자열이므로 length()로 반환
                System.out.println("type:"+type+"||originFileName:"+originFileName+
                        "||fileExtend:"+fileExtend+"||fileSize:"+fileSize);
                
                String[] splitType = type.split("/");
                if(!splitType[0].equals("image")){
                    save=false;
                    fileObj.delete(); //저장된 파일 객체로 삭제
                    break;
                }else{//만약 이미지 파일이면 저장 파일의 이름 바꾼다.
                    newFileName += "."+fileExtend;
                    fileObj.renameTo(new File(savePath+"\\"+newFileName));
                }
            }
			
		}
        
        if(save){ //파일 저장 성공시
            sell.setPicture(newFileName);
        } else {
			sell.setPicture(null);
		}
        
		service.registerSell(sell);
		
		return new ActionForward(true, "indexAction.kjj");
	}
	
}
