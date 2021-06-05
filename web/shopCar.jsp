<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<base href="<%=path%>">
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>购物车页面</title>
<link rel="stylesheet" href="css/fullCar.css" />
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/icons.css" />
<link rel="stylesheet" href="css/table.css" />
<link rel="stylesheet" type="text/css" href="css/shopCar.css">
<script type="text/javascript">

	function modify(formIndex) {
		// 把表单提交的路径改为modifyShopCar.action
		var form = document.getElementById('form' + formIndex);
		form.action = 'modifyShopCar.action';
		form.submit();
	}
	function cancel(formIndex) {
		// 把表单提交的路径改为cancelShopCar.action
		var form = document.getElementById('form' + formIndex);
		form.action = 'cancelShopCar.action';
		form.submit();
	}
</script>
</head>

<c:if test="${empty sessionScope.shopCar || sessionScope.shopCar.emptyStatus == true }">
	<jsp:forward page="emptyCar.jsp"></jsp:forward>
</c:if>


<body>
	<!--顶部-->
	<div class="top">
    	<div class="top_center">
    	<ul>
			<li>
				<c:choose>
				<c:when test="${empty sessionScope.customer }">
					<span><a style="color: red; width:200px;float: left;" href="login.jsp">亲，请登录！</a></span>
				</c:when>
				<c:otherwise>
					<span style="width: 200px;float: left;">欢迎您，${sessionScope.customer.name} !</span>
				</c:otherwise>
			</c:choose>
		</li>
	</ul>
            <ul class="top_bars">
            	<li><a href=
				<c:choose>
					<c:when test="${not empty sessionScope.customer }">
						"logout.action"
					</c:when>
					<c:otherwise>
						"#"
					</c:otherwise>
				</c:choose>
			>退出</a>|</li>
                <li><a href="listOrderForms.action">我的订单<span class="jt_down"></span></a>|</li>
                <li><a href="#">关注杰普<span class="jt_down"></span></a>|</li>
                <li><a href="#">网站导航<span class="jt_down"></span></a></li>
            </ul>
        </div>
    </div>
	<!--头部-->
	<div class="header3">
		<a href="#"><img src="images/logo.png" class="oneImg"></a>


		<div class="h3_right">
			<img src="images/play_03.png" alt="">
		</div>

	</div>
	<!--中间部分div-->
	<div class="empty">
		<div class="peisong">
			<pre>全部商品  ${sessionScope.shopCar.totalNumber } </pre>
		</div>
		<div class="mainCenter">
			<div class="allCheck">
				<input type="checkbox">
				<p>全选</p>
				<p class="leftM">商品</p>
				<p class="rightM">单价(元)</p>
				<p class="leftM">数量</p>
				<p class="leftM">小计(元)</p>
				<p class="leftM">操作</p>
			</div>
			<div class="mainPro">
				<div class="aa">
					<input type="checkbox"><span id="but">自营</span>
				</div>

				<c:forEach varStatus="vs" items="${sessionScope.shopCar.lines }"
					var="entry">
					<form id="form${vs.index }" action="modifyShopCar.action">
						<input type="hidden" value="${entry.value.book.id }"
							name="book_id">
						<table>
							<tbody>
								<tr>
									<td class="index"><input type="checkbox">
										${vs.index + 1 }</td>
									<td><img src="images/1.png"> <span>
											${entry.value.book.name } <br>
									</span></td>
									<td><span>¥${entry.value.book.price }</span></td>
									<td class="index2"><input type="text" name="num"
										value="${entry.value.number }"><br> <span>有货</span>
									</td>
									<td><span>¥${entry.value.totalPrice }</span></td>
									<td>
										<!-- 默认就是提交按钮 -->
										<button type="button" onclick="modify(${vs.index})">保存</button>
										<button type="button" onclick="cancel(${vs.index})">取消</button>
									</td>
								</tr>
							</tbody>
						</table>
					</form>
				</c:forEach>

				<!--  <form>
               <table>
                   <tbody>
                       <tr>
                           <td class="index">1</td>
                           <td>
                               <img src="images/1.png" >
                                <span>
                                   Effective JAVA
                                   <br>
                               </span>
                            </td>
                           <td>
                               <span>¥66.00</span>
                           </td>
                           <td class="index2">
                               <input type="text" name="num" value="1"><br>
                               <span>有货</span>
                           </td>
                           <td>
                               <span>¥66.00</span>
                           </td>
                           <td>
                               <button>保存</button>
                               <button>取消</button>
                           </td>
                       </tr>
                   </tbody>
               </table>
		</form> <form>
               <table>
                   <tbody>
                       <tr>
                           <td class="index">1</td>
                           <td>
                               <img src="images/1.png" >
                                <span>
                                   Effective JAVA
                                   <br>
                               </span>
                            </td>
                           <td>
                               <span>¥66.00</span>
                           </td>
                           <td class="index2">
                               <input type="text" name="num" value="1"><br>
                               <span>有货</span>
                           </td>
                           <td>
                               <span>¥66.00</span>
                           </td>
                           <td>
                               <button>保存</button>
                               <button>取消</button>
                           </td>
                       </tr>
                   </tbody>
               </table>
		</form>
-->
				<!-- <div class="min_content">
                  <div class="bb">
                   <input type="text" >
                   <img src="images/1.png" >
                    <span>
                       Effective JAVA
                       <br>
                   </span>
                   <div class="mm">
                       <span>¥66.00</span>
                   </div>
                   <img src="images/have_03.png" style="margin-top:40px">
                   <div class="ri">¥66.00元</div>
                   <div class="righ">
                        <div class="rig">删除</div>
                   </div>
               </div>

-->
				<!-- <div class="bb">
             <input type="checkbox" >
             <img src="images/1.png" >
              <span>
                 Effective JAVA
                 <br>
             </span>
             <div class="mm">
                 <span>¥66.00</span>
             </div>
             <img src="images/have_03.png" style="margin-top:40px">
             <div class="ri">¥66.00元</div>
             <div class="righ">
                  <div class="rig">删除</div>
             </div>
         </div> -->
			</div>
			<div class="allButtom">
				<!-- <p class="caozuo">去结算</p> -->
				<!-- <input value="去提交" class="caozuo" type="submit"> -->
				<a href="confirm.jsp" class="caozuo">去提交</a> <span>已选择<font>${sessionScope.shopCar.totalNumber }</font>件商品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总价(不含运费)：<font>¥${sessionScope.shopCar.totalPrice }元</font></span>
			</div>
		</div>
	</div>


	<!--脚部-->
	<div class="footer3">
		<div class="f3_top">
			<div class="f3_center">
				<div class="ts1">品目繁多 愉悦购物</div>
				<div class="ts2">正品保障 天天低价</div>
				<div class="ts3">极速物流 特色定制</div>
				<div class="ts4">优质服务 以客为尊</div>
			</div>
		</div>
		<div class="f3_middle">
			<ul class="f3_center">
				<li class="f3_mi_li01">
					<h1>购物指南</h1>
					<p>常见问题</p>
					<p>找回密码</p>
					<p>会员介绍</p>
					<p>购物演示</p>
				</li>
				<li class="f3_mi_li01">
					<h1>配送方式</h1>
					<p>常见问题</p>
					<p>找回密码</p>
					<p>会员介绍</p>
					<p>购物演示</p>
				</li>
				<li class="f3_mi_li01">
					<h1>支付方式</h1>
					<p>常见问题</p>
					<p>找回密码</p>
					<p>会员介绍</p>
					<p>购物演示</p>
				</li>
				<li class="f3_mi_li01">
					<h1>售后服务</h1>
					<p>常见问题</p>
					<p>找回密码</p>
					<p>会员介绍</p>
					<p>购物演示</p>
				</li>
				<li class="f3_mi_li01">
					<h1>服务保障</h1>
					<p>常见问题</p>
					<p>找回密码</p>
					<p>会员介绍</p>
					<p>购物演示</p>
				</li>
				<li class="f3_mi_li06">
					<h1>客服中心</h1> <img src="images/qrcode_jprj.jpg" width="80px"
					height="80px">
					<p>抢红包、疑问咨询、优惠活动</p>
				</li>
			</ul>
		</div>
		<div class="f3_bottom">
			<p class="f3_links">
				<a href="#">关于我们</a>| <a href="#">联系我们</a>| <a href="#">友情链接</a>| <a
					href="#">供货商入驻</a>
			</p>
			<p>沪ICP备14033591号-8 杰普软件briup.com版权所有 杰普软件科技有限公司</p>
			<img src="images/police.png">
		</div>
	</div>
</body>
</html>