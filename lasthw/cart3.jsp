<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
	
	<title>Document</title>
	<script src='https://kit.fontawesome.com/a076d05399.js'></script>
	<style type="text/css" media="screen">
		@import url("asset/c3.css") ;
	</style>
</head>
<body style="background-image: url(img1/background.jpg);height: 1450px;" >
	<div class="top">
				<%
		if (session.getAttribute("member") != null) 
		{
			sql = "SELECT * FROM `member` WHERE id = '" + session.getAttribute("member") + "'";
			ResultSet rs2 = con.createStatement().executeQuery(sql);
												
			if (rs2.next()) 
		    {
												
				String member = rs2.getString(1);
													
		%>
				<li><a href="sign_out.jsp"><button type="button" class="xyz" id="myBtn">歡迎<%=member%>/登出</button></li>
				
				
		<%

		    }
												
			if (session.getAttribute("administrator") != null) 
			{
				sql = "SELECT * FROM `member` WHERE id = '" + session.getAttribute("administrator") + "'";
				ResultSet rs3 = con.createStatement().executeQuery(sql);
													
				if (rs3.next()) 
				{
		%>
					
					<div style="position:absolute;left:1500px;top:0px"><a class="active" href="administrator.jsp"><p class="txthome">管理後台</p></a></div>
					
		<%
				}
				
			}
			
		}
		else
		{
		%>
			<button type="button" class="xyz" id="myBtn">登入</button>

			<!-- The Modal -->
			<div id="myModal" class="modal">
			 
			  <!-- Modal content -->
			  <div class="modal-content">

			    <div class="modal-header">
			      <span class="close">&times;</span>
			      <h2>一般會員登入</h2>
			    </div>
				
				<form  action="sign_in.jsp" method="post">
			    <div class="modal-body">
			      
			      <p>帳號:<input type="text" name="id"></p>
			      <p>密碼:<input onkeyup="value=value.replace(/[\W]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))" type="text" name="pwd"></p>
			        <p>還不是會員?點此<a href="registered.jsp">註冊</a><p>
			    </div>
			    <div class="modal-footer">
			      <button class="abc" >登入</button>
				</form>  
			      
			  </div>
			  </div>

			</div>

			<script>
			// Get the modal
			var modal = document.getElementById("myModal");

			// Get the button that opens the modal
			var btn = document.getElementById("myBtn");

			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];

			// When the user clicks the button, open the modal 
			btn.onclick = function() {
			  modal.style.display = "block";
			}

			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
			  modal.style.display = "none";
			}

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
			  if (event.target == modal) {
			    modal.style.display = "none";
			  }
			}
			</script>
			<%
		}
											
			%>
		<div class="ch2"><a class="active" href="index.jsp"><p class="txthome">主頁</p></a></div>
		<img src="img1/logo.jpg" class="imglogo">
  		<div class="ch3"><a href="index.jsp#a"><p class="txthome">熱銷商品</p></a></div>
  		<div class="ch4"><a href="member.jsp"><p class="txthome1">關於我們</p></a></div>
 		 <div id="menu">
		  <ul>
		    <li> <a href="index1.jsp">商品一覽</a>
		      <ul>
		        <li><a href="index1.jsp">一般造型</a></li>
		        <li><a href="index2.jsp">動物造型</a></li>
		      </ul>
		    </li>
		  </ul>
		</div>
     <div>
      <i style='font-size:54px;position: absolute;left: 1690px;top: 30px;' class='fas'>&#xf217;</i>
      <i style='font-size:54px;position: absolute;left: 1800px;top: 30px;' class='fas'>&#xf406;</i>
      <p style="position:absolute;top: 60px;left: 1690px;font-size: 24px;text-decoration: none;"><a href="cart.jsp" style="color: black;">購物車</a></p>
      

			<!-- The Modal -->
			<div id="myModal" class="modal">
			 
			  <!-- Modal content -->
			  <div class="modal-content">

			    <div class="modal-header">
			      <span class="close">&times;</span>
			      <h2>登入</h2>
			    </div>
			    <div class="modal-body">
			      
			      <p>帳號:<input type="text" name="欄位名稱"></p>
			      <p>密碼:<input type="text" name="欄位名稱"></p>
			        <p>還不是會員?點此<a href="registered.jsp">註冊</a><p>
			    </div>
			    <div class="modal-footer">
			      <button class="abc" >登入</button>
			    </div>
			     
			  </div>

			</div>

			<script>
			// Get the modal
			var modal = document.getElementById("myModal");

			// Get the button that opens the modal
			var btn = document.getElementById("myBtn");

			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];

			// When the user clicks the button, open the modal 
			btn.onclick = function() {
			  modal.style.display = "block";
			}

			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
			  modal.style.display = "none";
			}

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
			  if (event.target == modal) {
			    modal.style.display = "none";
			  }
			}
			</script>

		
     </div>
	</div>

	<div>
		<img src="img1/l4.jpg" style="position: absolute;top: 160px;left: 600px;width: 380px;height: 380px;">
		<p style="padding:5px 200px 5px 5px;background-color: #F5F5F5;position: absolute;top: 140px;left: 1010px;font-size: 40px;color: red;">幽靈小夜燈</p>
		<p style="position: absolute;top: 230px;left: 1010px;font-size: 25px;">這款小夜燈設計很新奇，<br>是以幽靈為原型做成的。<br>幽靈是種恐怖的東西，<br>但把他做成這種萌萌的感覺，有種反差美。</p>
		<p style="font-size: 35px;position:absolute;top: 360px;left: 1010px;">售價：</p>
		<div style="color: red;position: absolute;top: 395px;left: 1110px;font-size: 35px;">$298</div>
		
		
		<%
	
		request.setCharacterEncoding("UTF-8");
		sql="SELECT * From product where id =3";
		ResultSet rs=con.createStatement().executeQuery(sql);
		String price="",pic="";
		if(rs.next())
		{		
			price=rs.getString("price");
		}
		String p_name=rs.getString("name");
		int pid=rs.getInt("id");
		
		
		%>
		
				<form name="shoppingcar" action="shoppingcar.jsp" method="POST">
					
					<input type="hidden" name="name" value="<%=rs.getString("name")%>"/>
					<input type="hidden" name="price" value="<%=rs.getString("price")%>"/>
					<input type="hidden" name="img" value="<%=rs.getString("path")+rs.getString("img")%>"/>	
					<input type="hidden" name="id" value="3"/>	
					<%
									
						Integer amount=0;
						rs=con.createStatement().executeQuery(sql);
						while(rs.next())
						{
							amount=Integer.parseInt(rs.getString("amount"));
						}
						if(amount>0)
						{
					%>
							<p style="font-size: 25px;position:absolute;top: 425px;left: 1015px;">剩餘數量：<%=amount%></p>
							
					<%
										
										
						}
						else
						{
							out.print("庫存不足");
						}
					%>
					
					
					<select name="num" style="font-size: 25px;position:absolute;top: 500px;left: 1015px;">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
					</h4>
					
					<button type="submit"  style="position: absolute;top: 481px;left: 1130px;width: 150px;height: 60px;background-color: red;color: white;font-size: 21px;">加入購物車</button>
				</form>
		
	</div>
	
	
	
	
	
	<%!  	
	public int getRowCount(String sql,Connection con)
	{   
		try{
		  ResultSet tmp = con.createStatement().executeQuery(sql);
		  tmp.last();
		  int row=tmp.getRow();
		  return row;
		}catch(SQLException err){
			System.out.println("class error"+err.toString());
			return 0;
		}
		
	}
    
	%>
	
	
	
	
	
	
	
	
	
	<div>
	
		<hr style="position: absolute;top: 555px;width: 55%;left: 520px;">
        <h2 style="position: absolute;top: 550px;left: 600px;height: 240px;width: 900px;font-size:35px; ">我要評論</h2>
		
		
		
		
		
		
		
       
		<%
		if(session.getAttribute("member")!=null)
		{
		%>
		 <form name="comment" action="addmessage.jsp" method="POST">
			<input type="hidden" name="mid" value="<%=session.getAttribute("member")%>"/>
			<input type="hidden" name="p_name" value="<%=p_name%>"/>
			<input type="hidden" name="pid" value="<%=pid%>"/>
			<input type="hidden" name="account" value="<%=session.getAttribute("member")%>"/>
            
			<textarea name="content" style="position: absolute;top: 670px;left: 600px;height: 240px;width: 900px;font-size:35px; "></textarea>
			
			
			<h2 style="position: absolute;top: 610px;left: 600px;height: 240px;width: 900px;font-size:25px; ">滿意程度 : </h2>

			<h2 id="score_form" style="position: absolute;top: 595px;left: 750px;height: 240px;width: 900px;font-size:35px; ">
				<div class="star_evaluate">
				<input type="radio" id="scoreId_1" class="score score_1" name="score" value="1"/>
				<label for="scoreId_1" class="star star_1"></label>
				<input type="radio" id="scoreId_2" class="score score_2" name="score" value="2"/>
				<label for="scoreId_2" class="star star_2"></label>
				<input type="radio" id="scoreId_3" class="score score_3" name="score" value="3"/>
				<label for="scoreId_3" class="star star_3"></label>
				<input type="radio" id="scoreId_4" class="score score_4" name="score" value="4"/>
				<label for="scoreId_4" class="star star_4"></label>
				<input type="radio" id="scoreId_5" class="score score_5" name="score" value="5"/>
				<label for="scoreId_5" class="star star_5"></label>
				</div>
			</h2>
			
			<button type="submit" style="position:absolute;top: 940px;left: 600px;width: 100px;height: 40px;font-size: 25px;">送出</button>
		</form>	
			<%
		}
		else{
			%>
			<h4 style="letter-spacing: 2px;color: #666;padding: 20px 0px;font-weight: 300">
			<p><a href="index.jsp" style="position: absolute;top: 630px;left: 600px;height: 140px;width: 600px;font-size:35px; ">請先登入會員</a></p>
			</h4>
			<%
		}
		%>
			
        
		
		
		
    </div>
	
	
	
	
	
	
	

	<hr style="position: absolute;top: 990px;width: 55%;left: 520px;">
	<p style="position: absolute;top: 1005px;left: 600px;font-size: 25px;"align="center">商品評論:</p>
	<div>
		<textarea name="content" style="position: absolute;top: 1100px;left: 600px;height: 240px;width: 900px;font-size:35px; overflow-y:scroll;">
	<%
	sql="select * from message where pid='"+pid+"'"+" ORDER BY cid DESC ";
	rs=con.createStatement().executeQuery(sql);
	int a=getRowCount(sql,con);
	if(a>0)
	{
		  
		   sql="SELECT * FROM message where pid='"+pid+"'"+" ORDER BY cid ASC LIMIT ";//LIMIT是限制傳回筆數
           
           
		   while(rs.next())
		   {
	%>   
留言者:<%=rs.getString("macc")%>
留言時間:<%out.print(rs.getString("time"));%> 
評論:<%out.print(rs.getString("content"));%>
			
		<% }%>   
		<% 
		}
		else{%>
           
目前無任何留言!!
			
		<%
        }
		%> 
	</textarea>
    </div>
	
	
	
	
	<div class="txt10">
      <h1 style="text-align: center;">第二十二組製作</h1>
    </div>
</body>
</html>