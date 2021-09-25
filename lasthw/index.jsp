<%@ page import = "java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="utf-8"%>
<%@include file="config.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>首頁</title>
  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
	<style>
	@import url("asset/index.css") ;
	</style>
</head>
<body>
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
      <i style='font-size:40px;position: absolute;left: 1690px;top: 30px;' class='fas'>&#xf217;</i>
      <i style='font-size:40px;position: absolute;left: 1800px;top: 30px;' class='fas'>&#xf406;</i>
      <p style="position:absolute;top: 60px;left: 1680px;font-size: 24px;text-decoration: none;"><a href="cart.jsp" style="color: black;">購物車</a></p>
     
     </div>
	</div>
     


  /*幻燈片*/
  <div class="slideshow-container">

  <div class="mySlides">
    <img src="img1/t1.jpg"  >
  </div>

  <div class="mySlides">
    <img src="img1/t2.jpg" >
  </div>

  <div class="mySlides">
    <img src="img1/t3.jpg"  >
  </div>
  <div class="one">燈，有時是種照明工具，</div> 
  <div class="two">它也是黑暗環境下的唯一精神支柱。</div> 
  <div class="three">燈那頗栗的青色閃光，</div>
  <div class="four">奪去了半夜的月亮和星星的不必要的光輝。</div>
  <a class="prev" onclick="changeSlides(-1)">&#10094;</a>
  <a class="next" onclick="changeSlides(1)">&#10095;</a>

  </div>

    <script>
    var slideIndex = 1;
    showSlides(slideIndex);
    function changeSlides(n) {
      showSlides(slideIndex += n);
    }
    function showSlides(n) {
      var slides = document.getElementsByClassName("mySlides");
      if (n > slides.length) {slideIndex = 1}    
      if (n < 1) {slideIndex = slides.length}
      
      for (var i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
      }
      slides[slideIndex-1].style.display = "block";  
    }
    </script>

    <div style="background-color: #FFD78C;height: 1140px;" id="a">
      <div class="txt1">熱銷商品推薦</div>
     
<div style="position: absolute;top: 1200px;">
      <div class="responsive">
    <div class="gallery">
        <a target="_blank" href="img1/l1.jpg">
          <img src="img1/l1.jpg" alt="Cinque Terre" width="600" height="400">
        </a>
        <div class="desc">每個孩子小時候都有個公主王子夢，這款小夜燈是不是和大家夢裡的場景似曾相識呢。快來選擇它來滿足兒時的夢想吧！！</div>
        <a href="cart1.jsp" style="color: white;"><button style="position:absolute;top: 570px;left: 120px;">購買</button></a>
      </div>
    </div>

        <div class="responsive">
      <div class="gallery">
        <a target="_blank" href="img1/t1.jpg">
          <img src="img1/t1.jpg" alt="Forest" width="600" height="400">
        </a>
        <div class="desc">當你睡覺前看一眼這個無比可愛的小兔子，心情是不是都會好起來，相信它定會帶給你一個好夢。</div>
        <a href="cart4.jsp" style="color: white;"><button style="position:absolute;top: 570px;left: 610px;">購買</button></a>
      </div>
    </div>

    <div class="responsive">
      <div class="gallery">
        <a target="_blank" href="img1/l3.jpg">
          <img src="img1/l3.jpg" alt="Northern Lights" width="600" height="400">
        </a>
        <div class="desc">第一眼看到這個小狗的時候，心都要被萌化了。它就安靜的趴在桌子上，守護著你，讓你享受一個安靜美好的夜晚。</div>
        <a href="cart2.jsp" style="color: white;"><button style="position:absolute;top: 570px;left: 1075px;">購買</button></a>
      </div>
    </div>

    <div class="responsive">
      <div class="gallery">
        <a target="_blank" href="img1/l4.jpg">
          <img src="img1/l4.jpg" alt="Mountains" width="600" height="400">
        </a>
        <div class="desc">這款小夜燈設計很新奇，是以幽靈為原型做成的。幽靈是種恐怖的東西，但把他做成這種萌萌的感覺，有種反差美。</div>
       <a href="cart3.jsp" style="color: white;"> <button style="position:absolute;top: 570px;left: 1550px;">購買</button></a>
      </div>
    </div>
    <div style="position: absolute;top: 60px;left: 0px;">
      <button ><a href="index1.jsp">查看更多商品</a></button>
    </div>
        
</div>

    <div class="txt10">
      <h1>第二十二組製作</h1>
      
		<h1>
	 <%
		String sql1 = "SELECT count FROM counter" ; 
		ResultSet rs =  con.createStatement().executeQuery(sql1);
		rs.next();
		int count=rs.getInt("count");
					
									
		if(session.isNew()){
			count++;
						 
			sql = "UPDATE counter SET count="+String.valueOf(count);
			con.createStatement().executeUpdate(sql);
						 
						 
		} 
        out.print("你是第"+count+"位訪客");
		con.close();
	%>			
	  </h1>
    </div>
	
	
</body>
</html>
