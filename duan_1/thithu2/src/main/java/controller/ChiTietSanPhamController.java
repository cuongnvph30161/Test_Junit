package controller;

import entity.ChiTietSanPham;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ChiTietSanPhamService;

import java.io.IOException;
import java.util.UUID;

@WebServlet({"/sanpham-hienthi",
        "/sanpham-viewcreate",
        "/sanpham-create",
        "/sanpham-viewupdate",
        "/sanpham-delete",
})
public class ChiTietSanPhamController extends HttpServlet {
    ChiTietSanPhamService service = new ChiTietSanPhamService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("sanpham-hienthi")) {
            req.setAttribute("list", service.getAll());
            req.getRequestDispatcher("hienthi.jsp").forward(req, resp);
        } else if (uri.contains("sanpham-viewcreate")) {
            viewCreate(req, resp);
        }else if(uri.contains("sanpham-delete")){
            delete(req,resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("sanpham-create")) {
            create(req,resp);
        }
    }

    protected void viewCreate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("add.jsp").forward(req, resp);
    }
    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UUID id = UUID.fromString(req.getParameter("id"));
        service.delete(id);
        resp.sendRedirect("sanpham-hienthi");
    }

    protected void create(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ChiTietSanPham chiTietSanPham = new ChiTietSanPham();
        int namBH = Integer.parseInt(req.getParameter("nambh"));
        String moTa = req.getParameter("mota");
        int soLuongTon = Integer.parseInt(req.getParameter("soluongton"));
        double giaNhap = Double.parseDouble(req.getParameter("gianhap"));

        chiTietSanPham.setMota(moTa);
        chiTietSanPham.setGianhap(giaNhap);
        chiTietSanPham.setNambh(namBH);
        chiTietSanPham.setSoluongton(soLuongTon);
        service.create(chiTietSanPham);
        resp.sendRedirect("sanpham-hienthi");


    }
}
