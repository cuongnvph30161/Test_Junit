package Test;

import domainmodel.HoaDonDoMainModel;
import repositorys.HoaDonRepository;

import java.math.BigDecimal;
import java.util.Date;
import java.sql.Timestamp;

import static org.junit.Assert.*;
import org.junit.Test;
public class ThemAndTimKiemHoaDon_ThanhLong {

    @Test
    public void testThemThanhCong() {
        // Arrange
        // Tạo đối tượng HoaDonDoMainModel với dữ liệu phù hợp để kiểm thử
        Date currentDate = new Date();
        Timestamp currentTimestamp = new Timestamp(currentDate.getTime());
        HoaDonDoMainModel testData1 = new HoaDonDoMainModel(120012, 1001, currentTimestamp, 1, 1, 80297788, BigDecimal.valueOf(25000), "Nhiều Đường");

        // Tạo đối tượng của lớp chứa phương thức insert
        HoaDonRepository rp = new HoaDonRepository();

        // Act
        // Gọi phương thức insert để kiểm thử
        boolean result1 = rp.insert(testData1);


        // Assert
        // Kiểm tra kết quả trả về, nếu true thì kiểm thử thành công,false thành công cho những case not sucess.
        assertTrue(result1);

    }
    @Test
    public void testThemThanhCongData2() {
        // Arrange
        // Tạo đối tượng HoaDonDoMainModel với dữ liệu phù hợp để kiểm thử
        Date currentDate = new Date();
        Timestamp currentTimestamp = new Timestamp(currentDate.getTime());
        HoaDonDoMainModel testData = new HoaDonDoMainModel(220212, 1001, currentTimestamp, 1, 1, 80297788, BigDecimal.valueOf(25000), "Nhiều Đường");
        // Tạo đối tượng của lớp chứa phương thức insert
        HoaDonRepository rp = new HoaDonRepository();
        // Act
        // Gọi phương thức insert để kiểm thử
        boolean result = rp.insert(testData);
        // Assert
        // Kiểm tra kết quả trả về, nếu true thì kiểm thử thành công,false thành công cho những case not sucess.
        assertTrue(result);
    }
    @Test
    public void testThemThanhCongData3(){
        Date currentDate = new Date();
        Timestamp currentTimestamp = new Timestamp(currentDate.getTime());
        HoaDonDoMainModel testData = new HoaDonDoMainModel(211121,1001,currentTimestamp,1,1,80305380, BigDecimal.valueOf(25000),"Nhiều Đường");
        HoaDonRepository rp = new HoaDonRepository();
        boolean result = rp.insert(testData);
        assertTrue(result);
    }
    @Test
    public void testThemThanhCongData4(){
        Date currentDate = new Date();
        Timestamp currTimestamp = new Timestamp(currentDate.getTime());
        HoaDonDoMainModel testData = new HoaDonDoMainModel(2111111,1001,currTimestamp,1,1,80302533,BigDecimal.valueOf(25000),"Nhiều Đường");
        HoaDonRepository rp = new HoaDonRepository();
        boolean result = rp.insert(testData);
        assertTrue(result);

    }
    @Test
    public void testThemKhongThanhCongvoiDatarong(){
        Date curDate = new Date();
        Timestamp currTimestamp = new Timestamp(curDate.getTime());
        HoaDonDoMainModel testData = new HoaDonDoMainModel();
        HoaDonRepository rp = new HoaDonRepository();
        boolean result = rp.insert(testData);
        assertFalse(result);
    }
    @Test
    public void testThemKhongThanhCongvoiDataidmax(){
        Date curdate = new Date();
        Timestamp curTimestamp = new Timestamp(curdate.getTime());
        HoaDonDoMainModel testDate = createTestObjectWithMaxValues();
        HoaDonRepository rp = new HoaDonRepository();
        boolean result = rp.insert(testDate);
        assertFalse(result);
    }
    @Test
    public void testThemKhongThanhCongvoiDatammin(){
        Date curdate = new Date();
        Timestamp curTimestamp = new Timestamp(curdate.getTime());
        HoaDonDoMainModel testData = createTestObjectWithMinValues();
        HoaDonRepository rp = new HoaDonRepository();
        boolean result = rp.insert(testData);
        assertFalse(result);
    }

    // Hàm tạo đối tượng với giá trị lớn nhất
    private HoaDonDoMainModel createTestObjectWithMaxValues() {
        HoaDonDoMainModel testObject = new HoaDonDoMainModel();
        Date currentDate = new Date();
        Timestamp currentTimestamp = new Timestamp(currentDate.getTime());
        testObject.setMaHoaDon(Integer.MAX_VALUE);
        testObject.setMaNhanVien(1001);
        testObject.setThoiGian(currentTimestamp);
        testObject.setTrangThaiOrder(1);
        testObject.setTrangThaiThanhToan(1);
        testObject.setMaVoucher(80297788);
        testObject.setDichVuPhatSinh(BigDecimal.valueOf(25000));
        testObject.setGhiChu("Nhiều Đường");
        return testObject;
    }

    private HoaDonDoMainModel createTestObjectWithMinValues() {
        HoaDonDoMainModel testObject = new HoaDonDoMainModel();
        Date currentDate = new Date();
        Timestamp currentTimestamp = new Timestamp(currentDate.getTime());
        testObject.setMaHoaDon(Integer.MIN_VALUE);
        testObject.setMaNhanVien(1001);
        testObject.setThoiGian(currentTimestamp);
        testObject.setTrangThaiOrder(1);
        testObject.setTrangThaiThanhToan(1);
        testObject.setMaVoucher(80297788);
        testObject.setDichVuPhatSinh(BigDecimal.valueOf(25000));
        testObject.setGhiChu("Nhiều Đường");
        return testObject;
    }

}