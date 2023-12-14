<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/29/2023
  Time: 10:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <th>STT</th>
        <th>Năm bảo hành</th>
        <th>Số lượng tồn</th>
        <th>Giá nhập</th>
        <th>Mô tả</th>
        <th>Action</th>
    </tr>

    <c:forEach items="${list}" var="c" varStatus="st">
        <tr>
            <td>${st.index+1}</td>
            <td>${c.nambh}</td>
            <td>${c.soluongton}</td>
            <td>${c.gianhap}</td>
            <td>${c.mota}</td>
            <td>
                <a href="sanpham-viewupdate?id=${c.id}"><button>Detail</button></a>
                <a href="sanpham-delete?id=${c.id}"><button>Remove</button></a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="sanpham-viewcreate"><button type="button">Thêm sản phẩm </button></a>
</body>
</html>
