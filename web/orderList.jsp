<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getScheme() + "://" 
			+ request.getServerName() + ":"
			+ request.getServerPort() 
			+ request.getContextPath() + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=path %>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>briup电子商务-首页</title>
<link rel="stylesheet" href="css/common.css"/>
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/icons.css" />
<link rel="stylesheet" href="css/table.css" />
<link rel="stylesheet" type="text/css" href="css/orderlist.css">
</head>
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
        <a href="#"><img src="images/logo.png"></a>
        <div class="h3_center">
            <div class="search_box">
                <input type="text"/>
                <span>搜索</span>
            </div>

        </div>

    </div>
    <!--头部导航-->
    <div class="nav_top">
    	<div class="nav_top_center">
            <div>
                订单列表
            </div>
        </div>
    </div>

    <!--内容-->
    <div class="container4">
        <table>
            <thead>
                <tr>
                    <th>序号</th>
                    <th>订单编号</th>
                    <th>订单金额</th>
                    <th>订单时间</th>
                    <th>收货人</th>
                    <th>支付状态</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach varStatus="vs" items="${requestScope.orderForms }" var="order">
                <tr>
                    <td align="center">${vs.index + 1 }</td>
                    <td>${order.id }</td>
                    <td>${order.cost }</td>
                    <td>${order.orderDate }</td>
                    <td>${order.shopAddress.receiveName }</td>
                    <td>${order.payStatus }
                    <td><input type="button" value="删除" 
                    onclick="javascript:window.location='orderlist.html';">
                    <input type="button" value="明细" 
                    onclick="javascript:window.location='orderDetail.action?order_id=${order.id}';">
                   	
                   	<c:choose>
                   		<c:when test="${order.payStatus == '未支付' }">
                   			<input type="button" value="去支付" 
                    		onclick="window.location.href='pay.action?orderId=${order.id}'" >
                   		</c:when>
                   		<c:otherwise>
                   			<input type="button" value="已支付" disabled="disabled">
                   		</c:otherwise>
                   	</c:choose>
                   
                    
                    </td>
                </tr>
            </c:forEach>
               <!--  <tr>
                    <td align="center">1</td>
                    <td>2000-2902</td>
                    <td>234</td>
                    <td>未付款</td>
                    <td>tom</td>
                    <td><input type="button" value="删除" onclick="javascript:window.location='orderlist.html';"><input type="button" value="明细" onclick="javascript:window.location='orderdetail.html';">  </td>
                </tr>
                <tr>
                    <td align="center">1</td>
                    <td>2000-2903</td>
                    <td>234</td>
                    <td>未付款</td>
                    <td>tom</td>
                    <td><input type="button" value="删除" onclick="javascript:window.location='orderlist.html';"><input type="button" value="明细" onclick="javascript:window.location='orderdetail.html';">  </td>
                </tr>
                <tr>
                    <td align="center">1</td>
                    <td>2000-2904</td>
                    <td>234</td>
                    <td>未付款</td>
                    <td>tom</td>
                    <td><input type="button" value="删除" onclick="javascript:window.location='orderlist.html';"><input type="button" value="明细" onclick="javascript:window.location='orderdetail.html';">  </td>
                </tr>
                <tr>
                    <td align="center">1</td>
                    <td>2000-2905</td>
                    <td>234</td>
                    <td>未付款</td>
                    <td>tom</td>
                    <td><input type="button" value="删除" onclick="javascript:window.location='orderlist.html';"><input type="button" value="明细" onclick="javascript:window.location='orderdetail.html';">  </td>
                </tr>
                <tr>
                    <td align="center">1</td>
                    <td>2000-2906</td>
                    <td>234</td>
                    <td>未付款</td>
                    <td>tom</td>
                    <td><input type="button" value="删除" onclick="javascript:window.location='orderlist.html';"><input type="button" value="明细" onclick="javascript:window.location='orderdetail.html';">  </td>
                </tr> -->
            </tbody>
        </table>

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
                	<h1>客服中心</h1>
                    <img src="images/qrcode_jprj.jpg" width="80px" height="80px">
                    <p>抢红包、疑问咨询、优惠活动</p>
                </li>
            </ul>
        </div>
         <div class="f3_bottom">
        	<p class="f3_links">
                <a href="#">关于我们</a>|
                <a href="#">联系我们</a>|
                <a href="#">友情链接</a>|
                <a href="#">供货商入驻</a>
           	</p>
            <p>沪ICP备14033591号-8 杰普briup.com版权所有 杰普软件科技有限公司 </p>
          	<img src="images/police.png">
        </div>
    </div>

</body>
</html>

</body>
</html>