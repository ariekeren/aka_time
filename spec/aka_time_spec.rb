#--
# Copyright (c) 2007 ArieKeren <ariekusumaatmaja@gmail.com>
# http://ariekusumaatmaja.wordpress.com
# Recommend me! 
# http://www.workingwithrails.com/person/4899-arie-kusuma-atmaja
#++

active_dir = File.basename(Dir.pwd)
if active_dir == 'spec'
  require "../lib/aka_time"
elsif active_dir =~ /^aka_time/
  require "lib/aka_time"
else
  puts "You're at the wrong directory"
  exit
end

describe "Time" do
  
  before :each do
    @time = Time.mktime(1981, 12, 18, 2, 43, 51)
  end
  
=begin rdoc
detik aka_time return sec, detik
aka_time bisa return 2 jenis, yaitu:
1. Fixnum, ini supaya bisa dikombinasikan dengan aka_angka, 
   (tentu setelah instal dulu rubygem tsb). 
   Mis. tiga puluh detik lagi.
2. String, ini mengikuti default, selain juga karena alasan 
   walau berbentuk angka tapi tidak untuk dihitung
=end  
  it "should return second" do
    @time.sec.should == 51
    @time.detik.should == "51"
  end
  
  it "should return second (sec) as an instance of Fixnum" do
    @time.sec.should be_an_instance_of(Fixnum)
  end
  
  it "should return second (detik) as an instance of String" do
    @time.detik.should be_an_instance_of(String)
  end
  
  # detik bawaan ruby return string
  it "should return Time.strftime(\"%S\")" do
    @time.strftime("%S").should == "51"
  end
  
  it "should return Time.strftime(\"%S\") as an instance of String" do
    @time.strftime("%S").should be_an_instance_of(String)
  end
  
  # menit aka_time, min, menit return Fixnum, String
  it "should return minute" do
    @time.min.should == 43
    @time.menit.should == "43"
  end
  
  it "should return minute (min) as an instance of Fixnum" do
    @time.min.should be_an_instance_of(Fixnum)
  end
  
  it "should return minute (menit) as an instance of String" do
    @time.menit.should be_an_instance_of(String)
  end
  
  # menit bawaan ruby return string
  it "should return Time.strftime(\"%M\")" do
    @time.strftime("%M").should == "43"
  end
  
  it "should return Time.strftime(\"%M\") as an instance of String" do
    @time.strftime("%M").should be_an_instance_of(String)
  end
  
  # jam aka_time, hour, jam return Fixnum, String
  it "should return hour" do
    @time.hour.should == 2
    @time.jam.should == "02"
  end
  
  it "should return hour (hour) as an instance of Fixnum" do
    @time.hour.should be_an_instance_of(Fixnum)
  end
  
  it "should return hour (jam) as an instance of String" do
    @time.jam.should be_an_instance_of(String)
  end
  
  # jam bawaan ruby return string
  it "should return Time.strftime(\"%H\") as an instance of String" do
    @time.strftime("%H").should be_an_instance_of(String)
  end
  
  # year 4 digit aka_time, year, tahun return Fixnum, String
  it "should return year 4 digit" do
    @time.year.should == 1981
    @time.tahun.should == "1981"
  end
  
  it "should return year 2 digit" do
    @time.thn.should == "81"
  end
  
  it "should return year 4 digit (year) as an instance of Fixnum" do
    @time.year.should be_an_instance_of(Fixnum)
  end
  
  it "should return year 4 digit (tahun) as an instance of String" do
    @time.tahun.should be_an_instance_of(String)
  end
  
  it "should return year 2 digit (thn) as an instance of String" do
    @time.thn.should be_an_instance_of(String)
  end
  
  # year bawaan ruby return string
  it "should return Time.strftime(\"%Y\") as an instance of String with size 4" do
    @time.strftime("%Y").should be_an_instance_of(String)
    @time.strftime("%Y").size.should == 4
  end
  
  it "should return Time.strftime(\"%y\") as an instance of String with size 2" do
    @time.strftime("%y").should be_an_instance_of(String)
    @time.strftime("%y").size.should == 2
  end
  
  # bulan aka_time, bulan, bln return string dua-duanya. (bln itu singkatannya)
  it "should return month" do
    @time.bulan.should == "Desember"
    @time.bln.should == "Des"
  end
  
  it "should return month as an instance of String" do
    @time.bulan.should be_an_instance_of(String)
    @time.bln.should be_an_instance_of(String)
  end
  
  # bulan bawaan ruby return string juga (satu saja)
  it "should return Time.strftime(\"%B\") as an instance of String" do
    @time.strftime("%B").should be_an_instance_of(String)
  end
  
  it "should return Time.bln as an instance of String with size 3" do
    @time.bln.should be_an_instance_of(String)
    @time.bln.size == 3
  end
  
  # tanggal aka_time return string (tgl itu singkatannya)
  it "should return tanggal" do
    @time.tanggal.should == "18"
    @time.tgl.should == "18"
  end
  
  it "should return tanggal as an instance of String" do
    @time.tanggal.should be_an_instance_of(String)
    @time.tgl.should be_an_instance_of(String)
  end
  
  # kalau mau tanggal yang instance Fixnum, pakai metode day
  it "should return tanggal (day) as integer" do
    @time.day.should == 18
  end
  
  it "should return tanggal (day) as an instance of Fixnum" do
    @time.day.should be_an_instance_of(Fixnum)
  end
  
  # tanggal bawaan ruby, selain metode day, bisa pakai strftime("%d")
  it "should return Time.strftime(\"%d\")" do
    @time.strftime("%d").should == "18"
  end
  
  it "should return Time.strftime(\"%d\") as an instance of String" do
    @time.strftime("%d").should be_an_instance_of(String)
  end
  
  # hari aka_time return string (hr itu singkatannya)
  it "should return hari" do
    @time.hari.should == "Jumat"
    @time.hr.should == "Jum"
  end
  
  # bawaan ruby pakai Time.strftime("%A") (tapi bahasa Inggris)
  it "should return hari in English" do
    @time.strftime("%A").should == "Friday"
  end
  
  it "should return jam_menit_detik" do
    @time.jam_menit_detik.should == "02:43:51"
    @time.strftime("%X").should == "02:43:51"
  end
  
  # tanggalnya yang disingkat-singkat
  it "should return tanggal_bulan_tahun" do
    @time.tanggal_bulan_tahun.should == "18 Desember 1981"
    @time.tgl_bulan_tahun.should == "18 Desember 1981"
  end
  
  # bulannya yang disingkat-singkat
  it "should return tanggal_bln_tahun" do
    @time.tanggal_bln_tahun.should == "18 Des 1981"
    @time.tgl_bln_tahun.should == "18 Des 1981"
  end
  
  # tahunnya yang disingkat-singkat
  it "should return tanggal_bln_thn" do
    @time.tanggal_bln_thn.should == "18 Des 81"
    @time.tgl_bln_thn.should == "18 Des 81"
  end
  
  it "should return tanggal_bulan_thn" do
    @time.tanggal_bulan_thn.should == "18 Desember 81"
    @time.tgl_bulan_thn.should == "18 Desember 81"
  end
  
  # perhatikan expected_result nya sajalah, susah aku cakap bahasa indonesianya :-P
  it "should return indo" do
    expected_result = "Jumat, 18 Desember 1981 02:43:51"
    @time.indo.should == expected_result
    @time.tanggalan_waktu.should == expected_result
    @time.to_tanggalan_waktu.should == expected_result
    @time.id.should == expected_result
    @time.to_id.should == expected_result
    @time.indonesia.should == expected_result
    @time.to_id.should == expected_result
  end
  
  # ini idenya dari Time.strftime("%x") tinggal dibalik aja kalau versi Indonesianya
  it "should return x" do
    @time.x.should == "18/12/81"
  end
  
end
