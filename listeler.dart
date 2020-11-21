void main() {
  //todoList
  //Köşeli parentezler olduğu için list. Java'da dizi olarak geçer 

  //Fixed length list
  List urunler = new List(5);
  urunler[0] = "Laptop";
  urunler[1] = "Mouse";
  urunler[2] = "Keyboard";
  urunler[3] = "Monitor";
  urunler[4] = "Mic";

  //urunler[5] = "Hoparlör";

  print(urunler);
  print(urunler[2]);
  
  //print(urunler[5]);

//Growable(Büyütülebilir) List  --List sehirler ile aynı
//Geneişletilebiler lisler oldukları için bellek tüketimleri daha fazladır.
var sehirler = ["Ankara", "İstanbul", "İzmir"];
print(sehirler);
sehirler.add("Mardin");
print(sehirler);

//listelerde filitreleme 
// => arrow fonksiyon
                     //dondugu eleman(return)     
print(sehirler.where((s)=>s.contains("a")));
                        //s icin 

print(sehirler.first);
}                       

//dart list functions