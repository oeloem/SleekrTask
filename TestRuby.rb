#!/usr/bin/ruby

#ini array yang berisi pertanyaan
$pertanyaan = ["rialem","lonab","torom","angbu","osak akik","mrakeki","ppelun","pito","ladnes","laseg"]

#ini array yang berisi jawaban
$jawaban = ["lemari","balon","motor","bunga","kaos kaki","keramik","pulpen","topi","sendal","gelas"]

#ini array urutan pertanyaan yang sudah di random, sehingga setiap game dimulai, urutan pertanyaan akan di random
$randomPertanyaan  = [0,1,2,3,4,5,6,7,8,9].to_a.shuffle

#ini adalah variabel untuk mencatat skor
$skor = 0

# ini adalah variabel untuk mencatat level
$level = 1

#ini variabel untuk looping
$i = 0

#memberi tahu user level ketika pertama kali game dimulai
puts "Anda Sekarang level #{$level}"

#while disini akan looping hingga indeks terbesar array pertanyaan
while $i <= $pertanyaan.length - 1

  #Menampilkan pertanyaan dari array pertanyaan dengan indeks yang sudah dirandom
  puts "Coba perbaiki kata ini : #{$pertanyaan[$randomPertanyaan[$i]]}"

  #menerima inputan user tanpa new line
  $userInput = gets.chomp
  
  #membandingkan jawaban dengan hasil input user
  if $jawaban[$randomPertanyaan[$i]] == $userInput
    # jika jawaban benar, maka skor akan bertambah 1
    $skor = $skor + 1

    #lalu memberitahu poin user saat ini
    puts "BENAR! poin anda #{$skor}"

    #mengecek jika poin user saat ini habis dibagi 2, maka level user akan naik
    if $skor%2==0
      $level = $level + 1
      puts "Selamat! Sekarang anda level #{$level}"
    end

    #menaikan nilai variabel untuk looping, sehingga lanjut ke pertanyaan berikutnya (yang berbeda)
    $i = $i+1
  else
    # jika jawaban salah, akan tampil pesan jawaban salah, dan akan menampilkan lagi pertanyaan yang sama untuk dicoba
    puts "jawaban anda salah, silakan coba lagi"
  end
end
