import org.junit.Test;

import static org.junit.Assert.*;

public class MayTinhTest {
    MayTinh mt = new MayTinh();

    @Test
    public void cong() {
        int rs = mt.cong(4, 5);
        int ex = -1;
        assertEquals(rs, ex);
    }

    @Test
    public void tru() {
        int rs = mt.tru(4, 5);
        int ex = -1;
        assertEquals(rs, ex);
    }

    @Test
    public void nhan() {
        int rs = mt.nhan(4, 5);
        int ex = -1;
        assertEquals(rs, ex);
    }
}