# [AkaTime][3] - [Arie Kusuma Atmaja][1] [Time][3] #

[Aka][3], diambil dari Bahasa Jepang, Aka(i), yang artinya "merah". Ya, semerah perhiasan batu [ruby][2]. [Aka][3] juga bisa diartikan singkatan dari nama [ArieKeren][1] sendiri, yaitu [Arie Kusuma Atmaja][1]. 

Jadi, kalau bicara [Aka][3], berarti di pikiran kita akan ingat *Merah*, otomatis kita akan ingat [ruby][2], dan kita akan ingat [ArieKeren][1].

[AkaTime][3] dirilis ke publik karena melihat kebutuhan Pencinta [Ruby Indonesia][2] akan bentuk format waktu sesuai selera yang diinginkan dengan cara yang khas seperti spesialnya filosofi [ruby][2], yaitu dengan cara yang intuitif, bisa bergerak cepat, produktif, tidak cyptic.

# Cara membangun dokumentasi [AkaTime][3] #

Kita bisa menggunakan tool yardoc. Caranya masuklah ke direktori [aka_time][3], lalu ketik :

    yardoc -o documentation<ENTER>

selanjutnya tinggal membuka file

* di Mac OS X, caranya `open documentation/index.html`
* di Linux, caranya `firefox documentation/index.html`
* di Windows, caranya `klik dua kali documentation/index.html`

lewat browser

# Instalasi #

Cara menginstal [AkaTime][3] sangatlah mudah, [AkaTime][3] sudah tersedia berupa [gem][5], jadi gunakan perintah ini untuk menginstal:

    gem install aka_time

Anda tinggal tenang dan terima beres karena library [AkaTime][3] ini tidak bergantung pada library-library rubygem lain sama sekali.

# Petunjuk Pemakaian [AkaTime][3] #

Cara menggunakan [AkaTime][3], juga mudah, yaitu dengan perintah *require* seperti contoh dibawah ini:

    require 'rubygems'
    require 'aka_time'

# Tutorial #

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

Cara pemakaian di [Rails][10] juga sangat sederhana, misalkan kita punya `Model artikel.rb`, yang mana `kelas Artikel` punya field-field sebagai berikut:

* id
* judul
* isi
* created_at

### Langkah pertama ###

Sertakan code ini di `config/environment.rb` rails project Anda

    config.gem 'aka_time'

### Langkah kedua ###

Ketika melakukan query select atau yang biasa dilakukan oleh Railers dengan menggunakan `ActiveRecord find`.

Jadi, misalkan, kita juga punya `controller demo_controller.rb`, dalam `file demo_controller.rb`, kita punya `metode show`, sebagai berikut:

    def show
      @artikel = Artikel.find(params[:id])
    end

di template view haml, kita tinggal menambahkan code sebagai berikut:

    %ul
      %li= "Judul: #{h @artikel.judul}"
      %li= "Isi: #{h @artikel.isi}"
      %li= "Dibuat kapan?: #{@artikel.created_at.indo}"

# PUISI / LAGU [AkaTime][3] #

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

Ya, silakan buat yang biasa main gitar, main piano/organ, main angklung, kalau ada yang mau menyanyikan dan merekam untuk disebar-sebarkan, silakan dengan senang hati :-) [AkaTime][3] ... Waktunya [AkaTime][3] ...

# Kontak #

* [Ketemu Arie][8]
* [Project][3]
* [Documentation][3]
* [Bugs][6]
* [Email][6]
* [Blog ArieKeren][7]

Pencipta [AkaTime][3] bisa dihubungi lewat [email][8]. Silakan jangan malu-malu kucing untuk melayangkan feedback berupa 

* Request ingin kenalan (FYI [ArieKeren][1] suka banget punya banyak kenalan), 
* Request minta bikinkan library lagi (baik yang free software maupun yang berbayar alias bisnis/proyek-proyek gitu), 
* Request minta bikinkan software (baik yang free software maupun yang berbayar), 
* Feedback konstruktif

Anda justru malah akan disuguhi terima kasih yang sangat dari [ArieKeren][1] karena sudah meluangkan waktu buat perhatiannya.

Malu Bertanya Sesat ke Google.

Bila ingin membantu dokumentasi juga boleh banget, silakan saja join jadi Documenter [AkaTime][3] dengan tulisan yang gampang dimengerti dengan tujuan [Rubyist Indonesia][2] memakai library AkaTime ini dengan intuitif dan sangat gampang.

Kalau mau konsultasi, tentang dunia [Ruby][2], atau dunia Rails, silakan lewat [milis Ruby User Group Indonesia][9], 
[email saja][6], [arsip milis][9]

# License #

AkaTime comes with ABSOLUTELY NO WARRANTY; AkaTime is Free Software--Free as in Freedom--so you can redistribute copies of AkaTime and modify it. See LICENSE and COPYING

  [1]: http://ariekusumaatmaja.wordpress.com/
  [2]: http://www.ruby-lang.org/id
  [3]: http://github.com/ariekeren/aka_time
  [4]: http://rake.rubyforge.org/
  [5]: http://gemcutter.org/gems/aka_time
  [6]: mailto:id-ruby@yahoogroups.com
  [7]: http://ariekusumaatmaja.wordpress.com/2007/04/10/aka_time-100-rilis-ariekeren-time-indonesia-rubygems/
  [8]: http://ariekusumaatmaja.wordpress.com/contact-arie
  [9]: http://groups.yahoo.com/groups/id-ruby
  [10]: http://www.rubyonrails.com