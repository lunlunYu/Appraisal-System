/**
 * 
 */

$(document).ready(function create_code() {


	  function shuffle() {
	        var arr = ['1', 'r', 'Q', '4', 'S', '6', 'w', 'u', 'D', 'I', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
	            'q', '2', 's', 't', '8', 'v', '7', 'x', 'y', 'z', 'A', 'B', 'C', '9', 'E', 'F', 'G', 'H', '0', 'J', 'K', 'L', 'M', 'N', 'O', 'P', '3', 'R',
	            '5', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
	        return arr.sort(function () {
	            return (Math.random() - .5);
	        });
	    }
	var arr1="";
	var code = shuffle();
	for( var i=0 ; i<4 ;i++){
		arr1 = arr1+code[i];
	}
	document.getElementById("ss").innerHTML=arr1;
	document.getElementById("test").value = arr1;


}); 


$().ready(function() {
	  $("#form1").validate({
	    rules: {
	      username: {
	        required: true,
	        maxlength: 10
	      },
	      password: {
	        required: true,
	        maxlength: 10
	      },
	      checkcode: {
	        required: true,
	        maxlength: 10,
	      }
	    },
	    messages: {
	      username: {
	        required: "请输入用户名",
	        minlength: "用户名必需由10个字母组成"
	      },
	      password: {
	        required: "请输入密码",
	        minlength: "密码长度不能小于 10 个字母"
	      },
	      checkcode: {
	        required: "请输入验证码",
	        minlength: "密码长度不能小于 10 个字母",
	      }
	    }
	})});


