# APT34 C2 Zararlı Yazılımı IoC Çalışması
<p>
    <center>Ali Can Gönüllü | Siber Güvenlik Uzmanı - alicangonullu[at]yahoo.com</center><br>
    Merhabalar,<br>
    Bu yazımda sizlerle birlikte APT34 adlı ransomware ve korunma yöntemlerini inceleyeceğiz.<br>
    Yaptığımız açık kaynak taramalarında taramasını yaptığımız virüs OilRig (APT34) lakaplı İran tarafından desteklenen bir zararlı yazılım grubunun ürünü olduğunu öğrendik.
    <br>
    NOT : Bu yazıyı yazarken grubun İsrail, Lübnan ve BAE ülkelerini hedef aldığını öğrendik.
</p>

# Disclaimer | Yasal Uyarı
<p>
  Bu blog yazısında sağlanan bilgiler yalnızca eğitim ve bilgilendirme amaçlıdır. <b>Bilgisayar korsanlığı, siber saldırılar veya bilgisayar sistemlerine, ağlara veya verilere herhangi bir şekilde yetkisiz erişim de dahil olmak üzere herhangi bir yasa dışı veya etik olmayan faaliyeti</b> teşvik etme veya reklam etme amacı taşımaz.
<br><br>
  Disclaimer: The information provided in this blog post is intended for educational and informational purposes only. It is not intended to encourage or promote any illegal or unethical activities, including hacking, cyberattacks, or any form of unauthorized access to computer systems, networks or data.
</p>

# Bulaşma Şekli
<p>
    Zararlı yazılım DOC formatında sisteme bulaşıp Macro denilen VBNet kodlarıyla çalışmaktadır.
</p>

# Çalışma Mantığı
<p>
    Öncelikle DOC dosyasını çeşitli yazılımlarla açıyoruz.
    <br><br>
    <img src="files.png">
    <br><br>
    DOC uzantılı dosyayı açtığımıza bizi şu tarz bir görüntü karşılıyor. Dosya bilgilerine <a href="apt34_info.txt"> buradan</a> ulaşabilirsiniz.
    <br><br>
    <img src="docx2.png">
    <br><br>
    Yazılımlarla içerisini açtığımızda ise Makroları gayet rahat görebilmekteyiz. Şimdi yapmamız gereken ise makro kodlarını açıp gittiği yollara bakmak. 
    Makro kodlarına bakarak dosyanın oluşturulma tarihini öğreniyoruz.
    <br><br>
    <img src="create_date.png">
    <br><br>
    Fakat incelemeye devam ederken önemli makro kodlarının şifreli olduğunu görüyoruz.
    <br><br>
    <img src="macro_pwd.png">
    <br><br>
    Ve buradan sonra canlı test ortamına sokuyoruz ve tüm aktivitelerini kaydetmeye başlıyoruz. Network hareketlerini dinlesekte herhangi bir network hareketine rastlamıyoruz. Muhtemelen içeriden port veya program başlatıyor veya komut çalıştırıyor diyerek komut incelemeye başlıyoruz.
    Programı çalıştırdığımız anda dosya içeriği de değişmekte ve şu hale gelmektedir
    <br><br>
    <img src="docx.png">
    <br><br>
    Ardından programı başlattığımız anda "C:\ProgramData\Office356\Menorah.exe" konumunda bir dosyayı çağırdığını görüyoruz.
    Menorah.EXE adlı dosyanın öncelikle oluşturulma tarihine baktığımızda 2022 tarihini görüyoruz. Muhtemelen DOC dosyası sadece bir Loader işlevi görmekte
    <br><br>
    <img src="menorah.png">
    <br><br>
    Menorah.EXE'nin header bilgilerine baktığımızda .NET ile yazıldığını görüyoruz ve bu da yazılımın kaynak kodlarının çeşitli programlarla açılabileceğini gösteriyor.
    <br><br>
    <img src="menorah_src.png">
    <br><br>
    Kodlarını incelerken çalıştırıldıktan sonra "tecforsc-001-site1.gtempurl[.]com/ads.asp" adresinin "d" GET değerine çeşitli veriler gönderdiğini görüyoruz.
    Ardından bunun bir C2 server olduğunu ve bu server üzerinden komut gönderildiğini yine kodlarından anlıyoruz.
    <br><br>
    <img src="menorah_src2.png">
    <br><br>
</p>

## Sonuç
<p>
Teknolojinin gittikçe artmasıyla bu tarz DOC formatında gerçekleşen saldırılar artmaktadır. Bu sebeple alınabilecek önlemler ise,
<ul>
    <li>"tecforsc-001-site1.gtempurl[.]com" web sitelerini engellemek ve sürekli web engel listelerini güncel tutmaktır.</li>
    <li>Özellikle işyerlerinde public dediğimiz herkesin bağlanabildiği alanlarda bu korumalar arttırılmalıdır.</li>
</ul>
</p>

# Yazar | Author 
<p>
  Ali Can GÖNÜLLÜ<br>
  Siber Güvenlik Uzmanı - alicangonullu[at]yahoo.com
</p>