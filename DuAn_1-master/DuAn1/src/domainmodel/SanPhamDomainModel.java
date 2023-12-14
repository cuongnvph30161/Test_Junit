/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package domainmodel;

import java.sql.*;

import javax.swing.ImageIcon;

/**
 *
 * @author Admin
 */
public class SanPhamDomainModel {

    private int maSanPham;
    private String tenSanPham;
    private int trangThai;
    private String motTa;
    private Blob anh;
    private ImageIcon anhSanPham;


    public SanPhamDomainModel() {
    }

    public SanPhamDomainModel(int maSanPham, String tenSanPham, int trangThai, String motTa, Blob anh) {
        this.maSanPham = maSanPham;
        this.tenSanPham = tenSanPham;
        this.trangThai = trangThai;
        this.motTa = motTa;
        this.anh = anh;
    }

    public int getMaSanPham() {
        return maSanPham;
    }

    public void setMaSanPham(int maSanPham) {
        this.maSanPham = maSanPham;
    }

    public String getTenSanPham() {
        return tenSanPham;
    }

    public void setTenSanPham(String tenSanPham) {
        this.tenSanPham = tenSanPham;
    }

    public int getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }

    public String getMotTa() {
        return motTa;
    }

    public void setMotTa(String motTa) {
        this.motTa = motTa;
    }

    public Blob getAnh() {
        return anh;
    }

    public void setAnh(Blob anh) {
        this.anh = anh;
    }

	public ImageIcon getAnhSanPham() {
		return anhSanPham;
	}

	public void setAnhSanPham(ImageIcon anhSanPham) {
		this.anhSanPham = anhSanPham;
	}

    @Override
    public String toString() {
        return "SanPhamDomainModel{" +
                "maSanPham=" + maSanPham +
                ", tenSanPham='" + tenSanPham + '\'' +
                ", trangThai=" + trangThai +
                ", motTa='" + motTa + '\'' +
                ", anh=" + anh +
                ", anhSanPham=" + anhSanPham +
                '}';
    }
    @Override
    public boolean equals(Object obj){
        return  this.toString().equals(obj.toString());
    }
}
