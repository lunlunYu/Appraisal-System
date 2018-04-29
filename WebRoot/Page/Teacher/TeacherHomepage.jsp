<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML> 
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>TeacherHomepage</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	
	<link href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.css" rel="stylesheet">
	
	<!-- treeview 
	<link rel="stylesheet" type="./text/css" href="treecss/default.css">
    <link href="./treecss/bootstrap.min.css" rel="stylesheet">
	 -->
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	 
	<!-- 可选的Bootstrap主题文件（一般不使用） -->
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">var a = $.noConflict(true);</script>
	 
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js">var b = $.noConflict(true);</script>
	 
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js">var c = $.noConflict(true);</script>

	<link rel="stylesheet" href="./Page/Teacher/TeaHom.css" type="text/css"/>
	
	
	
	<%
	response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
	response.setHeader("Pragma","no-cache"); //HTTP 1.0
	response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
	%>
	
  </head>
  
<body>
    <header class="container">
		<div class="row" style="height:100%;margin:0;">
			<div class="logo hidden-xs col-sm-2 col-md-2 col-lg-2">
				<img src="./IMAGES/Logo.png" style="width:100%;height:100%;">
			</div>
			
			<div class="head-bar col-sm-10 col-md-10 col-lg-10">
				<div class="row">
					<div class="breadcrumbs col-xs-10 col-sm-10 col-md-10 col-lg-10">
						<a href="http://www.runoob.com/bootstrap/bootstrap-breadcrumbs.html" target="_balnk">bootstrap 面包屑导航</a>
			
					</div>
					
					<div class="logout col-xs-2 col-sm-2 col-md-2 col-lg-2">
						<a class="glyphicon glyphicon-off" href="http://localhost:8080/test/LogOut.jsp" target="_top" title="退出">LogOut</a>
			
					</div>
					
				</div>
			</div>
		</div>
	</header>
	
	<div class="container">
		<div class="row" style="margin:0;">
			<div class="left-bar col-sm-2 col-md-2 col-lg-2">
				<div class="cardcase hidden-xs">
					
						<div class="photo visible-md visible-lg">
							<img src="./IMAGES/photo.jpg" class="img-circle img-thumbnail">
						</div>
						
						<div class="photo-sm visible-xs visible-sm">
							<img src="./IMAGES/photo.jpg" class="img-circle img-thumbnail">
						</div>
						
						<div class="infor hidden-xs hidden-sm">
							<br>
							<p>胡汉三</p>
							<p>副教授</p>
							<p>教学科研型</p>
						</div>
					
				</div>
				
				<div class="tree">
					<div id="treeview2" class="">
                    </div>
				</div>
			</div>
			
			<div class="right-bar col-sm-10 col-md-10 col-lg-10">
				<div id="test" style="">
					<div id="matter0" style="display: none">
						<!--引入外部文件，即需要在右侧加载的内容-->
						<!-- 动态包含 -->
						<jsp:include page="./PerInf/MyJsp.jsp" flush="true"/>
						
					</div>

					<div id="matter1">
						<!-- 静态包含 -->
						<%@include file="./AchLog/AchLog.jsp"%>
					</div>
					
				</div>
			</div>
		</div>
	</div>
    
	<script src="./bootstrap-treeview/js/bootstrap-treeview.js">var e = $.noConflict(true);</script>
    <script type="text/javascript">
        $(function () {
            var defaultData = [
	          {
	              text: '个人中心',
	              href: '#parent1',
				  nodeId: '0',
	              tags: ['0']
	          },
	          {
	              text: '成果录入',
	              href: '#parent2',
				  nodeId: '1',
				  state:{
				  	selected:true,
					checked:true,
					expanded:false
				  },
	              tags: ['2'],
				  nodes: [
	              {
	                  text: '科研成果',
	                  href: '#child1',
					  nodeId: '2',
	                  tags: ['6'],
	                  nodes: [
	                  {
	                      text: '科研论文',
	                      href: '#grandchild1',
						  nodeId: '3',
	                      tags: ['0']
	                  },
	                  {
	                      text: '科研项目',
	                      href: '#grandchild2',
						  nodeId: '4',
	                      tags: ['0']
	                  },
	                  {
	                      text: '科研获奖',
	                      href: '#grandchild2',
						  nodeId: '5',
	                      tags: ['0']
	                  },
	                  {
	                      text: '专利专著',
	                      href: '#grandchild2',
						  nodeId: '6',
	                      tags: ['0']
	                  },
	                  {
	                      text: '人才计划',
	                      href: '#grandchild2',
						  nodeId: '7',
	                      tags: ['0']
	                  },
	                  {
	                      text: '其他成果',
	                      href: '#grandchild2',
						  nodeId: '8',
	                      tags: ['0']
	                  }
	                ]
	              },
	              {
	                  text: '教学成果',
	                  href: '#child2',
					  nodeId: '9',
	                  tags: ['6'],
	                  nodes: [
	                  {
	                      text: '教学论文',
	                      href: '#grandchild1',
						  nodeId: '10',
	                      tags: ['0']
	                  },
	                  {
	                      text: '科研项目',
	                      href: '#grandchild2',
						  nodeId: '11',
	                      tags: ['0']
	                  },
	                  {
	                      text: '教学获奖',
	                      href: '#grandchild2',
						  nodeId: '12',
	                      tags: ['0']
	                  },
	                  {
	                      text: '专利专著',
	                      href: '#grandchild2',
						  nodeId: '13',
	                      tags: ['0']
	                  },
	                  {
	                      text: '人才计划',
	                      href: '#grandchild2',
						  nodeId: '14',
	                      tags: ['0']
	                  },
	                  {
	                      text: '其他成果',
	                      href: '#grandchild2',
						  nodeId: '15',
	                      tags: ['0']
	                  }
	                ]
	              }
	            ]
	          },
	          {
	              text: '查询',
	              href: '#parent3',
				  nodeId: '16',
	              tags: ['0']
	          },
	          {
	              text: '修改密码',
	              href: '#parent4',
				  nodeId: '17',
	              tags: ['0']
	          }
	        ];

			/*$('#treeview2').treeview({
			  levels: 1,
			  data: defaultData
			});*/
			
			var initSelectableTree = function() {
			  return $('#treeview2').treeview({
				levels: 1,
				  data: defaultData,
			   // multiSelect: $('#chk-select-multi').is(':checked'),
				onNodeSelected: function(event, node) {
					var temp = "block";
					for (var i = 0; i < 2; i++) {
						if (i == node.Id) {
							temp = "block";
						} else {
							temp = "none";
						}
						document.getElementById("matter" + i).style.display = temp;
					}
					var nodearrE = $("#treeview2").treeview("getExpanded");
					for(var i=0;i<nodearrE.length;i++){
						var nodeid = JSON.stringify(nodearrE[i].Id);
						var nodestate = JSON.stringify(nodearrE[i].state);
						document.cookie = nodeid + "=" + nodestate;
					}
					var nodearrC = $("#treeview2").treeview("getCollapsed");
					for(var i=0;i<nodearrC.length;i++){
						var nodeid = JSON.stringify(nodearrC[i].Id);
						var nodestate = JSON.stringify(nodearrC[i].state);
						document.cookie = nodeid + "=" + nodestate;
					}
				},
				/*onNodeUnselected: function (event, node) {
				  $('#test').prepend('<p>' + node.text + ' was unselected</p>');
				}*/
			  });
			};
			var $selectableTree = initSelectableTree();
			
        });
        
        /*$(document).ready(function(){
    		for(var i=0;i<=17;i++){
    			var str = getcookie(i);
    			var statei = JSON.parse(str);
    			var jso = eval(statei);
    			var nodei = $('#treeview2').treeview('getNode',i);
    			if(jso.selected) {
    				$('#test').prepend('<p>'+ nodei.Id+ jso.selected + ' was selected</p>');
    				//var tem = document.getElementById(nodei.Id);
    				//$('#test').prepend('<p>' + tem.className + '</p>');
    				//$('#treeview2').treeview('setSelectedState',[nodei,jso,{silent: true}]);
    			}
    			else {
    			
    				$('#test').prepend('<p>' + nodei.Id + jso.selected + ' was unselected</p>');
    				
    			
    			}
    			//$('#treeview2').treeview('setSelectedState',[nodei,jso,{silent: true}]);
    			
    		}
    		function getcookie(objname){//获取指定名称的cookie的值
				var arrstr = document.cookie.split("; ");
				for(var i = 0;i < arrstr.length;i ++){
					var temp = arrstr[i].split("=");
					if(temp[0] == objname) return unescape(temp[1]);
				}
			}
    	});*/
		
    </script>
 </body>
</html>
