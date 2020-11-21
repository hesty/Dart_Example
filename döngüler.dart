void main(){
//sektörde çok fazla for döngüsü kullanılır. Kaynak: Engin Demiroğ 

  for(var i = 1; i<=10; i=i+2){
  print(i);

  }

  var products = ["Laptop", "Mouse", "Keyboard"];

  for(var c = 0;c<products.length;c++){

    print("Ürünlerim : "+products[c]);

  }

  //for'un başka hali bkz.foreach
  for(var product in products){
  print("Ürünlerim : "+product);
  }

  //while 
  var sayi = 1;

  while(sayi<10){
   print(sayi);
    sayi++;
  } 
  //do while 
  var sayi2 = 10;

  do{
    print("Sayı 2 = " +sayi2.toString());
    sayi2++;
  } while(sayi2>1000);
  
  



}
