void main(){
  selamVer("Cihat");
  selamVer("Cihat");
  selamVer("Hesty");
  selamVer("Cihat");
  selamVer("Cihat");
  var hesapSonucu = hesapla(100000, 15);
  print(hesapSonucu);

  test1(1);

  test2(sayi1:1); // 1 null null  parametre vermedende çalışır
  test2(sayi3:5, sayi1:4, sayi2:99); // parametleri isteğin şekilde set edebilirsin
}
// void bir emir kipidir. Git duvara cihat yaz gibi.. Boş Döndürür
void selamVer2(){
  print("Selam");
} 

void selamVer(String kullanici){
  print("Selam "+kullanici);
}

double hesapla(double krediTutari, double yuzde){
 var sonuc = krediTutari * yuzde / 100;
 return sonuc;
}

//opsiyonel parametreler 
// test1(1); = 1 null null
//zorunlu olanları başa yazmak zorundayız
void test1(int sayi1, [int sayi2, int sayi3]){
  print(sayi1);
  print(sayi2);
  print(sayi3);
}

//isimlendirilmiş parametre (named) {}
// sayi1 sayi2 sayi3 isimlendirilmiş parametrelerdir
void test2({int sayi1, int sayi2, int sayi3}){
  print(sayi1);
  print(sayi2);
  print(sayi3);
}