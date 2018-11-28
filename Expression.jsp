<html>
<body>
<%!
	String str="Arijit";
	public int addNum(int a,int b) {
		
		return (a+b);
	
	}

%>

My name is <%=str %>
<br>
<br>
<%="Sum is:"+addNum(2,3)%>
</body>
</html>