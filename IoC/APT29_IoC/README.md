<link rel="stylesheet" href="../../CSS/style.css" type="text/css">

# APT29 (CozyBear) Zararlı Yazılımı IoC Çalışması

<br><br>
<img src="russian_salad.png">
<br><br>
<p>
    <center>Ali Can Gönüllü | Siber Güvenlik Uzmanı <br>alicangonullu[at]yahoo.com</center><br>
    Merhabalar,<br>
    Arkadaşlar bu yazımda sizlerle beraber APT29 adlı ve Rusya bağlantılı grubun zararlı yazılımını inceleyeceğiz.
</p>

# Disclaimer | Yasal Uyarı
<p>
  Bu blog yazısında sağlanan bilgiler yalnızca eğitim ve bilgilendirme amaçlıdır. <b>Bilgisayar korsanlığı, siber saldırılar veya bilgisayar sistemlerine, ağlara veya verilere herhangi bir şekilde yetkisiz erişim de dahil olmak üzere herhangi bir yasa dışı veya etik olmayan faaliyeti</b> teşvik etme veya reklam etme amacı taşımaz.
<br><br>
  Disclaimer: The information provided in this blog post is intended for educational and informational purposes only. It is not intended to encourage or promote any illegal or unethical activities, including hacking, cyberattacks, or any form of unauthorized access to computer systems, networks or data.
</p>

# Grup ve Bulaşma Şekli Hakkında Bilgi
<p>
    CozyBear, yani APT29 mahlasıyla bilinen bu grubun bu yazılımı bir siber-espiyonaj (istihbarat) yazılımıdır. Amacı içeriden uzun süre veri toplamak ve bunu proxy aracığıyla kaynağa aktarmaktır.
    <br><br>
    Öncelikle zararlı yazılım WinRAR adlı yazılımın zafiyetini kullanarak zararlı yazılımı aktif etmektedir.<br>
    Bu zararlı yazılımla Azerbaycan, İtalya, Yunanistan ve Romanya başta olmak üzere pek çok ülkenin büyükelçiliklerini hedef almıştır.<br>
    <br><br>
    <img src="target_countries.png">
    <br><br>
    Bulaşma mantığı olarak WinRAR dosyasının içerisine bir payload yüklenir ve RAR dosyası açılır açılmaz bir uzak sunucudan dosya çağırılır. Payload oluşturma örneğine <a href="https://packetstormsecurity.com/files/174573/WinRAR-Remote-Code-Execution.html">buradan</a> ulaşabilirsiniz.
</p>

# Çalışma Mantığı
<p>
    Öncelikle zararlı yazılım WinRAR adlı yazılımın "CVE-2023-38831" kodlu zafiyetini kullanarak bulaşmaktadır.<br>
    Zararlı yazılımın bulaştığı bilgisayar RAR içerisindeki bir BAT dosyası (MD5: ff7d1fb202bac38345be8cf267fa6688) yardımıyla uzaktan bir kod çağırmaktadır.
    RAR içeriğine baktığımızda bir adet klasör ve bir adet PDF dosyası bulunmaktadır.
    <br><br>
    <img src="rar_inside.png">
    <br><br>
    Klasörün içerisine baktığımızda ise bir adet CMD dosyası ile birkaç resim dosyası görmekteyiz.<br>
    Fark etmeniz güç fakat klasörün dışındaki PDF dosyasının uzantısı ".pdf_" şeklinde görünüyor.
    <br><br>
    <img src="rar_inside2.png">
    <br><br>
    İncelemeler esnasında bir iletişim maili bıraktıklarını da görüyoruz
    <br><br>
    <img src="contact_info.png">
    <br><br>
    Ardından klasörün içerisindekilere bakmaya başlıyoruz.
    <br><br>
    <img src="folder_inside.png">
    <br><br>
     Klasör içeriğini incelerken CMD dosyasını incelemeye başlarken ilk gözümüze takılan b125.ps1 dosyasının  d287-206-123-149-139.ngrok-free[.]app adresinden çağırılıyor oluşu oluyor.
    <br><br>
    <img src="cmd_inside.png">
    <br><br>
    Ardından fark ettiğimiz ikinci veri ise belirli hex değerlerini text dosyasına yazdırıp ardından pdf dosyası olarak biçimlendirmesi oluyor ve baktığımızda önceden gördüğümüz ".PDF_" uzantılı dosyayla aynı içeriğe sahip olduğunu görüyoruz. Hex içeriğine <a href="apt29_pdf.txt">buradan</a> ulaşabilirsiniz.
    <br><br>
    <img src="pdf_file.png">
    <br><br>
    Buradan çıkaracağımız pek bir sonuç olmayınca PS1 dosyasının peşine düşüyoruz. Fakat NGROK uygulaması kapatıldığı için sonuç alamıyoruz. Muhtemelen bir shell kodunu uyguladığını ve C2 Server'a bağlandığını açık kaynaklardan bulmak durumunda kalıyoruz.
    <br><br>
    <img src="ngrok_error.png">
    <br><br>
</p>

# Güncelleme
<p>
    RAR dosyasının içeriğini incelerken diğer RAR dosyalarından farklı olarak "PK" olarak paketlendiğini fark ettim ve bu nedenle yeni bir YARA kuralı (APT29_Ransom2) daha ekledim
    <br><br>
    <img src="normal_vs_cve.png">
    <br><br>
</p>

# Sonuç
<p>
    WinRAR'ın "CVE-2023-38831" kodlu zafiyetini kullanarak içerisinde kod çalıştıran bu dosya ile NGROK Proxy üzerinden PS1 dosyası çalıştırılarak bir backdoor oluşturup ilgili bilgisayarda uzun süre veri toplayan bu zararlı yazılımı buluyoruz. Önlem olarak ise YARA kurallarını paylaşıyorum.
    <br><br>
    <a href="apt29_rules.yara">YARA kuralları için tıklayın</a>
</p>

# Yazar | Author 
<p>
  Ali Can GÖNÜLLÜ<br>
  Siber Güvenlik Uzmanı<br>
  alicangonullu[at]yahoo.com
</p>