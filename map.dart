void main(){
  //süslü parantez ise o bir maptir diyebiliriz
  Map dictioanry1 = new Map();
    dictioanry1["book"] = "kitap";
    dictioanry1["little"] = "küçük";
                  //bir tane key 
  //map litreal      -key    -value
  var dictioanry2 = {"kitap":"book", "küçük":"little"};
  
    dictioanry2["büyük"] = "big";  

    print(dictioanry1);
    print(dictioanry2);
     //varsa siler yoksa hata vermezz
    dictioanry1.remove("book");
    print(dictioanry1);

  for(var key in dictioanry2.keys){
    print(key +" : " + dictioanry2[key]);
  }

  for(var value in dictioanry2.values){
    print(value);
  }

  print(dictioanry2.containsKey("kitap"));

  dictioanry2.forEach((k,v)=>{
   print(k+" : "+ v)
  });

}