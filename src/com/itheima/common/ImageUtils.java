package com.itheima.common;

import java.io.File;
import java.io.IOException;
import java.util.*;
 
import javax.servlet.http.HttpServletRequest;
 
import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

public class ImageUtils {
	public static String upload(HttpServletRequest request,
			MultipartFile pictureFile) throws IOException {
		String imgPath = null;//装配后的图片地址
		//上传图片
		if(pictureFile!=null&&!pictureFile.isEmpty()){
			// 使用UUID给图片重命名，并去掉四个“-”
			String name = UUID.randomUUID().toString().replaceAll("-", "");
			// 获取文件的扩展名
			String ext = FilenameUtils.getExtension(pictureFile
					.getOriginalFilename());
			// 设置图片上传路径
			String url = request.getSession().getServletContext()
					.getRealPath("/upload");
			// 检验文件夹是否存在
			isFolderExists(url);
			// 以绝对路径保存重名命后的图片
			pictureFile.transferTo(new File(url + "/" + name + "." + ext));
			// 装配图片地址
			imgPath = "upload/" + name + "." + ext;
		}
		return imgPath;
	}
	/**
	 * 验证文件夹是否存在
	 * @param strFolder
	 * @return
	 */
	public static boolean isFolderExists(String strFolder){
           File file = new File(strFolder);
        
           if (!file.exists())
           {
              if (file.mkdir())
              {
                  return true;
              }
              else{
                  return false;
              }
               
           }
           System.out.println("-----------------文件上传路径："+strFolder);
           return true;
       }
}
