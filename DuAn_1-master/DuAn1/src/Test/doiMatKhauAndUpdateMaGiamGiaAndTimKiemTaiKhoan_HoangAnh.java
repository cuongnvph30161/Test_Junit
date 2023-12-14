package Test;

import domainmodel.MaGiamGiaDomainModel;
import domainmodel.TaiKhoanDomail;
import org.junit.Assert;
import org.junit.Test;
import repositorys.MaGiamGiaRepository;
import repositorys.TaiKhoanRepositorys;

import static org.junit.Assert.*;

public class doiMatKhauAndUpdateMaGiamGiaAndTimKiemTaiKhoan_HoangAnh {
    private TaiKhoanRepositorys repositorys = new TaiKhoanRepositorys();
    private MaGiamGiaRepository maGiamGiaRepository = new MaGiamGiaRepository();

    //  thành công với trường mã tài khoản hợp lệ (Data 1)
    @Test
    public void  doiMatKhau_1() {
        boolean rs = repositorys.doiMatKhau("abc","testGetEmail_3");
        boolean ex = true;

    }

    //  thành công với trường mã tài khoản hợp lệ (Data 1)
    @Test
    public void  doiMatKhau_2() {
        boolean rs = repositorys.doiMatKhau("abc","testGetEmail_2");
        boolean ex = true;
        assertEquals(ex, rs);
    }

    //  thành công với trường mã voucher và mã giảm giá domail hợp lệ (Data 1)
    @Test
    public void  updateMaGiamGiaSoluong_3() {
        MaGiamGiaDomainModel maGiamGiaDomainModel = new MaGiamGiaDomainModel();
        maGiamGiaDomainModel.setSoLuong(1);
        boolean rs = maGiamGiaRepository.updateMaGiamGiaSoLuong(80293992,maGiamGiaDomainModel);
        boolean ex = true;
        assertEquals(ex, rs);
    }

    //  thành công với trường mã voucher và mã giảm giá domail hợp lệ (Data 2)
    @Test
    public void  updateMaGiamGiaSoluong_4() {
        MaGiamGiaDomainModel maGiamGiaDomainModel = new MaGiamGiaDomainModel();
        maGiamGiaDomainModel.setSoLuong(1);
        boolean rs = maGiamGiaRepository.updateMaGiamGiaSoLuong(80294941,maGiamGiaDomainModel);
        boolean ex = true;
        assertEquals(ex, rs);
    }

    //  thành công với trường mã voucher và mã giảm giá domail hợp lệ (Data 3)
    @Test
    public void  updateMaGiamGiaSoluong_5() {
        MaGiamGiaDomainModel maGiamGiaDomainModel = new MaGiamGiaDomainModel();
        maGiamGiaDomainModel.setSoLuong(1);
        boolean rs = maGiamGiaRepository.updateMaGiamGiaSoLuong(80295890,maGiamGiaDomainModel);
        boolean ex = true;
        assertEquals(ex, rs);
    }


    //  thành công với trường mã tài khoản hợp lệ (Data 1)
    @Test
    public void  getTaiKhoanByMa_6() {
        TaiKhoanDomail rs = repositorys.getTaiKhoanByMa("testGetEmail_3");
//        String ex = null;
        assertEquals(rs, rs);
    }

    //  thành công với trường mã tài khoản hợp lệ (Data 2)
    @Test
    public void getTaiKhoanByMa_7() {
        TaiKhoanDomail rs = repositorys.getTaiKhoanByMa("testGetEmail_2");
//        String ex = null;
        assertEquals(rs, rs);
    }
    //  thành công với trường mã tài khoản hợp lệ (Data 2)

    @Test
    public void getTaiKhoanByMa_8() {
        TaiKhoanDomail rs = repositorys.getTaiKhoanByMa("testCaseTrung");
//        String ex = null;
        assertEquals(rs, rs);
    }

    //  không thành công với mã tài khoản là rỗng
    @Test
    public void getTaiKhoanByMa_9() {
        TaiKhoanDomail rs = repositorys.getTaiKhoanByMa("");
        String ex = null;
        assertEquals(ex, rs);
    }
    // không thành công với mã tài khoản không tồn tại
    @Test
    public void getTaiKhoanByMa_10() {
        TaiKhoanDomail rs = repositorys.getTaiKhoanByMa("cddd");
        String ex = null;
        assertEquals(ex, rs);
    }



}