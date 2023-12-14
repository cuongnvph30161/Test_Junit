<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/29/2023
  Time: 10:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
    <p>
        Năm Bảo hành:
        <select name="nambh">
            <option >2000</option>
            <option >2001</option>
            <option >2002</option>
            <option >2003</option>
        </select>
    </p>
    <p>
        Số lượng tồn:
        <input type="text" name="soluongton">
    </p>
    <p>
        Giá nhập:
        <input  type="text" name="gianhap">
    </p>
    <p>
        Mô tả:
        <input type="text" name="mota">
    </p>
    <button formaction="sanpham-create">Add</button>
</form>
</body>
</html>
