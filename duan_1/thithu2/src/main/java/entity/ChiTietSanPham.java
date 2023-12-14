package entity;

import jakarta.persistence.*;

import java.util.UUID;

@Entity
@Table(name = "ChiTietSP")
public class ChiTietSanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private UUID id ;
    private int nambh;
    private String mota;
    private int soluongton;
    private Double gianhap;

    public ChiTietSanPham() {
    }

    public ChiTietSanPham(UUID id, int nambh, String mota, int soluongton, Double gianhap) {
        this.id = id;
        this.nambh = nambh;
        this.mota = mota;
        this.soluongton = soluongton;
        this.gianhap = gianhap;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public int getNambh() {
        return nambh;
    }

    public void setNambh(int nambh) {
        this.nambh = nambh;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public int getSoluongton() {
        return soluongton;
    }

    public void setSoluongton(int soluongton) {
        this.soluongton = soluongton;
    }

    public Double getGianhap() {
        return gianhap;
    }

    public void setGianhap(Double gianhap) {
        this.gianhap = gianhap;
    }

    @Override
    public String toString() {
        return "ChiTietSanPham{" +
                "id=" + id +
                ", nambh=" + nambh +
                ", mota='" + mota + '\'' +
                ", soluongton=" + soluongton +
                ", gianhap=" + gianhap +
                '}';
    }
}
