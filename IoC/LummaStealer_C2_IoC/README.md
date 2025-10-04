<link rel="stylesheet" href="../../CSS/style.css" type="text/css">

# LummaStealer C2 Malware IoC Analizi | Stealer Malware

<!-- SEO Meta Tags -->
<meta name="description" content="LummaStealer C2 malware analizi ve IoC çalışması. Siber güvenlik uzmanı Ali Can Gönüllü'den LummaStealer stealer malware detaylı analizi.">
<meta name="keywords" content="LummaStealer, C2, malware analizi, IoC, threat intelligence, siber güvenlik, stealer, zararlı yazılım, C2 server">
<meta name="author" content="Ali Can Gönüllü">
<meta name="robots" content="index, follow">
<meta property="og:title" content="LummaStealer C2 Malware IoC Analizi">
<meta property="og:description" content="LummaStealer stealer malware detaylı analizi ve C2 IoC çalışması.">
<meta property="og:type" content="article">
<meta property="og:url" content="https://github.com/alicangnll/CTI_Arastirmalarim/IoC/LummaStealer_C2_IoC/">
<meta property="og:image" content="https://github.com/alicangnll/CTI_Arastirmalarim/IoC/LummaStealer_C2_IoC/c2_server.PNG">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="LummaStealer C2 Malware IoC Analizi">
<meta name="twitter:description" content="LummaStealer stealer malware detaylı analizi.">
<meta name="twitter:image" content="https://github.com/alicangnll/CTI_Arastirmalarim/IoC/LummaStealer_C2_IoC/c2_server.PNG">

<p>
  <center><strong>Ali Can Gönüllü</strong> | Siber Güvenlik Uzmanı | <a href="mailto:alicangonullu@yahoo.com">alicangonullu@yahoo.com</a><br>
  <em>LinkedIn: <a href="https://linkedin.com/in/alicangonullu" target="_blank">linkedin.com/in/alicangonullu</a></em></center><br>
  <strong>Merhaba,</strong><br>
  Bu yazımda <strong>LummaStealer C2</strong> adlı malware üzerinde yaptığımız tespit çalışmalarının aşamalarını detaylıca anlatacağım.
</p>

# Disclaimer | Yasal Uyarı
<p>
  Bu blog yazısında sağlanan bilgiler yalnızca eğitim ve bilgilendirme amaçlıdır. <b>Bilgisayar korsanlığı, siber saldırılar veya bilgisayar sistemlerine, ağlara veya verilere herhangi bir şekilde yetkisiz erişim de dahil olmak üzere herhangi bir yasa dışı veya etik olmayan faaliyeti</b> teşvik etme veya reklam etme amacı taşımaz.
<br><br>
  Disclaimer: The information provided in this blog post is intended for educational and informational purposes only. It is not intended to encourage or promote any illegal or unethical activities, including hacking, cyberattacks, or any form of unauthorized access to computer systems, networks or data.
</p>


## Virüsün İncelenmesi
<p>
  Öncelikle zararlı yazılımın bir örneğini abuse sitesinden elde ettik. Daha sonrasında inceleme amacıyla Debugger uygulamasına koyduk. İnceleme esnasında zararlı yazılımın aslında bir loader olduğunu ve içerisinde asıl zararlıyı Veil kod sistemiyle bulundurduğunu fark ettik.
  <br><br>
  <img src="c2_server.PNG" />
  <br><br>
  Ardından bu Veil kodunun işleyişini test ettiğimizde içerisinde Antivirüs sistemlerini bypass etmek için bulunan bir string ve bu string değerini ayıklayan bir fonksiyon bulduk.
</p>

## Ağ İncelenmesi
<p>
  Bu fonksiyon uygulandığında yazılımın bir C2 server'a bağlandığını, bu server'a HWID, Edge Browser Geçmişi gibi kayıtları gönderdiğini fark ettik.
  <br><br>
  <img src="veil.PNG" />
  <br><br>
  Ardından bu C2 server IP adresinin CloudFlare altyapısında kendi IP adresini gizlediğini, domain adresinin moskhoods[.]pw olduğunun ve IP adreslerinin <b>172[.]67[.]176[.]151 ve 104[.]21[.]83[.]129</b> olduğunu tespit ettik.
</p>

## Çözüm Önerisi
<p>
  Buna dair çözüm önerisi olarak <b>moskhoods[.]pw, 172[.]67[.]176[.]151 ve 104[.]21[.]83[.]129</b> IP adreslerinin engellenmesini önermekteyiz.
</p>

# Yazar | Author 
<p>
  Ali Can GÖNÜLLÜ<br>
  Siber Güvenlik Uzmanı<br>
  alicangonullu[at]yahoo.com
</p>