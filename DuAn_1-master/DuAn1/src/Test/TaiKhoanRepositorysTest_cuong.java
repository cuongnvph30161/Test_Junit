package Test;

import domainmodel.Role;
import domainmodel.TaiKhoanDomail;
import org.junit.Test;
import repositorys.TaiKhoanRepositorys;

import static org.junit.Assert.*;

public class TaiKhoanRepositorysTest_cuong {
    private TaiKhoanRepositorys taiKhoanRepositorys = new TaiKhoanRepositorys();


    // thêm tài khoản với các trường là đúng (Data 1)
    @Test
    public void insertTaiKhoan_1() {
        TaiKhoanDomail taiKhoanDomail = new TaiKhoanDomail();

        taiKhoanDomail.setMaTaiKhoan("TK01");
        taiKhoanDomail.setMatKhau("abc");
        taiKhoanDomail.setRole(Role.NhanVien);
        taiKhoanDomail.setTrangThai(1);
        taiKhoanDomail.setMaNhanVien(1014);

        boolean rs = taiKhoanRepositorys.insertTaiKhoan(taiKhoanDomail);
        boolean ex = true;
        assertEquals(ex, rs);
    }

    // thêm tài khoản với các trường là đúng (Data 2)

    @Test
    public void insertTaiKhoan_2() {
        TaiKhoanDomail taiKhoanDomail = new TaiKhoanDomail();
        taiKhoanDomail.setMaTaiKhoan("TK02");
        taiKhoanDomail.setMatKhau("abc");
        taiKhoanDomail.setRole(Role.QuanLy);
        taiKhoanDomail.setTrangThai(1);
        taiKhoanDomail.setMaNhanVien(1000);
        boolean rs = taiKhoanRepositorys.insertTaiKhoan(taiKhoanDomail);
        boolean ex = true;
        assertEquals(ex, rs);
    }
    // thêm tài khoản với các trường là đúng (Data 3)

    @Test
    public void insertTaiKhoan_3() {
        TaiKhoanDomail taiKhoanDomail = new TaiKhoanDomail();
        taiKhoanDomail.setMaTaiKhoan("TK03");
        taiKhoanDomail.setMatKhau("abc");
        taiKhoanDomail.setRole(Role.NhanVien);
        taiKhoanDomail.setTrangThai(1);
        taiKhoanDomail.setMaNhanVien(1001);
        boolean rs = taiKhoanRepositorys.insertTaiKhoan(taiKhoanDomail);
        boolean ex = true;
        assertEquals(ex, rs);
    }


    // thêm tài khoản không thành công với trường Mã nhân viên là trùng
    @Test
    public void insertTaiKhoan_4() {
        TaiKhoanDomail taiKhoanDomail = new TaiKhoanDomail();

        taiKhoanDomail.setMaTaiKhoan("TK05");
        taiKhoanDomail.setMatKhau("abc");
        taiKhoanDomail.setRole(Role.PhaChe);
        taiKhoanDomail.setTrangThai(1);
        taiKhoanDomail.setMaNhanVien(1004);
        boolean rs = taiKhoanRepositorys.insertTaiKhoan(taiKhoanDomail);
        boolean ex = false;
        assertEquals(ex, rs);
    }


    // thêm tài khoản không thành công với trường Mã tài khoản quá 20 kí tự
    @Test
    public void insertTaiKhoan_5() {
        TaiKhoanDomail taiKhoanDomail = new TaiKhoanDomail();

        taiKhoanDomail.setMaTaiKhoan("1233242343244234342342342");
        taiKhoanDomail.setMatKhau("abc");
        taiKhoanDomail.setRole(Role.PhaChe);
        taiKhoanDomail.setTrangThai(1);
        taiKhoanDomail.setMaNhanVien(1001);
        boolean rs = taiKhoanRepositorys.insertTaiKhoan(taiKhoanDomail);
        boolean ex = false;
        assertEquals(ex, rs);

    }

    // đăng nhập thành công với tài khoản và mật khẩu nhập đúng(Data 1)
    @Test
    public void testCaseDangNhap_6() {
        TaiKhoanDomail rs = taiKhoanRepositorys.getTaiKhoanByMaTaiKhoanAndMatKhau("TestDangNhap_1", "abc");
        boolean isSuccessLogin = rs != null;
        assertEquals(true, isSuccessLogin);

    }

    // đăng nhập thành công với tài khoản và mật khẩu nhập đúng(Data 2)
    @Test
    public void testCaseDangNhap_7() {
        TaiKhoanDomail rs = taiKhoanRepositorys.getTaiKhoanByMaTaiKhoanAndMatKhau("testCaseTrung", "abc");
        boolean isSuccessLogin;
        if (rs != null) {
            isSuccessLogin = true;
        } else {
            isSuccessLogin = false;
        }
        assertEquals(true, isSuccessLogin);
    }
    // đăng nhập thành công với tài khoản rỗng và mật khẩu rỗng
    @Test
    public void testCaseDangNhap_8() {
        TaiKhoanDomail rs = taiKhoanRepositorys.getTaiKhoanByMaTaiKhoanAndMatKhau("", "");
        boolean isSuccessLogin;
        if (rs != null) {
            isSuccessLogin = true;
        } else {
            isSuccessLogin = false;
        }
        assertEquals(false, isSuccessLogin);
    }

    // đăng nhập không thànhh công với tài khoản rỗng và mật khẩu đúng
    @Test
    public void testCaseDangNhap_9() {
        TaiKhoanDomail rs = taiKhoanRepositorys.getTaiKhoanByMaTaiKhoanAndMatKhau("", "abc");
        boolean isSuccessLogin;
        if (rs != null) {
            isSuccessLogin = true;
        } else {
            isSuccessLogin = false;
        }
        assertEquals(false, isSuccessLogin);
    }

    // đăng nhập không thànhh công với tài khoản đúng và mật khẩu rỗng
    @Test
    public void testCaseDangNhap_10() {
        TaiKhoanDomail rs = taiKhoanRepositorys.getTaiKhoanByMaTaiKhoanAndMatKhau("TestDangNhap_1", "");
        boolean isSuccessLogin;
        if (rs != null) {
            isSuccessLogin = true;
        } else {
            isSuccessLogin = false;
        }
        assertEquals(false, isSuccessLogin);
    }

}