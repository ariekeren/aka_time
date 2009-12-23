# :title: AkaTime

module AkaTime
module Doc #:doc:
=begin rdoc

== SINOPSIS TUTORIAL AkaTime

  sayang:~ arie$ irb
  irb(main):001:0> require 'rubygems'
  => true
  irb(main):002:0> require 'aka_time'
  => true
  irb(main):004:0> waktu = Time.mktime(2007, 4, 8, 14, 8, 45)
  => Sun Apr 08 14:08:45 +0700 2007
  irb(main):005:0> waktu.indo
  => "Minggu, 08 April 2007 14:08:45"
  irb(main):006:0> waktu.hari
  => "Minggu"
  irb(main):007:0> waktu.tanggal
  => "08"
  irb(main):008:0> waktu.bulan
  => "April"
  irb(main):009:0> waktu.bln
  => "Apr"
  irb(main):010:0> waktu.tahun
  => "2007"
  irb(main):011:0> waktu.thn
  => "07"
  irb(main):012:0> waktu.hari
  => "Minggu"
  irb(main):013:0> waktu.hr
  => "Min"
  irb(main):014:0>       

Cara pemakaian di {Rails}[http://www.rubyonrails.com] juga sangat sederhana, 
misalkan kita punya Model artikel.rb, yang mana 
kelas Artikel punya field-field sebagai berikut:

* id
* judul
* isi
* created_at

Nah, maka tatkala melakukan query select atau yang biasa dilakukan oleh Railers dengan 
menggunakan ActiveRecord find.

Jadi, misalkan, caranya begini:

kita juga punya controller, namanya demo_controller.rb, dalam file demo_controller.rb, 
kita punya metode show, sebagai berikut:

  def show
    @artikel = Artikel.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    redirect_to_index("Artikel tidak ditemukan #{e.message}")
  end

di template view nya, kita tinggal menambahkan sebagai berikut:

  <p>
    Judul: <h1><%= h @artikel.judul %></h1>
  </p>
  <p>
    Isi: <%= h @artikel.isi %>
  </p>
  <p>
    Dibuat kapan?: <%= @artikel.created_at.indo %>
  </p>

== PUISI / LAGU AkaTime

  AkaTaaaaim...
  Ada Aka, Ada Merah...
  Kalau Merah, berarti Ruby...
  
  AkaTaaaaim...
  Inget Aka, Inget ArieKeren...
  Kalau Aka, berarti Arie...
  
  Silaaau...
  Ada Merah, Ada Aka, Ada ArieKeren...
  Hey! Indonesia Merah! 
  Merah Indonesia Lambang Berani... 
  Merah Ruby Indonesia Lambang Elegan...

---

ya, dipersilakan buat yang biasa main gitar, main piano/organ, main angklung, 
kalau ada yang mau menyanyikan dan merekam untuk disebar-sebarkan, dipersilakan 
dengan senang hati :-) AkaTime ... 
Waktunya {Aka}[http://rubyforge.org/projects/aka/] ...

= AkaTime - {Arie Kusuma Atmaja}[http://ariekusumaatmaja.wordpress.com/] Time




=end
module SYNOPSIS #:doc:
end
end
end
