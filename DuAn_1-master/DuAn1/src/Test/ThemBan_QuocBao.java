package Test;

import domainmodel.BanDomainModel;
import repositorys.BanRepository;
import org.junit.Test;
import static org.junit.Assert.*;

public class ThemBan_QuocBao {
    BanRepository banRepo = new BanRepository();
    @Test
    public void testThemBan1() {
        BanDomainModel ban = new BanDomainModel();
        ban.setMaBan(0);
        ban.setTang(0);
        ban.setTenBan("MV04");
        ban.setTrangThai(0);
        int rs = banRepo.ThemBan(ban);
        int ex = 1;
        assertEquals(ex, rs);
    }

    @Test
    public void testThemBan2() {
        BanDomainModel ban = new BanDomainModel();
        ban.setMaBan(0);
        ban.setTang(5);
        ban.setTenBan("MV05");
        ban.setTrangThai(0);
        int rs = banRepo.ThemBan(ban);
        int ex = 1;
        assertEquals(ex, rs);
    }

    @Test
    public void testThemBan3() {
        BanDomainModel ban = new BanDomainModel();
        ban.setMaBan(0);
        ban.setTang(5);
        ban.setTenBan("");
        ban.setTrangThai(0);
        int rs = banRepo.ThemBan(ban);
        int ex = 1;
        assertEquals(ex, rs);
    }

    @Test
    public void testThemBan4() {
        BanDomainModel ban = new BanDomainModel();
        ban.setMaBan(0);
        ban.setTang(-1);
        ban.setTenBan("MV05");
        ban.setTrangThai(0);
        int rs = banRepo.ThemBan(ban);
        int ex = 1;
        assertEquals(ex, rs);

    }
    @Test
    public void testThemBan5() {
        BanDomainModel ban = new BanDomainModel();
        ban.setMaBan(1);
        ban.setTang(0);
        ban.setTenBan("C111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
        ban.setTrangThai(0);
        int rs = banRepo.ThemBan(ban);
        int ex = -1;
        assertEquals(ex, rs);

    }

    @Test
    public void testThemBan6() {
        BanDomainModel ban = new BanDomainModel();
        ban.setMaBan(0);
        ban.setTang(0);
        ban.setTenBan("C111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
        ban.setTrangThai(1);
        int rs = banRepo.ThemBan(ban);
        int ex = -1;
        assertEquals(ex, rs);

    }
    @Test
    public void testThemBan7() {
        BanDomainModel ban = new BanDomainModel();
        ban.setMaBan(0);
        ban.setTang((int) 1.1);
        ban.setTenBan("C111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
        ban.setTrangThai(0);
        int rs = banRepo.ThemBan(ban);
        int ex = -1;
        assertEquals(ex, rs);

    }

    @Test
    public void testThemBan8() {
        BanDomainModel ban = new BanDomainModel();
        ban.setMaBan(0);
        ban.setTang((int) 1.1);
        ban.setTenBan("C111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
        ban.setTrangThai(1);
        int rs = banRepo.ThemBan(ban);
        int ex = -1;
        assertEquals(ex, rs);

    }
    @Test
    public void testThemBan9() {
        BanDomainModel ban = new BanDomainModel();
        ban.setMaBan(0);
        ban.setTang(3);
        ban.setTenBan("C111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
        ban.setTrangThai(0);
        int rs = banRepo.ThemBan(ban);
        int ex = -1;
        assertEquals(ex, rs);

    }
    @Test
    public void testThemBan10() {
        BanDomainModel ban = new BanDomainModel();
        ban.setMaBan(0);
        ban.setTang(3);
        ban.setTenBan("C111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111");
        ban.setTrangThai(1);
        int rs = banRepo.ThemBan(ban);
        int ex = -1;
        assertEquals(ex, rs);

    }
}