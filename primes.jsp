<%@ page import="primes.primeNum" %>
<%@ page import="java.util.ArrayList" %>
<HTML>
<HEAD>
   <title>Prime Numbers</title>
</HEAD>
<BODY>
<H1>Prime Numbahs Son</H1>
<br/>
<br/>
<b><%
 
 primeNum prime1 = new primeNum();
	out.println("On a scale from 0-10, I rank prime numbers a " +prime1.random() + " out of 10.</br>");
%></b>
</br>
<%!
	public String sayPrimes(String n) {
		return "Your prime numbers are the" + n;
	}	%>
<%
	out.println(sayPrimes(" following:"));	
%>
<%
 int numPrimes;
	 if(request.getParameter("numPrimes") == null) {
	 	numPrimes = 10;
	 }	
        else { 
		numPrimes = Integer.valueOf(request.getParameter("numPrimes"));
	}
 %>
<ul>
<%
int count = 0;
int number = 1;
while(count < numPrimes) {
	if(prime1.primeCheck(number)) {
		out.println(number + "</br>");
		count++;
	}
	number++;
}
%>
</ul>

</BODY>
</HTML>
