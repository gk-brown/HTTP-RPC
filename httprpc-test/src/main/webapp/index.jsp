<%@page pageEncoding="UTF-8"%>

<html>
<head>
<title>HTTP-RPC Test</title>
</head>

<body>

<a href="${pageContext.request.contextPath}/math?api">Math (API)</a><br/>
<br/>
<a href="${pageContext.request.contextPath}/math/sum?a=2&b=4">Sum</a><br/>
<a href="${pageContext.request.contextPath}/math/sum?values=1&values=2&values=3">Sum Values</a><br/>

<hr/>

<a href="${pageContext.request.contextPath}/echo?api">Echo (API)</a><br/>
<br/>
<a href="${pageContext.request.contextPath}/echo?value=héllo">Echo</a><br/>

<hr/>

<a href="${pageContext.request.contextPath}/catalog?api">Catalog (API)</a><br/>

<hr/>

<a href="${pageContext.request.contextPath}/upload?api">Upload (API)</a><br/>
<br/>

<form action="${pageContext.request.contextPath}/upload" method="post" enctype="multipart/form-data">
<table>
<tr>
<td>File</td><td><input type="file" name="file"/></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="Upload"/></td>
</tr>
</table>
</form>

<hr/>

<form action="${pageContext.request.contextPath}/upload" method="post" enctype="multipart/form-data">
<table>
<tr>
<td>Files</td><td><input type="file" name="files" multiple/></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="Upload"/></td>
</tr>
</table>
</form>

<hr>

<a href="${pageContext.request.contextPath}/tree?api">Tree (API)</a><br/>
<br/>
<a href="${pageContext.request.contextPath}/tree">Tree</a><br/>

<hr>

<a href="${pageContext.request.contextPath}/test?api">Test (API)</a><br/>
<br/>
<a href="${pageContext.request.contextPath}/test?string=héllo&strings=a&strings=b&strings=c&number=123&flag=true&dayOfWeek=MONDAY&date=0&instant=1970-01-01T00:00:00.001Z&localDate=2018-06-28&localTime=10:45&localDateTime=2018-06-28T10:45">GET</a><br/>
<a href="${pageContext.request.contextPath}/test/a/123/b/héllo/c/456/d/göodbye">GET (Keys)</a><br/>
<a href="${pageContext.request.contextPath}/test/fibonacci?count=8">GET (Fibonacci)</a><br/>

<hr/>

<form action="${pageContext.request.contextPath}/test" method="post" enctype="application/x-www-form-urlencoded">
<table>
<tr>
<td>String</td><td><input name="string" value="héllo"/></td>
</tr>
<tr>
<td>Strings</td>
<td>
<select multiple name="strings">
<option value="a" selected>a</option>
<option value="b" selected>b</option>
<option value="c" selected>c</option>
</select>
</td>
</tr>
<tr>
<td>Number</td><td><input name="number" value="123"/></td>
</tr>
<tr>
<td>Flag</td><td><input name="flag" value="true"/></td>
</tr>
<tr>
<td>Day of Week</td><td><input name="dayOfWeek" value="MONDAY"/></td>
</tr>
<tr>
<td>Date</td><td><input name="date" value="0"/></td>
</tr>
<tr>
<td>Instant</td><td><input name="instant" value="1970-01-01T00:00:00.001Z"/></td>
</tr>
<tr>
<td>Local Date</td><td><input name="localDate" value="2018-06-28"/></td>
</tr>
<tr>
<td>Local Time</td><td><input name="localTime" value="10:45"/></td>
</tr>
<tr>
<td>Local Date/Time</td><td><input name="localDateTime" value="2018-06-28T10:45"/></td>
</tr>
<tr>
<td colspan="2"><input type="submit"/></td>
</tr>
</table>
</form>

<hr/>

<form action="${pageContext.request.contextPath}/test" method="post" enctype="multipart/form-data">
<table>
<tr>
<td>String</td><td><input name="string" value="héllo"/></td>
</tr>
<tr>
<td>Strings</td>
<td>
<select multiple name="strings">
<option value="a" selected>a</option>
<option value="b" selected>b</option>
<option value="c" selected>c</option>
</select>
</td>
</tr>
<tr>
<td>Number</td><td><input name="number" value="123"/></td>
</tr>
<tr>
<td>Flag</td><td><input name="flag" value="true"/></td>
</tr>
<tr>
<td>Day of Week</td><td><input name="dayOfWeek" value="MONDAY"/></td>
</tr>
<tr>
<td>Date</td><td><input name="date" value="0"/></td>
</tr>
<tr>
<td>Instant</td><td><input name="instant" value="1970-01-01T00:00:00.001Z"/></td>
</tr>
<tr>
<td>Local Date</td><td><input name="localDate" value="2018-06-28"/></td>
</tr>
<tr>
<td>Local Time</td><td><input name="localTime" value="10:45"/></td>
</tr>
<tr>
<td>Local Date/Time</td><td><input name="localDateTime" value="2018-06-28T10:45"/></td>
</tr>
<tr>
<td>Attachments</td><td><input type="file" name="attachments" multiple/></td>
</tr>
<tr>
<td colspan="2"><input type="submit"/></td>
</tr>
</table>
</form>

<hr/>

<a href="${pageContext.request.contextPath}/system-info?api">System Info (API)</a><br/>
<br/>
<a href="${pageContext.request.contextPath}/system-info">System Info</a><br/>

<hr/>

<a href="${pageContext.request.contextPath}/pets?api">Pets (API)</a><br/>
<br/>
<a href="${pageContext.request.contextPath}/pets?owner=Gwen">Pets (JSON)</a><br/>
<a href="${pageContext.request.contextPath}/pets?owner=Gwen&format=csv">Pets (CSV)</a><br/>
<a href="${pageContext.request.contextPath}/pets?owner=Gwen&format=html">Pets (HTML)</a><br/>
<br/>
<a href="${pageContext.request.contextPath}/pets/average-age">Average Age</a><br/>

<hr/>

<a href="${pageContext.request.contextPath}/employees?api">Employees (API)</a><br/>

</body>
</html>
