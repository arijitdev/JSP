<html>
<body>
<%!
	String str="Arijit";
	public int addNum(int a,int b) {
		
		return (a+b);
	
	}

%>

<%
 out.println("My name is "+str+"<br>");
 out.println("Sum is:"+addNum(2,3));
%>
</body>
</html>