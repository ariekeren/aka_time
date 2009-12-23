#--
# Copyright (c) 2007 ArieKeren <ariekusumaatmaja@gmail.com>
# http://ariekusumaatmaja.wordpress.com
# Recommend me! 
# http://www.workingwithrails.com/person/4899-arie-kusuma-atmaja
#++

class Time

  # Nama-nama bulan dalam Bahasa Indonesia
  # Months in Indonesian Language
  # 
  # ==== Returns
  # <Array>:: Array of month
  # 
  BULAN = %w(Januari Februari Maret April Mei Juni
    Juli Agustus September Oktober November Desember
  ).unshift(nil).freeze

  # Nama-nama hari dalam Bahasa Indonesia
  # Days in Indonesian Language
  # 
  # ==== Returns
  # <Array>:: Array of day
  # 
  HARI = %w(Senin Selasa Rabu Kamis Jumat Sabtu).unshift("Minggu").freeze

  # second, alias Time.strftime("%S"). 
  # Untuk mendapatkan detik yang merupakan instan dari Fixnum kita bisa 
  # menggunakan 
  #   Time.sec
  # 
  # ==== Returns
  # <String>:: String of detik
  # 
  def detik
    self.strftime("%S")
  end

  # minute, alias Time.strftime("%M").
  # Untuk mendapatkan menit yang merupakan instan dari Fixnum kita bisa 
  # menggunakan 
  #   Time.min
  # 
  # ==== Returns
  # <String>:: String of menit
  # 
  def menit
    self.strftime("%M")
  end
  
  # hour, alias Time.strftime("%H").
  # Untuk mendapatkan jam yang merupakan instan dari Fixnum kita bisa 
  # menggunakan 
  #   Time.hour
  # 
  # ==== Returns
  # <String>:: String of jam
  # 
  def jam
    self.strftime("%H")
  end

  # tahun bila ditulis komplit (tidak disingkat) maka keluaran tahun 
  # berupa 4 digit (termasuk abad). Misalkan: 1993. Berarti tahun 1993. 
  # alias dari Time.strftime("%Y"). 
  # Untuk mendapatkan tahun yang merupakan instan dari Fixnum kita bisa 
  # menggunakan 
  #   Time.year
  # If you write tahun completely it returns year with century. 
  # Ex: 1993. Means Year 1993. Alias from Time.strftime("%Y")
  # 
  # ==== Returns
  # <String>:: String of year
  # 
  def tahun
    self.strftime("%Y")
  end

  # tahun bila ditulis dengan singkat maka keluaran thn berupa 
  # 2 digit (tidak termasuk abad). Misalkan: 93. Berarti tahun 1993. 
  # alias dari Time.strftime("%y")
  # If you write thn as an abbreviation of tahun, it returns year without 
  # century. Ex. 93. Means Year 1993. Alias from Time.strftime("%Y")
  # 
  # ==== Returns
  # <String>:: String of year
  # 
  def thn
    self.strftime("%y")
  end

  # bulan bila ditulis komplit (tidak disingkat) maka keluaran 
  # bulan juga berupa nama bulan yang komplit / tidak disingkat yang diambil 
  # dari konstanta array BULAN. Misalkan: *Januari*. Berarti bulan Januari. 
  # Untuk mendapatkan bulan yang merupakan instan dari Fixnum kita bisa 
  # menggunakan 
  #   Time.month 
  # (keluarannya angka)
  # If you write bulan completely, it returns name of the month in Bahasa 
  # Indonesia. Ex: *Januari*, means January.
  # 
  # ==== Returns
  # <String>:: String of month
  # 
  def bulan
    BULAN[self.month]
  end

  # bulan bila ditulis dengan singkat, yakni bln, maka keluaran
  # bln juga berupa nama bulan yang disingkat, yaitu hanya 3 huruf pertama saja 
  # dari bulan. Misalkan: *Jan*. Berarti bulan Januari.
  # If you write bln as an abbreviation of bulan, it returns the first 3 characters 
  # of name of the month in Bahasa Indonesia. Ex: *Jan*, means January.
  # 
  # ==== Returns
  # <String>:: String of month
  # 
  def bln
    bulan[0..2]
  end

  # alias dari Time.strftime("%d"). Misalkan: 18. Berarti tanggal 18. 
  # Untuk mendapatkan tanggal yang merupakan instan dari Fixnum kita bisa 
  # menggunakan 
  #   Time.day
  # alias from Time.strftime("%d"). Ex: 18, means date 18.
  # 
  # ==== Returns
  # <String>:: String of date
  # 
  def tanggal
    self.strftime("%d")
  end
  alias :tgl :tanggal

  # alias dari Time.strftime("%w") Indonesia, yang diambil dari konstanta array 
  # HARI, misalkan *Senin*, berarti hari Senin
  # alias from Time.strftime("%w") Indonesia, got from HARI constant, 
  # ex: *Senin*, means Monday
  # 
  # ==== Returns
  # <String>:: String of day
  # 
  def hari
    HARI[self.wday]
  end

  # hari bila ditulis dengan singkat, maka keluaran hanya berupa 3 huruf pertama 
  # saja dari konstanta array HARI. Misalkan *Sen*, berarti hari Senin
  # If you write hr as an abbreviation of hari, it returns the first 3 characters 
  # of the name of the day. Ex: *Sen*, means Monday, alias of Time.strftime("%a") 
  # but in Bahasa Indonesia.
  # 
  # ==== Returns
  # <String>:: String of day
  # 
  def hr
    hari[0..2]
  end

  # HH:MM:SS, misalkan saja: 12:20:30. Berarti Jam 12, Menit 20, Detik 30. 
  # Penggunaan metode jam_menit_detik ini mungkin terasa sangat verbose, tetapi 
  # sangat intuitif untuk orang Indonesia.
  # alias of Time.strftime("%X")
  # 
  # ==== Returns
  # <String>:: String of HH:MM:SS
  # 
  def jam_menit_detik
    self.strftime("%X")
  end

  # Tanggal Bulan Tahun, misalkan: 18 Desember 1981.
  # Date Month Year, ex: 18 Desember 1981, it means 18 December 1981.
  # 
  # ==== Returns
  # <String>:: String of date month year
  # 
  def tanggal_bulan_tahun
    [ tanggal, bulan, tahun ] * ' '
  end
  alias :tgl_bulan_tahun :tanggal_bulan_tahun

  # Tanggal Bln Tahun, misalkan: 18 Des 1981. Bulan saja yang disingkat.
  # Date Month Year, ex: 18 Des 1981, it means 18 Dec 1981. Month is the only 
  # one being abbreviated.
  # 
  # ==== Returns
  # <String>:: String of date month year
  # 
  def tanggal_bln_tahun
    [ tanggal, bln, tahun ] * ' '
  end
  alias :tgl_bln_tahun :tanggal_bln_tahun

  # Tanggal Bln Thn, misalkan: 18 Des 81. Bisa kita perhatikan dan ini sebetulnya 
  # intuitif saja, tahun juga disingkat, selain bulan juga disingkat. Makanya 
  # thn keluarannya 2 digit dan bln keluaran 3 huruf pertama dari bulan
  # Date Month Year, ex: 18 Des 81, it means 18 Dec 81. Month and Year are being 
  # abbreviated both.
  # 
  # ==== Returns
  # <String>:: String of date month year
  # 
  def tanggal_bln_thn
    [ tanggal, bln, thn ] * ' '
  end
  alias :tgl_bln_thn   :tanggal_bln_thn


  # Tanggal Bulan Thn, misalkan: 18 Desember 81. Tahun saja yang disingkat.
  # Date Month Year, ex: 18 Desember 81. Year is the only one being abbreviated.
  # 
  # ==== Returns
  # <String>:: String of date month year
  # 
  def tanggal_bulan_thn
    [ tanggal, bulan, thn ] * ' '
  end
  alias :tgl_bulan_thn :tanggal_bulan_thn

  # metode indo inilah yang paling sering dipakai, jadi tidak perlu lagi bila ada 
  # objek Time menyebutkannya dengan cara "cryptic" seperti : 
  #   Time.now.strftime("%A, %d %B %Y %X")
  # ataupun begini (contoh bila pemakaian dikombinasikan dengan ORM 
  # {ActiveRecord}[http://rubyforge.org/projects/activerecord])
  #   @objek_tabel.created_at.strftime("%A, %d %B %Y %X")
  # yang hasilnya adalah dalam bahasa Inggris, lalu diterjemahkan lagi ke 
  # bahasa Indonesia, karena sekarang cukup dengan ini saja :
  #   Time.now.indo
  # ataupun
  #   @objek_tabel.created_at.indo
  # Cara normal yang verbose atau standar untuk mengungkapkan waktu secara lengkap 
  # menggunakan metode tanggalan_waktu, misalkan: Minggu, 08 April 2007 17:45:33. 
  # Cara yang sangat intuitif di lapangan lihat alias dari metode ini, 
  # yaitu tanggalan_waktu
  # This indo method is very often used, so we don't have to "verbosely" say Time
  # object in "a cryptic way" like this:
  #   Time.now.strftime("%A, %d %B %Y %X")
  # or like this (combined with 
  # {ActiveRecord}[http://rubyforge.org/projects/activerecord] 
  # ORM)
  #   @object.created_at.strftime("%A, %d %B %Y %X")
  # which return a well formatted Time in English, then we have to translate it 
  # again in Bahasa Indonesia. Now you can simply use this:
  #   Time.now.indo
  # or
  #   @object.created_at.indo
  # A verbose way to express a complete day, look at its alias method 
  # tanggalan_waktu, date month year including HH:MM:SS. 
  # 
  # ==== Returns
  # <String>
  # 
  def indo
    [ "#{hari},", tanggal_bulan_tahun, jam_menit_detik ] * ' '
  end
  alias :tanggalan_waktu    :indo 
  alias :to_tanggalan_waktu :indo
  
  alias :id                 :indo
  alias :to_id              :indo
                            
  alias :indonesia          :indo
  alias :to_indonesia       :indo

  # metode ini menampilkan tgl/bln/thn, atau kebalikan dari versi 
  # Time.strftime("%x") yang aslinya berformat Bahasa Inggris yaitu bln/tgl/thn.
  # Keluaran misalkan: 12/4/82. Berarti tanggal 12, bulan 4, tahun 1982.
  # this x method returns tgl/bln/thn, or the reverse version of the English
  # format Time.strftime("%x"). Ex: 12/4/82. It means date 12, month 4, year 1981.
  # 
  # ==== Returns
  # <String>
  # 
  def x
    self.strftime("%x").gsub!(/^(\d{2})\/(\d{2})\/(\d{2})$/, '\2/\1/\3')
  end
  
  # 
  # 
  # ==== Returns
  # <String>
  # 
  def lalu
    start_date    = Time.new
    date_format   = :default
    delta_seconds = (start_date.to_i - self.to_i).floor
    if delta_seconds.abs <= (8_724*60*60)
      distance = jeda(delta_seconds)
      distance + ((delta_seconds < 0 && ' dari sekarang') || ' lalu')
    end
  end
  
  # 
  # 
  # ==== Returns
  # <String>
  # 
  def jeda(seconds)
    case
    when seconds < 1
      "beberapa saat"
    when seconds < 60
      "#{seconds} detik"
    when seconds < 3_600
      "#{(seconds / 60).round} menit"
    when seconds < 86_400
      "#{(seconds / 3_600).round} jam"
    when seconds < 604_800
      "#{(seconds / 86_400).round} hari"
    when seconds < 2_592_000
      "#{(seconds / 604_800).round} minggu"
    when seconds < 31_536_000
      "#{(seconds / 2_592_000).round} bulan"
    else
      "#{(seconds / 31_536_000).round} tahun" 
    end
  end
  
end
