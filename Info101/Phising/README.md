<link rel="stylesheet" href="../../CSS/style.css" type="text/css">

# Sosyal Mühendislik 101 - Phishing Saldırıları | Siber Güvenlik Temelleri

<!-- SEO Meta Tags -->
<meta name="description" content="Phishing saldırıları hakkında kapsamlı rehber. OSINT, HUMINT, SIGINT ve IMGINT teknikleri ile sosyal mühendislik saldırıları, korunma yöntemleri ve gerçek dünya örnekleri.">
<meta name="keywords" content="phishing, sosyal mühendislik, siber güvenlik, OSINT, HUMINT, SIGINT, IMGINT, phishing korunma, sosyal medya güvenliği, e-posta güvenliği, siber güvenlik eğitimi">
<meta name="author" content="Ali Can Gönüllü">
<meta name="robots" content="index, follow">
<meta property="og:title" content="Sosyal Mühendislik 101 - Phishing Saldırıları">
<meta property="og:description" content="Phishing saldırıları ve sosyal mühendislik teknikleri hakkında detaylı analiz, korunma yöntemleri ve gerçek dünya örnekleri.">
<meta property="og:type" content="article">
<meta property="og:url" content="https://github.com/alicangonullu/CTI_Arastirmalarim/Info101/Phising/">
<meta property="og:image" content="phising_title.png">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Sosyal Mühendislik 101 - Phishing Saldırıları">
<meta name="twitter:description" content="Phishing saldırıları ve sosyal mühendislik teknikleri hakkında kapsamlı rehber.">
<meta name="twitter:image" content="phising_title.png">

<br><br>
<img src="phising_title.png" alt="Sosyal Mühendislik 101 - Phishing Saldırıları Başlık Görseli">
<br><br>
<p>
    <center><strong>Ali Can Gönüllü</strong> | Siber Güvenlik Uzmanı | <a href="mailto:alicangonullu@yahoo.com">alicangonullu@yahoo.com</a><br>
    <em>LinkedIn: <a href="https://linkedin.com/in/alicangonullu" target="_blank">linkedin.com/in/alicangonullu</a></em></center><br>
</p>

# Disclaimer | Yasal Uyarı
<p>
  Bu blog yazısında sağlanan bilgiler yalnızca eğitim ve bilgilendirme amaçlıdır. <b>Bilgisayar korsanlığı, siber saldırılar veya bilgisayar sistemlerine, ağlara veya verilere herhangi bir şekilde yetkisiz erişim de dahil olmak üzere herhangi bir yasa dışı veya etik olmayan faaliyeti</b> teşvik etme veya reklam etme amacı taşımaz.
<br><br>
  Disclaimer: The information provided in this blog post is intended for educational and informational purposes only. It is not intended to encourage or promote any illegal or unethical activities, including hacking, cyberattacks, or any form of unauthorized access to computer systems, networks or data.
</p>

# Giriş

<p>
  İnternet ve genel anlamıyla siber dünyanın gelişmesiyle insanlık olarak büyük bir gelişim sağlamış ve bu gelişimle beraber hayatımıza pek çok yeni kavram girmiştir. Bu kavramlar genel olarak faydalı olarak görülmüş olsa da her fayda gibi hayatımıza yeni giren bu kavramlar da zamanla kendi antisini oluşturarak kötücül olarak kullanılmaya başlanmıştır.
  <br><br>
  <strong>Phishing</strong> yani oltalama kavramı da siber dünyada iletişim kavramının antisi olarak tanımlanabilir. Siber dünyada insanlar birbirleriyle iletişim kurarken kötü niyetli kişiler bu konuşmalarla insanları manipüle etmenin yolunu bularak "Phishing" adlı kavramın ortaya çıkmasına ön ayak olmuştur.
  <br><br>
  Bu yazımda sizlere phishing kavramının tarihçesini, ne olduğunu ve nasıl korunabileceğinizi detaylıca açıklamaya çalışacağım.
</p>

## 📋 İçindekiler
- [Sosyal Mühendislik 101 - Phishing Saldırıları | Siber Güvenlik Temelleri](#sosyal-mühendislik-101---phishing-saldırıları--siber-güvenlik-temelleri)
- [Disclaimer | Yasal Uyarı](#disclaimer--yasal-uyarı)
- [Giriş](#giriş)
  - [📋 İçindekiler](#-i̇çindekiler)
- [Oltalama Saldırıları Tarihçesi](#oltalama-saldırıları-tarihçesi)
- [Oltalama Saldırılarının Önemi](#oltalama-saldırılarının-önemi)
- [Oltalama Saldırılarının Çeşitleri](#oltalama-saldırılarının-çeşitleri)
- [OSINT Yardımıyla Oltalama](#osint-yardımıyla-oltalama)
- [HUMINT Yardımıyla Oltalama](#humint-yardımıyla-oltalama)
- [SIGINT Yardımıyla Oltalama](#sigint-yardımıyla-oltalama)
- [IMGINT Yardımıyla Oltalama](#imgint-yardımıyla-oltalama)
- [Korunma Yöntemleri](#korunma-yöntemleri)
- [Kaynaklar](#kaynaklar)
  - [📚 Akademik ve Resmi Kaynaklar](#-akademik-ve-resmi-kaynaklar)
  - [📖 Kitaplar](#-kitaplar)
  - [🔗 İlgili Bağlantılar](#-i̇lgili-bağlantılar)
  - [📞 İletişim ve Sosyal Medya](#-i̇letişim-ve-sosyal-medya)
  - [🏷️ Etiketler ve Hashtag'ler](#️-etiketler-ve-hashtagler)
  - [⚠️ Yasal Uyarı](#️-yasal-uyarı)

# Oltalama Saldırıları Tarihçesi
<p>
  Oltalama yani phising teriminin ilk olarak insanların hayatına girmiş olduğu tarih hemen hemen insanlığın doğumuyla eşdeğer bir tarih olsa da siber dünyada <b>"internet kullanıcılarının kişisel verilerini onları kandırmak suretiyle alınmasını"</b> tanımlamak için ilk olarak 1987 yılında hayatımıza girmiştir. O yıllarda ortaya çıkan bu kavram internetin gelişmesiyle hayatımıza tam anlamıyla 1990'lı yıllarda dahil olmuştur.
</p>

# Oltalama Saldırılarının Önemi
<p>
  Phising, teknik herhangi bir zafiyeti ön plana çıkarmaktan ziyade, insan zafiyetini ön plana çıkaran bir saldırı tekniği olması ve insan zafiyetlerinin giderilmesinin hem maddi hem de manevi olarak daha ağır bir yükü olduğu için çağımızın ve geleceğin en büyük saldırı tipi olduğunu söylemek sanırım yanlış olmaz.
  <br><br>
  Phising kavramının babası olarak tanımlanabilecek olan Kevin Mitnick, Aldatma Sanatı adlı kitabında <b>"bir kurum en üst düzey koruma sistemlerini kursa dahi personelinin zafiyetli olması nedeniyle güvende değildir."</b> sözleriyle Phising saldırılarının ciddiyetini açık bir şekilde belirtmiştir.
  <br><br>
  Yine Kevin Mitnick, aynı kitabında <b>"insan unsuru aslında güvenliğin en zayıf halkasıdır"</b> diyerek insan unsurunun ne kadar zafiyetli bir varlık olduğunu açıkça belirterek Phising saldırılarının ve saldırıyla bağlantılı manipülasyon tekniklerinin ne kadar tehlikeli olduğunu göstermiştir.
</p>

# Oltalama Saldırılarının Çeşitleri
<p>
  Phising saldırılarının genel çeşitlerini saymamız gerekirse,
  <ul>
    <li>OSINT Yardımıyla Oltalama</li>
    <li>HUMINT Yardımıyla Oltalama</li>
    <li>SIGINT Yardımıyla Oltalama</li>
    <li>IMGINT Yardımıyla Oltalama</li>
  </ul>
  olarak sayabiliriz. Şimdi bu çeşitleri örnekler üzerinden açıklamaya çalışalım.
</p>

# OSINT Yardımıyla Oltalama
<p>
  OSINT, İngilizce "açık kaynak istihbaratının" kısaltılmış halidir. Bu yöntemde veriler açık kaynaklar taranarak bulunur ve bu veriler kişiye karşı kullanılır. Şöyle bir örnekle açıklayalım,
  <br><br>
  Bir ofis hayal edelim. Ofisteki çalışanların sisteme girişlerinde <b>SMS ile çift faktörlü doğrulama gibi sistemler kullanıldığını ve sistemde kullanılan uygulamaların personellerin dışarıdan da erişebilmesi için dışa açık olduğunu</b> düşünelim. X kişisi bu ofiste bir İnsan Kaynakları personeli ve <b>x@ofis.com</b> adlı bir iş maili ile birlikle <b>+90 555 666 99 88</b> numaralı bir iş telefonu kullandığını düşünelim. 
  <br><br>
  X kişisi, bir iş arama sitesine <b>x@ofis.com</b> mail adresi ve <b>+90 555 666 99 88</b> telefonunu kaydetmiştir ve bu iş arama sitesinde bir Siber Güvenlik Uzmanı ilanı oluşturmuş ve iletişim bilgisi olarak iş arama sitesine girdiği mail ve telefon bilgisini girmiştir. Bu ilanı da herkese açık hale getirerek daha fazla personeli iş ilanına çekmeyi hedefleyerek rekabeti arttırmayı amaçlamıştır.
  <br><br>
  Y kişisi işinde iyi bir Siber Güvenlik Uzmanı olduğu halde şirket tarafından iş başvurusu uygun bulunmamış ve bu sebeple şirkete sinirlenmiştir. Şirkete beslediği kin sebebiyle şirkete zarar vermek istemektedir. Bu sebeple şirket hakkında bilgi toplamaya başlamış ve şirketin IP adreslerini tararken şirketin herkese açık bir Web uygulaması olduğunu görmüştür ve bu panele İnsan Kaynakları personelinin de ulaşabileceğini düşünmüştür.
  <br><br>
  Bahsi geçen sisteme girmek için çokça teknik denemeler yapsa da girememiş ve açık kaynak araştırması yaparken X kişisinin <b>x@ofis.com</b> mail adresiyle <b>+90 555 666 99 88</b> telefonunu sisteme iletişim bilgisi olarak herkese açık bir şekilde kaydettiğini görmüştür. 
  <br><br>
  Bu bilgileri kullanarak sisteme girmeyi denediğinde bir SMS doğrulaması olduğunu görmüştür. Bu korumayı aşmak için ise insan kaynakları personeline DOCX formatında mükemmel derecede bir CV dosyası hazırlamış ve aynı dosyanın içerisini zararlı kodlarla doldurmuştur.
  <br><br>
  X kişisine bu dosyayı göndermiş ve X kişisi de işi gereği bu dosyayı açarak Y kişisinin amacına ulaşmasına yol açmıştır.
  <br><br>
  Sizce bu senaryoyu uyduruyor muyum ? Hayır bunun bir benzeri geçtiğimiz günlerde çeşitli çok ama çok ünlü firmalarda yaşandı. İşin acı tarafı bu firmaların çok detaylı Siber Güvenlik araçları vardı. Fakat az önce dediğim gibi insan zafiyeti en büyük zafiyettir.
</p>

# HUMINT Yardımıyla Oltalama
<p>
  HUMINT, İngilizce "insan istihbaratının" kısaltılmış adıdır. Bu yöntemde insanları çeşitli manipülasyon teknikleriyle yanıltarak bilgi toplamak amaçlanmaktadır. Bir örnekle açıklayalım,
  <br><br>
  Bir ofis hayal edelim. Bu ofiste çok detaylı ve gizli bir ürün fikri konuşulmaktadır. O kadar önemli bir üründür ki aynı ürüne talip üç firma vardır. Bu kadar önemli bir ürün için çok detaylı önlemler alınmış, bilgisayarlar en baştan kurulmuş, farklı yazılımlar kurmak yasaklanmış, belgeler şifrelenmiş ve şifresiz belge bulundurmak yasaklanmıştır.
  <br><br>
  Bu ofiste yazılımcı olarak çalışan X kişisi çeşitli arkadaşlık uygulamaları kullanmaktadır ve bu uygulamalardaki kişilerle buluşmaktadır. Yine bu kişi uygulama içerisinde dolaşırken karşı cinsten Y takma adlı kişi eklemiş ve kendisine mesaj atmıştır.
  <br><br>
  Y takma adlı kişi, aslında X kişisinin projesine talip olan firmalardan birinde çalışan bir kişidir. X kişisini gayet net şekilde tanımaktadır ve hangi şirkette çalıştığını da bilmektedir. X kişisi bu konuya uyanmasın diye de onu tanımıyormuş gibi çeşitli sorular sormaktadır.
  <br><br>
  X kişisiyle işi biraz daha pişirdikten sonra Y kişisi hangi projelerle ilgilendiğini sorarak projenin aşaması hakkında bilgileri alıp firmasına iletmektedir. Gelgelelim en son kertede X kişisini iyice kendisine bağlayan Y kişisi proje hakkındaki tüm bilgileri direkt X kişisinden alarak projeyi klonlayacak kadar detaylı bilgiye erişmiştir ve projeyi klonlayarak rakiplerinden önce piyasaya sunmuştur.
  <br><br>
  Peki bu senaryo uydurma mı ? Elbette hayır. Aynı vaka F-35 adlı jetlerin yapım süreci esnasında yaşanmış ve F-35 projesi aynı yöntemle çalınıp Çinliler tarafından koypası üretilmiştir.
  <br><br>
  <a href="https://www.industrialcybersecuritypulse.com/networks/throwback-attack-chinese-hackers-steal-plans-for-the-f-35-fighter-in-a-supply-chain-heist/">Kaynak</a>
  <br><br>
  <a href="https://www.sandboxx.us/news/the-man-who-stole-americas-stealth-fighters-for-china/">Kaynak 2</a>
</p>

# SIGINT Yardımıyla Oltalama
<p>
  SIGINT, belki de en tehlikeli phising / istihbarat yöntemidir. İngilizce "sinyal istihbaratının" kısaltılmış adıdır. Bu yöntemde sinyaller kullanılarak bilgilerin toplanması amaçlanmaktadır. Bir örnekle açıklayalım,
  <br><br>
  Bir X ülkesi hayal edelim. Bu ülkede bir ildeki bir mekanda çok detaylı ve gizli bir proje hakkında konuşuluyor olsun. Bu proje ile büyük bir silah yapılacak olsun ve bu sebeple tüm işlemler büyük bir titizlikle işleniyor ve tüm güvenlik önlemleri alınıyor olsun.
  <br><br>
  Y ülkesi ise bu proje hakkında bilgi edinmek istiyor olsun. Y ülkesinin istihbarat görevlileri sinyaller yardımıyla o odada konuşulan her kelimeyi duyabilmektedir ve bu proje hakkında bilgi edinen kişiler projeye karşı önlem almışlardır. Evet, ses dalgaları da bir dalga olarak kabul edilmekte ve SIGINT içerisinde kabul edilmektedir.
  <br><br>
  Veya Y ülkesinin bir istihbarat ajanı X ülkesinde aynı odada olan bir kişiyi anlattığım istihbarat teknikleriyle angaje edip ilgili verileri X ülkesindeki angaje edilen kişinin sinyal sızıntısı vasıtasıyla elde edebilir.
  <br><br>
  Bu da mı ütopik geliyor? Ütopik gelmeye devam edebilir... Fakat ütopik değil. Örneğin Hard disk sesinden içerisindeki verileri ele geçirme çalışması yürüten <a href="https://www.computerworld.com/article/1672737/sounds-from-your-hard-disk-drive-can-be-used-to-steal-a-pcs-data.html">İsrail Ben-Gurion Üniversitesi makalesini inceleyebilirsiniz</a>
</p>

# IMGINT Yardımıyla Oltalama
<p>
  IMGINT, yer yer kişilerin hayatlarıyla sonuçlanabilen çok ciddi bir phising / istihbarat yöntemi olarak kabul edilebilmektedir. Çünkü bu istihbarat tekniği (diğerleri gibi) askeri ortamlarda çok kullanılmaktadır.
  <br><br>
  Örneğin, bir binanın fotoğrafını çeken X adlı kişi düşünelim. Bu kişi fotoğrafı sosyal medyaya yüklerse eğer karşı güce fotoğraf üzerinden gerek EXIF gerek resim içerisindeki kara yapısından (dağ, vadi, akarsu şekilleri vb) fotoğrafın tam konumunu bulabilmektedir. Keza, bir silahın fotoğrafını çeken bir kişi de karşı güce kullanılan ekipmanlar hakkında ciddi istihbarat verileri sağlamaktadır.
  <br><br>
  Keza aynı şekilde, X adlı savunma sanayisinde çalışan Y kişisini düşünelim. Bu kişiyle bağlantı kuran Z adlı istihbarat görevlisinin Y kişisinden projenin resimlerini istemesi projenin selameti açısından büyük bir tehdit ve ayrıca bir istihbarat sızıntısı anlamına gelmektedir.
  <br><br>
  Eğer bu olaya canlı bir örnek isterseniz, 4chan adlı internet sitesinin kullanıcılarının 9 sene önce Suriye'de faaliyet gösteren "Jaysh al-Izza" adlı terör örgütünün bir video kaydından nasıl konumunu bulduğunu ve Rus askeri birliklerine o konumu nasıl bombalattıklarını inceleyelim.
  <br><br>
  Bu günden 9 yıl önce, 4chan adlı forum sitesine Suriye'de eğitim yapan bir grup askeri kıyafetli örgüt fotoğrafları gönderildi.
  <br><br>
  <img src="imgint1.png" />
  <br><br>
  Ardından 4chan kullanıcıları bu durumu araştırmaya başladı ve videodaki bir kareden bulundukları alanı keşfetti.
  <br><br>
  <img src="imgint2.png" />
  <br><br>
  <img src="imgint3.png" />
  <br><br>
  <img src="imgint4.png" />
  <br><br>
  <img src="imgint5.png" />
  <br><br>
  Tüm bu istihbarat verilerinin ardından bir 4chan kullanıcısı Rus Hava Kuvvetlerinde üst kademede bulunan bir kişiyle görüştü ve gerekli bilgileri bu kişiye teslim etti. Ardından...
  <br><br>
  <img src="imgint6.png" />
  <br><br>
  <img src="imgint8.png" />
  <br><br>
  Rus ordusunda yer alan kişi ilgili kişilere iletmiş olacak ki birkaç gün sonrasında alanın bombalama haberleri ve videosu yayınlandı.
  <br><br>
  <img src="imgint7.png" />
  <br><br>
  <iframe width="700" height="706" src="https://www.youtube.com/embed/gwOWcFcGYiU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
  <br><br>
  Görüldüğü üzere bu tip istihbarat bilgileri herkesi ve hatta askeri birlikleri dahi ele verebilmektedir.
</p>

# Korunma Yöntemleri
<p>
  Açıkçası en büyük korunma yöntemi personellerin eğitimi ve konuya hakim olmasıdır. Personelleriniz ne kadar bu konuda bilinçliyse o kadar güvendesiniz demektir. Bunların dışında, <b>IP ve URL engelleme, Mail filtreleme, antivirüs sistemlerinin politikalarını sıkılaştırma, açık kaynak veri politikalarını sıkılaştırma, sinyalleri engelleyici ofis tasarımları</b> gibi önlemleri de alabilirsiniz. Ne kadar az açık veri o kadar büyük bir güvenlik demektir.
  <br><br>
  Her zaman dediğimiz gibi <b>"kırılamaz şifre ve aşılamaz güvenlik sistemi yoktur"</b> fakat önlemimizi alarak bu tip saldırılardan çok büyük bir oranda korunabiliriz.
</p>

# Kaynaklar

## 📚 Akademik ve Resmi Kaynaklar
- [Açık Kaynak İstihbarat ve Sosyal Mühendislik](https://acikbilim.yok.gov.tr/bitstream/handle/20.500.12812/127310/yokAcikBilim_10293666.pdf?sequence=-1&isAllowed=y) - YÖK Açık Bilim
- [F-35 Fighter Jet Blueprint Theft](https://www.nydailynews.com/2015/01/20/chinese-hackers-stole-f-35-fighter-jet-blueprints-in-pentagon-hack-edward-snowden-documents-claim/) - NY Daily News
- [4chan Airstrike Syria Case](https://dumayu.com/4chan-calls-airstrike-syria/) - Dumayu
- [F-35 Supply Chain Heist](https://www.industrialcybersecuritypulse.com/networks/throwback-attack-chinese-hackers-steal-plans-for-the-f-35-fighter-in-a-supply-chain-heist/) - Industrial Cybersecurity Pulse
- [The Man Who Stole America's Stealth Fighters](https://www.sandboxx.us/news/the-man-who-stole-americas-stealth-fighters-for-china/) - Sandboxx

## 📖 Kitaplar
- **Aldatma Sanatı** - Kevin Mitnick
- **The Art of Deception** - Kevin Mitnick & William L. Simon

## 🔗 İlgili Bağlantılar
- [4chan Syria Airstrike Image](https://imgur.com/evpTXp9) - Imgur
- [Hard Disk Sound Analysis](https://www.computerworld.com/article/1672737/sounds-from-your-hard-disk-drive-can-be-used-to-steal-a-pcs-data.html) - Computerworld

---

## 📞 İletişim ve Sosyal Medya

**Ali Can Gönüllü** | Siber Güvenlik Uzmanı
- 📧 **E-posta**: [alicangonullu@yahoo.com](mailto:alicangonullu@yahoo.com)
- 💼 **LinkedIn**: [linkedin.com/in/alicangonullu](https://linkedin.com/in/alicangonullu)
- 🐙 **GitHub**: [github.com/alicangonullu](https://github.com/alicangonullu)

---

## 🏷️ Etiketler ve Hashtag'ler

`#Phishing` `#SosyalMühendislik` `#SiberGüvenlik` `#CyberSecurity` `#OSINT` `#HUMINT` `#SIGINT` `#IMGINT` `#PhishingKorunma` `#SosyalMedyaGüvenliği` `#EPostaGüvenliği` `#SiberGüvenlikEğitimi` `#CTI` `#ThreatIntelligence` `#SocialEngineering` `#CybersecurityAwareness`

---

## ⚠️ Yasal Uyarı

Bu içerik yalnızca eğitim ve bilgilendirme amaçlıdır. Siber güvenlik farkındalığını artırmak için hazırlanmıştır. Herhangi bir yasa dışı faaliyeti teşvik etmez.

---

*Son güncelleme: 2024 | Tüm hakları saklıdır.*