<!DOCTYPE html>
<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="utf-8"%>
<%@include file="config.jsp" %>	
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	 <script src='https://kit.fontawesome.com/a076d05399.js'></script>
	<style>
@import url("asset/m1.css") ;
	</style>
</head>
<body >
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
					
					<div class="ch5"><a class="active" href="administrator.jsp"><p class="txthome">管理後台</p></a></div>
					
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
  		<div style="position:absolute;left:1100px;top:20px;"><a href="index.jsp#a"><p class="txthome">熱銷商品</p></a></div>
  		<div style="position:absolute;left:200px;top:0px" ><a href="member.jsp"><p class="txthome1">關於我們</p></a></div>
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
      <i style='font-size:42px;position: absolute;left: 1800px;top: 30px;' class='fas'>&#xf406;</i>
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

 <div style="background-color: #FF8800;width: 75%;height: 1240px;position: absolute;left: 200px;top:80px;">

 <div class="img_div" style=" top: 180px;left: -280px;">
    <img src="picture/p1.jpg" style="border-style: solid;border-width: 5px;border-color: red;">
        <a href="#">
            <div class="mask">
               <p style="text-align: center;font-size: 40px;color: red;font-weight: bold;font-weight: bold;">資管二甲</p>
               <p style="position: absolute;left: 15px;font-size: 25px;color: red;top: 100px;font-weight: bold;">姓名：王昭舜</p>
               <p style="position: absolute;left: 15px;font-size: 25px;top: 150px;color: red;font-weight: bold;">分工：網頁排版、網頁雛形</p>
               <p style="position: absolute;left: 15px;font-size: 25px;top: 230px;color: red;font-weight: bold;">心得：這次的期末專案比起以前要複雜的許多，以往我們只須注意自己前端設計的版面，但這次需要與乙班配合來呈現有購物功能的網頁，真的非常有趣。</p>
                </div>
        </a>
 </div>

 <div class="img_div" style=" top: -195px;left: 450px;">
    <img src="picture/3.jpg" style="border-style: solid;border-width: 5px;border-color: red;">
        <a href="#">
            <div class="mask">
               <p style="text-align: center;font-size: 40px;color: red;font-weight: bold;font-weight: bold;">資管二甲</p>
               <p style="position: absolute;left: 15px;font-size: 25px;color: red;top: 100px;font-weight: bold;">姓名：盧啟輝</p>
               <p style="position: absolute;left: 15px;font-size: 25px;top: 150px;color: red;font-weight: bold;">分工：設計主題、設計圖案</p>
               <p style="position: absolute;left: 15px;font-size: 25px;top: 230px;color: red;font-weight: bold;">心得：這次的期末專案不僅需要我們做一個購物網頁，還需要也乙班同學一起合作。通過這個專案，我發現和解決了很多的問題，得到了成長。</p>
                </div>
        </a>
 </div>

 <div class="img_div" style=" top:-10px;left: -280px;">
    <img src="picture/76227.jpg" style="border-style: solid;border-width: 5px;border-color: red;">
        <a href="#">
            <div class="mask">
               <p style="text-align: center;font-size: 40px;color: red;font-weight: bold;font-weight: bold;">資管二乙</p>
               <p style="position: absolute;left: 15px;font-size: 25px;color: red;top: 100px;font-weight: bold;">姓名:潘冠宇</p>
               <p style="position: absolute;left: 15px;font-size: 25px;top: 150px;color: red;font-weight: bold;">分工：後端設計和編寫</p>
               <p style="position: absolute;left: 15px;font-size: 25px;top: 230px;color: red;font-weight: bold;">心得：這學期網程的課程，透過邊問邊學我也學到很多，也非常感謝老師這學期的指導</p>
                </div>
        </a>
 </div>

 <div class="img_div" style=" top:-385px;left: 450px;">
    <img src="picture/P4.jpg" style="border-style: solid;border-width: 5px;border-color: red;">
        <a href="#">
            <div class="mask">
               <p style="text-align: center;font-size: 40px;color: red;font-weight: bold;">資管二乙</p>
               <p style="position: absolute;left: 15px;font-size: 25px;color: red;top: 100px;font-weight: bold;">姓名：梁元泰</p>
               <p style="position: absolute;left: 15px;font-size: 25px;top: 150px;color: red;font-weight: bold;">分工：後端設計和編寫</p>
               <p style="position: absolute;left: 15px;font-size: 25px;top: 230px;color: red;font-weight: bold;">心得：這一學期的作業與課後練習加強了我們對上述知識的掌握並在最後的期末專題中也是鞏固和提升了我們的程式功底收穫頗多</p>
                </div>
        </a>
 </div>
 <div style="position: absolute;top: 0px;left: 400px;font-size: 65px;font-weight: bold;color:#00DB00 ;text-shadow: 3px 2px #EBEB00;">
  <p>夜空中最亮的星</p>
 </div>
 <img src="picture/light1.jpg" style="position:absolute;top: 50px;left:900px;">
 </div>
 

 
 <button style="position:absolute;top: 1400px;left: 850px;width: 200px;height: 60px;font-size: 25px;background-color: yellow;"><a href="index.jsp">返回首頁</a></button>
</body>
</html>