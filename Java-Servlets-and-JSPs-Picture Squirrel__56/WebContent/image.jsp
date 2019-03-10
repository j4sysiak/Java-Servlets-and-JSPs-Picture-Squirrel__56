<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<c:import url="header.jsp" >
	<c:param name="title" value="Picture Squirrel - View Image"></c:param>
</c:import>

<sql:setDataSource var="ds" dataSource="jdbc/webshop" />

<sql:query dataSource="${ds}" sql="select * from images where id=?" var="results" >
	<sql:param>${param.image}</sql:param>
</sql:query>

  <c:set scope="page" var="image" value="${results.rows[0]}"></c:set>
  <c:set scope="page" var="imgname" value="${image.stem}.${image.image_extension}"></c:set>

  <img src="${pageContext.request.contextPath}/pics/${imgname}" />
  
  <c:import url="footer.jsp" />






























