package Test;

import domainmodel.NhanVienDomainModel;
import org.junit.Test;
import repositorys.NhanVienRepository;
import repositorys.iRepository.INhanVienRepository;

import java.sql.Date;

import static org.junit.Assert.*;

public class ThemNhanVienRepo_TuanAnh {
    INhanVienRepository repo = new NhanVienRepository();

    //Thêm thành công với ảnh null
    @Test
    public void testInsertNhanVien() {
        NhanVienDomainModel nv = new NhanVienDomainModel(1, "Tuấn Anh", Date.valueOf("2003-05-02"), "Nghệ An", "012345675673", 1, "tuqsdnh@gmail.com", "0538736689", "Nhiệt huyết", null, "Nhân viên");
        boolean thucTe = repo.insertNhanVien(nv);
        boolean mongMuon = true;
        assertEquals(thucTe, mongMuon);
    }

    @Test
    //Kiểm tra thêm nhân viên thất bại với email đã tồn tại
    public void testInsertNhanVien1() {
        NhanVienDomainModel nv = new NhanVienDomainModel(1, "Tuấn Anh", Date.valueOf("2003-05-02"), "Nghệ An", "012345675671", 1, "tuqsdnh@gmail.com", "0538736681", "Nhiệt huyết", null, "Nhân viên");
        boolean thucTe = repo.insertNhanVien(nv);
        boolean mongMuon = false;
        assertEquals(thucTe, mongMuon);
    }

    @Test
    //Kiểm tra thêm nhân viên thất bại với căn cước công dân đã tồn tại
    public void testInsertNhanVien2() {
        NhanVienDomainModel nv = new NhanVienDomainModel(1, "Tuấn Anh", Date.valueOf("2003-05-02"), "Nghệ An", "012345675673", 1, "tuqsdnh1@gmail.com", "0538736681", "Nhiệt huyết", null, "Nhân viên");
        boolean thucTe = repo.insertNhanVien(nv);
        boolean mongMuon = false;
        assertEquals(thucTe, mongMuon);
    }

    @Test
    //Kiểm tra thêm nhân viên thất bại với số điện thoại đã tồn tại
    public void testInsertNhanVien3() {
        NhanVienDomainModel nv = new NhanVienDomainModel(1, "Tuấn Anh", Date.valueOf("2003-05-02"), "Nghệ An", "012345675671", 1, "tuqsdnh1@gmail.com", "0538736689", "Nhiệt huyết", null, "Nhân viên");
        boolean thucTe = repo.insertNhanVien(nv);
        boolean mongMuon = false;
        assertEquals(thucTe, mongMuon);
    }

    @Test
    //Kiểm tra thêm nhân viên thành công với ghi chú và ảnh bỏ trống
    public void testInsertNhanVien4() {
        NhanVienDomainModel nv = new NhanVienDomainModel(1, "Tuấn Anh", Date.valueOf("2003-05-02"), "Nghệ An", "012345675671", 1, "tuqsdnh1@gmail.com", "0538736681", null, null, "Nhân viên");
        boolean thucTe = repo.insertNhanVien(nv);
        boolean mongMuon = true;
        assertEquals(thucTe, mongMuon);
    }

    @Test
    //Kiểm tra thêm nhân viên thất bại với họ tên bỏ trống
    public void testInsertNhanVien5() {
        NhanVienDomainModel nv = new NhanVienDomainModel(1, null, Date.valueOf("2003-05-02"), "Nghệ An", "012345675672", 1, "tuqsdnh2@gmail.com", "0538736682", null, null, "Nhân viên");
        boolean thucTe = repo.insertNhanVien(nv);
        boolean mongMuon = false;
        assertEquals(thucTe, mongMuon);
    }

    @Test
    //Kiểm tra thêm nhân viên thất bại với ngày sinh bỏ trống
    public void testInsertNhanVien6() {
        NhanVienDomainModel nv = new NhanVienDomainModel(1, "Tuấn Anh", null, "Nghệ An", "012345675672", 1, "tuqsdnh2@gmail.com", "0538736682", null, null, "Nhân viên");
    }
}