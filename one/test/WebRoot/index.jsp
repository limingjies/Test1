

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>限时抢购倒计时</title>
<style type="text/css">
    body{
    text-align: center;
    }
    #first{
    color:#ff7300;
    font-size:30px;
    margin-left:10px;
    }
</style>
<script type="text/javascript">
window.onload=function(){
setInterval(changTime, 500);
function changTime(){
document.getElementById("time").innerHTML=getTime();
changeStyle();
}
function gR()
{
    return Math.floor(Math.random()*16);
}
function changeStyle(){
var ele=document.getElementById("time");
var size=Math.random()*40;
ele.style.fontSize=((size+10)+"px");
var mc=new Array("0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F");
ele.style.color="#"+mc[gR()]+mc[gR()]+mc[gR()]+mc[gR()]+mc[gR()]+mc[gR()];
 
}
function getTime(){
    var now=new Date().getTime();
    var end=new Date("2015/2/13").getTime();
    var temp=end-now;
    if(temp<=0)
    {
        document.getElementById("first").innerHTML="国庆已结束！！！！！";
        return "";
    }else
    {
    var temp2=new Date();
    temp2.setTime(temp);
    var sec=Math.floor((temp)/1000%60);
    var min=Math.floor(temp/(60*1000)%60);
    var hou=Math.floor(temp/(60*60*1000)%24);
    var day=Math.floor(temp/(24*60*60*1000));
 
    return day+"天  "+hou+"小时  "+min+"分钟  "+sec+"秒";
    }
}
};
</script>
</head>
<body>
    <br/><br/><br/><br/><br/>
    <span id="first">距离限时抢购还有&nbsp;</span>
    <span id="time"></span>
</body>
</html>
 
