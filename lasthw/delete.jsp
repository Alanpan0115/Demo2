﻿<%@page contentType="text/html" pageEncoding="utf-8"%>
<!-- Step 0: import library -->
<%@ page import = "java.sql.*" %> 
<html>
    <head>
        <title>刪除商品</title>
    </head>
    <body>
       
	   <%  
	   request.setCharacterEncoding("utf-8");
//Step 1: 載入資料庫驅動程式 		
        
            Class.forName("com.mysql.jdbc.Driver");	  
            
//Step 2: 建立連線
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
	        	if(con.isClosed())
                    out.println("連線建立失敗");
                else
                    {	
//Step 3: 選擇資料庫	
                    con.createStatement().execute("USE lasthw");
//Step 4: 執行 SQL 指令
                    String sql = "DELETE FROM product WHERE id = "+request.getParameter("deleteproduct");
                    int rec = con.createStatement().executeUpdate(sql);
//Step 5: 顯示結果 
                    if (rec>0)
					out.print("<script>");
					out.print("alert('刪除成功')");
					out.print("</script>");
					response.setHeader("refresh","3;url=administrator.jsp");
//Step 6: 關閉連線                                      
					con.close();
                    }
                              
            
       %>
    </body>
</html>
