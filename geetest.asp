<!--#include file="./Geetestlib.asp"-->
 <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" method="post" action="validate.asp" style="margin-top:100px;">
    <div>
        <table>
       <tr>
          <td>用户名</td><td><input type="text"/></td>
       </tr>
       <tr>
          <td>密码</td><td><input type="password"/></td>
       </tr>
       <tr>
	   <%
				Dim geetest,server_status, api_script
				Set geetest = new Geetestlib
				geetest.captchaid = "eec109e39008039b1f59dc812b55988d"
				
				server_status = geetest.getGtServerStatus()
				If server_status = 1 Then
					geetest.register()
					api_script = "<td colspan='2'><script type='text/javascript' src='http://api.geetest.com/get.php?gt=eec109e39008039b1f59dc812b55988d&challenge=" + geetest.challenge + "'></script></td>"
					Response.Write(api_script)
				Else
					' Todo
				End If
		  %>
       </tr>
       <tr>
          <td>
              
              <input type="submit" value="Submit" />
              
          </td>
       </tr>
    </table>
    </div>
    </form>
</body>
</html>
 