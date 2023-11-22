# HelloKitty Zararlı Yazılımı IoC Çalışması
<p>
    <center>Ali Can Gönüllü | Siber Güvenlik Uzmanı - alicangonullu[at]yahoo.com</center><br>
    Merhabalar,<br>
    Bu yazımda sizlerle birlikte HelloKitty adlı kaynak kodları sızdırılmış olan ransomware ve korunma yöntemlerini inceleyeceğiz.
    Öncelikle bu haberi şahsen Twitter / X üzerinde duydum ve kaynak kodlarını vx-underground adlı malware analizi yapan GitHub sayfasından indirdim ve incelemeye başladım.
    Kaynak : <a href="https://twitter.com/3xp0rtblog/status/1710387356979560800">https://twitter.com/3xp0rtblog/status/1710387356979560800</a>
    <br><br>
    <img src="info.png">
    <br><br>
</p>

# Disclaimer | Yasal Uyarı
<p>
  Bu blog yazısında sağlanan bilgiler yalnızca eğitim ve bilgilendirme amaçlıdır. <b>Bilgisayar korsanlığı, siber saldırılar veya bilgisayar sistemlerine, ağlara veya verilere herhangi bir şekilde yetkisiz erişim de dahil olmak üzere herhangi bir yasa dışı veya etik olmayan faaliyeti</b> teşvik etme veya reklam etme amacı taşımaz.
<br><br>
  Disclaimer: The information provided in this blog post is intended for educational and informational purposes only. It is not intended to encourage or promote any illegal or unethical activities, including hacking, cyberattacks, or any form of unauthorized access to computer systems, networks or data.
</p>

# Yayılış Biçimi
<p>
    Zararlı yazılım genel olarak her şekilde bulaşabilmektedir. Linux için ELF, macOS için DMG ve Windows için EXE gibi pek çok formatta bu virüsü görebilmekteyiz. Fakat Windows tarafında asıl tehdidi yaratmaktadır.
</p>

# Çalışma Mantığı
<p>
    Öncelikle kodlarını ilk açtığımızda düzene baktığımızda Win32 kütüphanelerinin kullanılmasından elimizdeki sürümünün "Windows" sürümü olduğunu anlıyoruz.
    <br><br>
    <img src="windows.png" />
    <br><br>
    Bu analizimizi yaptıktan sonra kodlarımızda dosya ve klasör şifreleme algoritmaları olduğunu görüyoruz. Bu da bir fidye zararlı yazılımı olduğu ve bir kaynakla haberleştiği konusunda şüphemizi arttırıyor.
    <br><br>
    <img src="files.png" />
    <br><br>
    Biraz daha araştırdığımızda şifre çözmeden önce Windows WMI arayüzünü kullanarak ShadowCopy adı verilen Windows tarafından dosyaların tutulduğu gizli alanların varlığına dair sorgu yapıldığını görüyoruz. <a href="https://github.com/alicangnll/pyshadow">ShadowCopy hakkında detaylı bilgi için konumu okuyabilirsiniz.</a>
    <br><br>
    <img src="shadowcpy.png" />
    <br><br>
    Ardından bazı uygulamaları sistemde tarayıp onları tamamen durdurduğunu görüyoruz. Muhtemelen sistemde dosya ve klasör şifrelemenin doğru bir şekilde yapılması ve özellikle veritaban vb. dosyaların bozulmaması için bu işlem yapılıyor.
    <br><br>
    <img src="killed.png" />
    <br><br>
    Aynı şekilde güvenlik duvarı yazılımlarının da internet bağlantılarının kesildiğini görüyoruz.
    <br><br>
    <img src="killed2.png" />
    <br><br>
    Ardından taskill.exe , net.exe ve calculator.exe ile uygulama tetikleyen bir kesim kod görüyoruz. Fakat bunlar yorum satırında olduğu için buraya ekran görüntülerini eklemeye gerek duymadım.
    Kriptolamadan önce ağ ve yerel disklerin listesini çıkarıyor. Bu şekilde diğer ağ cihazlarına da ulaşmayı planlıyor.
    <br><br>
    <img src="driverscan.png" />
    <br><br>
    <img src="network.png" />
    <br><br>
    Klasik bir ransomware. Şuana kadar beni şaşırtmadı.
    Kriptolama esnasında sistemin bozulmaması ve kurbanının görmesi için bazı dizinleri ve dosyaları hariç olarak işaretliyor.
    <br><br>
    <img src="cryptblacklist.png" />
    <br><br>
    Ardından en bomba yere geliyoruz. Tam da tahmin ettiğimiz gibi bir Onion web sitesi üzerinden kendisinin yüklendiğine dair haber gönderiyor ve her fidye yazılımında olduğu gibi bir not bırakıyor.
    <br><br>
    <img src="notes_onion_connection.png" />
    <br><br>
    Bu kaynak kodunda onion sitesi geçmiyor fakat aynı zararlı yazılımın farklı versiyonlarına baktığımızda <b>"gunyhng6pabzcurl7ipx2pbmjxpvqnu6mxf2h3vdeenam34inj4ndryd.onion/SIFRE_SHA_KODU"</b> adresine dosyaları şifrelediği SHA kodunu ve DOSYA ŞİFRELERİNİ İKİ GET İSTEĞİ İÇERİSİNDE GÖNDERİYOR.
</p>

# Çözüm Önerisi
<ul>
    <li>Ağ üzerinde Proxy kullanımını kapatma</li>
    <li>Onion sitelere ulaşmayı sağlayan TOR Proxy'lerini güvenlik duvarı üzerinden engelleme</li>
</ul>

# Yazar | Author 
<p>
  Ali Can GÖNÜLLÜ<br>
  Siber Güvenlik Uzmanı - alicangonullu[at]yahoo.com
</p>