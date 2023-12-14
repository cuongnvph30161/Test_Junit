package Test;

import domainmodel.MaGiamGiaDomainModel;
import org.junit.Test;
import repositorys.MaGiamGiaRepository;

import java.math.BigDecimal;
import java.util.ArrayList;

import static org.junit.Assert.*;

public class TimKiemAndThemMaGiamGia_AnhTuan {
    MaGiamGiaRepository maGiamGiaRepository = new MaGiamGiaRepository();

    // tìm kiếm mã giảm giá
    // success
    @Test
    public void findMaGiamGiaByHoaDonToiThieu() {
        ArrayList<MaGiamGiaDomainModel> list = maGiamGiaRepository.findMaGiamGiaByHoaDonToiThieu(1);
        int exp = 1;
        // get hoa don toi thieu theo vi tri
        assertEquals(exp, list.get(0).getDonToiThieu());
    }


    @Test
    public void findMaGiamGiaByHoaDonToiThieu2() {
        ArrayList<MaGiamGiaDomainModel> list = maGiamGiaRepository.findMaGiamGiaByHoaDonToiThieu(12);
        int exp = 1;
        // get size hoa don toi thieu
        assertEquals(exp, list.size());
    }

    @Test
    public void testCheckMaGiamGia() {
        boolean list = maGiamGiaRepository.checkMaGiamGia(80298737);
        boolean exp = true;
        assertEquals(exp, list);
    }


    @Test
    public void testCheckMaGiamGia2() {
        boolean list = maGiamGiaRepository.checkMaGiamGia(80295890);
        boolean exp = true;
        assertEquals(exp, list);
    }

    // not success
    @Test
    public void findMaGiamGiaByHoaDonToiThieu4() {
        ArrayList<MaGiamGiaDomainModel> list = maGiamGiaRepository.findMaGiamGiaByHoaDonToiThieu(200);
        int exp = 0;
        assertEquals(exp, list.size());
    }


    @Test
    public void testCheckMaGiamGia4() {
        boolean list = maGiamGiaRepository.checkMaGiamGia(435454546);
        boolean exp = false;
        assertEquals(exp, list);
    }


    // insert ma giam gia
    // success
    @Test
    public void insertMaGiamGia() {
        MaGiamGiaDomainModel voucherMD = new MaGiamGiaDomainModel();
        voucherMD.setPhanTramGiam(10);
        voucherMD.setDonToiThieu(1);
        voucherMD.setGiamToiDa(BigDecimal.valueOf(3000000));
        voucherMD.setSoLuong(10);
        voucherMD.setMaNguoiTao(1000);
        voucherMD.setNgayBatDau(java.sql.Date.valueOf("2023-08-14"));
        voucherMD.setNgayKetThuc(java.sql.Date.valueOf("2023-10-14"));

        boolean list = maGiamGiaRepository.insertMaGiamGia(voucherMD);
        boolean exp = true;
        assertEquals(exp, list);
    }

    @Test
    public void insertMaGiamGia2() {
        MaGiamGiaDomainModel voucherMD = new MaGiamGiaDomainModel();
        voucherMD.setPhanTramGiam(20);
        voucherMD.setDonToiThieu(1);
        voucherMD.setGiamToiDa(BigDecimal.valueOf(100000));
        voucherMD.setSoLuong(20);
        voucherMD.setMaNguoiTao(1000);
        voucherMD.setNgayBatDau(java.sql.Date.valueOf("2023-08-20"));
        voucherMD.setNgayKetThuc(java.sql.Date.valueOf("2023-10-20"));

        boolean list = maGiamGiaRepository.insertMaGiamGia(voucherMD);
        boolean exp = true;
        assertEquals(exp, list);
    }

    // not success

    @Test
    public void insertMaGiamGia3() {
        MaGiamGiaDomainModel voucherMD = new MaGiamGiaDomainModel();
        voucherMD.setPhanTramGiam(20);
        voucherMD.setDonToiThieu(1000);
        voucherMD.setGiamToiDa(BigDecimal.valueOf(100000));
        voucherMD.setSoLuong(20);
        voucherMD.setMaNguoiTao(2000);
        voucherMD.setNgayBatDau(java.sql.Date.valueOf("2023-08-20"));
        voucherMD.setNgayKetThuc(java.sql.Date.valueOf("2023-10-20"));

        boolean list = maGiamGiaRepository.insertMaGiamGia(voucherMD);
        boolean exp = false;
        assertEquals(exp, list);
    }

    @Test
    public void insertMaGiamGia4() {
        MaGiamGiaDomainModel voucherMD = new MaGiamGiaDomainModel();
        voucherMD.setPhanTramGiam(20);
        voucherMD.setDonToiThieu(1000);
        voucherMD.setGiamToiDa(BigDecimal.valueOf(100000));
        voucherMD.setSoLuong(20);
        voucherMD.setMaNguoiTao(5000);
        voucherMD.setNgayBatDau(java.sql.Date.valueOf("2023-08-20"));
        voucherMD.setNgayKetThuc(java.sql.Date.valueOf("2023-10-20"));

        boolean list = maGiamGiaRepository.insertMaGiamGia(voucherMD);
        boolean exp = false;
        assertEquals(exp, list);
    }

}