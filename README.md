# matlab-harf-tanima
Test  klasöründeki harfleri değiştirebilirsiniz. 200x200 px bir image  olmalıdır.
Arka plan beyaz renktir, farklı renk olursa resim işleme yapabilirsiniz.
200x200'lük kare matrisin köşe ve kenarlarının orta noktalarından harfin merkezine çekilen çizgilerin harf ile kesiştiği noktaya kadar olan uzunlukları yardımı ile tanıma  yapılmaktadır. 
zona dosyası her image (harf) için bir txt dosyası oluşturur ve harfe ait
20 örneği okuyup dosyaya yazar. Dosyaları ya da içeriklerini silip yeniden zona dosyasını çalıştırabilirsiniz.
xfinder ise test verisi olarak verdiğiniz image matrisini örnek matrislerle 
karşılaştırıp hangisine yakın olduğunu mahalanobis yöntemi ile bulur.
xfi ise yardımcı dosyadır. Biraz önce bahsedilen vektörlerin uzunluklarını bulur.
Dosya içindeki pathlere  dikkat ediniz.

