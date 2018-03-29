package com.example.demo.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="tintuc")
public class tintuc {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String tieude;
	private String noidung;
	private String linkanh;
	private String diadiem;
	private String diengia;
	@Temporal(TemporalType.TIMESTAMP)
	private Date ngaytao;
	
	public tintuc() {}
	
	public tintuc(int id, String tieude, String noidung, String linkanh, String diadiem, Date ngaytao, String diengia) {
		super();
		this.id = id;
		this.tieude = tieude;
		this.noidung = noidung;
		this.linkanh = linkanh;
		this.diadiem = diadiem;
		this.ngaytao = ngaytao;
		this.diengia = diengia;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTieude() {
		return tieude;
	}

	public void setTieude(String tieude) {
		this.tieude = tieude;
	}

	public String getNoidung() {
		return noidung;
	}

	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}

	public String getLinkanh() {
		return linkanh;
	}

	public void setLinkanh(String linkanh) {
		this.linkanh = linkanh;
	}

	public String getDiadiem() {
		return diadiem;
	}

	public void setDiadiem(String diadiem) {
		this.diadiem = diadiem;
	}

	public Date getNgaytao() {
		return ngaytao;
	}

	public void setNgaytao(Date ngaytao) {
		this.ngaytao = ngaytao;
	}

	public String getDiengia() {
		return diengia;
	}

	public void setDiengia(String diengia) {
		this.diengia = diengia;
	}
}
