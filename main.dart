void main(){

  //type safety == tip güvenliği
  //dynmaic yapıdır listler.
  //sadece metinsel değer atanabilir <> generic sayesinde.
  List<String> sehirler = new List(3);
  sehirler[0] = "Ankara";
  sehirler[1] = "İstanbul";
  sehirler[2] = "İzmir";

  print(sehirler);

  //type safety == tip güvenliği
  List<String> urunler = ["Laptop", "Mouse", "Keyborad"];
  print(urunler);

  var product1 = Product("Tv", 900);
  var product2 = Product("Mic", 650);


  List<Product> products = [product1, product2];
  print(products);
  print(products[0].name);


}

class Product{
  String name;
  double unitPrice;

  Product(String name, double unitPrice){
  this.name = name;
  this.unitPrice = unitPrice;


  }

}