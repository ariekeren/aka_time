#--
# Copyright (c) 2007 ArieKeren <ariekusumaatmaja@gmail.com>
# http://ariekusumaatmaja.wordpress.com
# Recommend me! 
# http://www.workingwithrails.com/person/4899-arie-kusuma-atmaja
#++

require 'test/unit'
require '../lib/aka_time'

class AkaTimeTest < Test::Unit::TestCase
  
  def setup
    @time = Time.mktime(1981, 5, 18, 22, 15, 30)
    @time2 = Time.mktime(1981, 12, 18, 2, 43, 51)
  end
  
  # Time.strftime("%S") Indonesia
  def test_detik
    assert_equal(30, @time.sec)
    assert_equal(51, @time2.sec)
    assert_instance_of(Fixnum, @time.sec)
    assert_equal('30', @time.detik)
    assert_equal('51', @time2.detik)
    assert_instance_of(String, @time.detik)
  end
  
  # Time.strftime("%M") Indonesia  
  def test_menit
    assert_equal(15, @time.min)
    assert_equal(43, @time2.min)
    assert_instance_of(Fixnum, @time.min)
    assert_equal('15', @time.menit)
    assert_equal('43', @time2.menit)
    assert_instance_of(String, @time.menit)
  end
  
  # Time.strftime("%H") Indonesia
  def test_jam
    assert_equal(22, @time.hour)
    assert_equal(2, @time2.hour)
    assert_instance_of(Fixnum, @time.hour)
    assert_equal('22', @time.jam)
    assert_equal('02', @time2.jam)
    assert_instance_of(String, @time.jam)
  end
  
  # Time.strftime("%Y") Indonesia, alias year, 4 digit
  def test_tahun
    assert_equal(1981, @time.year)
    assert_equal(1981, @time2.year)
    assert_instance_of(Fixnum, @time.year)
    assert_equal('1981', @time.tahun)
    assert_equal('1981', @time2.tahun)
    assert_instance_of(String, @time.tahun)
  end
  
  # Time.strftime("%y") Indonesia, 2 digit / tidak pakai abad / ribuan.
  def test_thn
    assert_equal('81', @time.thn)
    assert_equal('81', @time2.thn)
    assert_instance_of(String, @time.thn)
  end
  
  # Time.strftime("%B") Indonesia
  def test_bulan
    assert_equal('Mei', @time.bulan)
    assert_equal('Desember', @time2.bulan)
    assert_instance_of(String, @time.bulan)
  end
  
  # Time.strftime("%b") Indonesia
  def test_bln
    assert_equal('Mei', @time.bln)
    assert_equal('Des', @time2.bln)
    assert_instance_of(String, @time.bln)
  end
  
  # Time.strftime("%d") Indonesia
  def test_tanggal
    assert_equal(18, @time.day)
    assert_instance_of(Fixnum, @time.day)
    assert_equal('18', @time.tanggal)
    assert_instance_of(String, @time.tanggal)
  end
  
  # alias tanggal
  def test_tgl
    assert_equal(18, @time.day)
    assert_instance_of(Fixnum, @time.day)
    assert_equal('18', @time.tgl)
    assert_instance_of(String, @time.tgl)
  end
  
  # wday Indonesia
  def test_hari
    assert_equal('Senin', @time.hari)
    assert_equal('Jumat', @time2.hari)
    assert_instance_of(String, @time.hari)
  end
  
  def test_hr
    assert_equal('Sen', @time.hr)
    assert_equal('Jum', @time2.hr)
    assert_instance_of(String, @time.hr)
  end
  
  # Time.strftime("%X")
  def test_jam_menit_detik
    assert_equal(@time.strftime("%X"), @time.jam_menit_detik)
    assert_equal('22,15,30'.gsub(/,/, ':'), @time.jam_menit_detik)
  end
  
  def test_tanggal_bulan_tahun
    assert_equal('18 Mei 1981', @time.tanggal_bulan_tahun)
    assert_equal('18 Desember 1981', @time2.tanggal_bulan_tahun)
  end
  
  # alias tanggal_bulan_tahun
  def test_tgl_bulan_tahun
    assert_equal('18 Mei 1981', @time.tgl_bulan_tahun)
    assert_equal('18 Desember 1981', @time2.tgl_bulan_tahun)
  end
  
  def test_tanggal_bln_tahun
    assert_equal('18 Mei 1981', @time.tanggal_bln_tahun)
    assert_equal('18 Des 1981', @time2.tanggal_bln_tahun)
  end
  
  # alias tanggal_bln_tahun
  def test_tgl_bln_tahun
    assert_equal('18 Mei 1981', @time.tgl_bln_tahun)
    assert_equal('18 Des 1981', @time2.tgl_bln_tahun)
  end
  
  def test_tanggal_bulan_thn
    assert_equal('18 Mei 81', @time.tanggal_bulan_thn)
    assert_equal('18 Desember 81', @time2.tanggal_bulan_thn)
  end
  
  # alias tanggal_bulan_thn
  def test_tgl_bulan_thn
    assert_equal('18 Mei 81', @time.tgl_bulan_thn)
    assert_equal('18 Desember 81', @time2.tgl_bulan_thn)
  end
  
  def test_tanggal_bln_thn
    assert_equal('18 Mei 81', @time.tanggal_bln_thn)
    assert_equal('18 Des 81', @time2.tanggal_bln_thn)
  end
  
  # alias tanggal_bln_thn
  def test_tgl_bln_thn
    assert_equal('18 Mei 81', @time.tgl_bln_thn)
    assert_equal('18 Des 81', @time2.tgl_bln_thn)
  end
  
  def test_indo
    assert_equal('Senin, 18 Mei 1981 22:15:30', @time.indo)
    assert_equal("Jumat, 18 Desember 1981 02:43:51", @time2.indo)
  end
  
  # alias indo
  def test_tanggalan_waktu
    assert_equal('Senin, 18 Mei 1981 22:15:30', @time.tanggalan_waktu)
    assert_equal("Jumat, 18 Desember 1981 02:43:51", @time2.tanggalan_waktu)
  end
  
  # alias indo
  def test_indonesia
    assert_equal('Senin, 18 Mei 1981 22:15:30', @time.indonesia)
    assert_equal("Jumat, 18 Desember 1981 02:43:51", @time2.indonesia)
  end
  
  # alias indo
  def test_id
    assert_equal('Senin, 18 Mei 1981 22:15:30', @time.id)
    assert_equal("Jumat, 18 Desember 1981 02:43:51", @time2.id)
  end
  
  # %x Indonesia
  def test_x
    assert_equal('18/05/81', @time.x)
    assert_equal('18/12/81', @time2.x)
    # versi %x asli
    assert_equal('05/18/81', @time.strftime("%x"))
    assert_equal('12/18/81', @time2.strftime("%x"))
  end
  
end