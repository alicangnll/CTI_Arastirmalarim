<link rel="stylesheet" href="../../CSS/style.css" type="text/css">

# IRATA Ransomware IoC Analizi | İran Kaynaklı Mobil Ransomware

<!-- SEO Meta Tags -->
<meta name="description" content="IRATA İran kaynaklı mobil ransomware analizi ve IoC çalışması. Siber güvenlik uzmanı Ali Can Gönüllü'den IRATA ransomware detaylı analizi.">
<meta name="keywords" content="IRATA, ransomware, İran, malware analizi, IoC, threat intelligence, siber güvenlik, mobil ransomware, zararlı yazılım">
<meta name="author" content="Ali Can Gönüllü">
<meta name="robots" content="index, follow">
<meta property="og:title" content="IRATA Ransomware IoC Analizi">
<meta property="og:description" content="İran kaynaklı IRATA mobil ransomware detaylı analizi ve IoC çalışması.">
<meta property="og:type" content="article">
<meta property="og:url" content="https://github.com/alicangonullu/CTI_Arastirmalarim/IoC/IRATA_IoC/">
<meta property="og:image" content="https://alicangnll.github.io/CTI_Arastirmalarim/IoC/IRATA_IoC/smali.png">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="IRATA Ransomware IoC Analizi">
<meta name="twitter:description" content="İran kaynaklı mobil ransomware detaylı analizi.">
<meta name="twitter:image" content="https://github.com/alicangonullu/CTI_Arastirmalarim/IoC/IRATA_IoC/smali.png">

<p>
    <center><strong>Ali Can Gönüllü</strong> | Siber Güvenlik Uzmanı | <a href="mailto:alicangonullu@yahoo.com">alicangonullu@yahoo.com</a><br>
    <em>LinkedIn: <a href="https://linkedin.com/in/alicangonullu" target="_blank">linkedin.com/in/alicangonullu</a></em></center><br>
    <strong>Merhabalar,</strong><br>
    Arkadaşlar bu yazımda sizlerle beraber <strong>İran kaynaklarını hedef alan IRATA</strong> adlı mobil ransomware yazılımını detaylıca inceleyeceğiz.
</p>

# Disclaimer | Yasal Uyarı
<p>
  Bu blog yazısında sağlanan bilgiler yalnızca eğitim ve bilgilendirme amaçlıdır. <b>Bilgisayar korsanlığı, siber saldırılar veya bilgisayar sistemlerine, ağlara veya verilere herhangi bir şekilde yetkisiz erişim de dahil olmak üzere herhangi bir yasa dışı veya etik olmayan faaliyeti</b> teşvik etme veya reklam etme amacı taşımaz.
<br><br>
  Disclaimer: The information provided in this blog post is intended for educational and informational purposes only. It is not intended to encourage or promote any illegal or unethical activities, including hacking, cyberattacks, or any form of unauthorized access to computer systems, networks or data.
</p>

# Aşama 1 - Ransomware Kodlarını Dekripte Etme
<p>
    Öncelikle Ransomware'in bulaşma çeşidinden bahsedecek olursak bir eğitim yazılımı gibi bulaşmaktadır. Hedef Iran vatandaşları olduğu için yazılar tamamen Farsça yazılmış durumda.<br>
    Derhal kaynak kodlarını ayırıyoruz ve içeriğine bakıyoruz.
    <br><br>
    <img src="smali.png" />
    <br><br>
    Kaynak kodları içerisinde gezerken cihazın network bilgilerini istediğini fark ediyoruz.
    <br><br>
    <img src="netw.png" />
    <br><br>
    Cihazın sistem bilgilerini aldığını görüyoruz
    <br><br>
    <img src="devinfo.png" />
    <br><br>
    Cihazda yüklü uygulamaların listesini aldığını görüyoruz ve bu aşamada acaba zararlı yazılımın kripto / fidye amaçlı mı çalıştığını düşünmeye başlıyoruz.
    <br><br>
    <img src="installedapps.png" />
    <br><br>
    Cihazda çalışan tüm uygulamaların listesini getiriyor
    <br><br>
    <img src="runningapps.png" />
    <br><br>
    Veee bingo! Aradığımızı buluyoruz. Dosyaları kriptolayan ve kriptoyu açan kodu buluyoruz fakat bu ransomware grubu pek acemi zira kriptoladıkları string değerini değişkenler arasına gizlemişler.
    <br><br>
    <img src="crypt_decrypt.png" />
    <br><br>
    Kriptoyu ise "5b69787a56c3ef1eca41b9d2221daf5a83ae19789e13bcdffaeff1640516f67a56b9f5a7f0e83f453fb41c654f042a48fda9b8500fda2eec2d5a55712f37be7c211df4d284f, 7a693118108a825acacc9080bea66a356436" koduyla kriptoladıkları açıkça görülmektedir.
    <br><br>
    <img src="key.png" />
    <br><br>
</p>

# Aşama 2 - Network Analizi
<p>
    Ardından biraz daha araştırma yaparken tüm bu kodların "iirir[.]com" ve "sokht24[.]com" adlı bir web sitesine bağlandığını ve bu web sitesinda bulunan "log.php" dosyasına log atıp "web.txt" dosyasından cihaz kaydını yaptığını görüyoruz.
    <br>
    <img src="netmap.png" />
    <br>
    Bu aşamada bir TXT dosyası buluyoruz
    <br>
    <img src="textfile.png" />
    <br>
    Ardından sokht24 sitesine bakıyoruz. 
    <br>
    <img src="website.png" />
    <br>
    "Web sitesi sürümü yalnızca Android cihazlarda kullanılabilir. Android cihazla gir" mesajı alıyoruz.
    Android cihazla girdiğimizde ise "home.php" adresine yönlendirip 404 mesajı alıyoruz. Muhtemelen bu da klasik bir loglama veya kriptolama keylerini aktaran bir script olmalı diye düşünüyoruz.
</p>

# Aşama 3 - Sonuç
<p>
Teknolojinin gittikçe mobilleşmesiyle telefonlara bulaşan virüsler çok daha tehlikeli hale gelmiştir. Bu virüsler sadece fidye amacıyla olduğu gibi farklı istihbarat faaliyetleri için de kullanılabilmektedir.
Bu konuda alınabilecek önlemler ise,
<ul>
    <li>"sokht24[.]com" ve "iirir[.]com" web sitelerini engellemek ve sürekli web engel listelerini güncel tutmaktır.</li>
    <li>Özellikle işyerlerinde public dediğimiz herkesin bağlanabildiği alanlarda bu korumalar arttırılmalıdır.</li>
</ul>
</p>

# Yazar | Author 
<p>
  Ali Can GÖNÜLLÜ<br>
  Siber Güvenlik Uzmanı<br>
  alicangonullu[at]yahoo.com
</p>