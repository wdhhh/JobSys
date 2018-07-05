    <%@page import="java.io.FileInputStream"%>  
    <%@page import="java.io.OutputStream"%>  
    <%@page import="java.net.URLEncoder"%>  
    <%@page language="java" contentType="application/x-msdownload" pageEncoding="UTF-8"%>  
   <%  
   String file = request.getParameter("filename");
       response.reset();//可以加也可以不加  
       response.setContentType("application/x-download");  
      String filedownload = request.getRealPath("/file/"+file);  
    System.out.println(filedownload);  
      String filedisplay = file;  
      filedisplay = URLEncoder.encode(filedisplay, "UTF-8");  
   response.addHeader("Content-Disposition", "attachment;filename=" + filedisplay);  
       OutputStream outp = null;  
     FileInputStream in = null;  
        try {  
         outp = response.getOutputStream();  
           in = new FileInputStream(filedownload);  
   
          byte[] b = new byte[1024];  
           int i = 0;  
     
          while ((i = in.read(b)) > 0) {  
               outp.write(b, 0, i);  
           }  
            outp.flush();  
        } catch (Exception e) {  
            System.out.println("Error!");  
            e.printStackTrace();  
        } finally {  
            if (in != null) {  
                in.close();  
                in = null;  
          }  
          if (outp != null) {  
               outp.close();  
                outp = null;  
              // tomcat5下jsp出现getOutputStream() has already been called for this response异常的原因和解决方法  
               out.clear();  
               out = pageContext.pushBody();  
            }  
       }  
   %>  