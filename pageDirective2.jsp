<%@page errorPage="handler.jsp"%>
<%! 
int x=10,y=2,z=0;
int[] n=new int[10];
%>
<%
z=x/y;
out.println("Result : "+z+"<br>");
out.println(n[10]);
%>
<hr>