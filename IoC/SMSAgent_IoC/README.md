<link rel="stylesheet" href="../../CSS/style.css" type="text/css">

# SMSAgent C2 Zararlı Yazılımı IoC Çalışması

<br><br>
<img src="title_pic.png">
<br><br>
<center>Ali Can Gönüllü | Siber Güvenlik Uzmanı <br>alicangonullu[at]yahoo.com</center><br>

# Disclaimer | Yasal Uyarı
<p>
  Bu blog yazısında sağlanan bilgiler yalnızca eğitim ve bilgilendirme amaçlıdır. <b>Bilgisayar korsanlığı, siber saldırılar veya bilgisayar sistemlerine, ağlara veya verilere herhangi bir şekilde yetkisiz erişim de dahil olmak üzere herhangi bir yasa dışı veya etik olmayan faaliyeti</b> teşvik etme veya reklam etme amacı taşımaz.
<br><br>
  Disclaimer: The information provided in this blog post is intended for educational and informational purposes only. It is not intended to encourage or promote any illegal or unethical activities, including hacking, cyberattacks, or any form of unauthorized access to computer systems, networks or data.
</p>

# Zararlı Hakkında
<p>
    SMSAgent APK zararlı yazılımı, Android cihazlara bulaşabilen ve SMS yoluyla kişisel bilgileri çalmaya çalışan Rusya kökenli bir kötü amaçlı yazılımdır. Bu yazılım, genellikle sahte uygulamalar veya güncellemeler olarak gizlenir ve kurbanın cihazına indirilir. SMSAgent APK zararlı yazılımı, kurbanın cihazından gelen SMS mesajlarını, rehberini, konumunu ve diğer hassas verileri uzaktan bir sunucuya gönderir. Bu veriler, siber suçlular tarafından kimlik hırsızlığı, dolandırıcılık veya fidye talebi gibi amaçlarla kullanılabilir.
</p>

# Bulaşma Şekli
<p>
    Yazılım APK formatında bulaşmakta ve bulaştıktan sonra C2 server ile temas kurmakta.
</p>

# Çalışma Mantığı
<p>
    Öncelikle "StanokSoft.apk" adlı bir dosya ile Android cihazı hedef aldığını ve bu virüsün bir Telegram grubundan sızdırıldığı bilinmektedir.
    <br><br>
    <img src="apk_info.png">
    <br><br>
</p>