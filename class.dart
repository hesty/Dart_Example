void main(){
  //class olduğu için onu kullanacağımı söyledim.
  //var personelManager = PersonelManager();
  //classı kullanırken bellekte yeni örneğini oluşturuyoruz o kısmıda
  //new kword ile yapıyoruz. Dart dilinde new kullanmak zorunlu değildir.
  PersonelManager personelManager =  new PersonelManager();
  personelManager.add();


  var customerManager = CustomerManager();
  /*customerManager.add("Cihat","Karaboğa", 1985);

  

  /*  
         Bellekte iki tane kısım vardır. Bu iki kısımda tanımladığımız değişkenler tutulur.
      //Değer                                         //Referans tipler. Classlar referans tiptir.
      Stack                                             Heap
  |-------------------------|                    |-------------------------|  
  | (Eşttirin solunda ka-   |                    |  {class düşün}          | 
  | lanlar stackte tutulur) |                101 | {cihat, engin}          | 
  |                         |                    |                         |   
  |101   customer1          |   sol    =  sağ    |                         |
  |101      person          |                    |                         |  
  |                         |                    |                         |      
  |                         |                    |                         |      
  |                         |                    |                         |    
  |                         |                    |                         |
  |                         |                    |                         |    
  |                         |                    |                         |    
  |-------------------------|                    |-------------------------| 
       
 //Referans tipler değeri değil karşısındaki classın değerlerini değil classın referansını tutmaktır.
  */
    //named Construct
  Person customer1 = Customer.withInfo("Cihat", "Karaboğa", 1999);
   //customerManager.add(customer1);
     
  var customer2 =  new Customer();
    customer2.firstName = "Engin";
    customer2.lastName =  "Demiroğ"; //Constructrsız yapı
    customer2.dateOfBirth = 1985;

    //customer2nin referans numarsını customer1'e atadım
    //(101)102    //102  
    customer1 = customer2;
    customer2.firstName = "Kelx";
    customerManager.add(customer1);

   Personel personel1 = Personel();
   personel1.firstName = "Fatma"; 

    var controller = PersonController();
    //controller.operation(customer1); //customer personı extends ettiği için burada gönderebiliyoruz
    controller.operation(personel1); //personlede  personı extends ettiği için buradada gönderebiliyoruz
} 

class PersonController{
  void operation(Person person){ //Bu operasyon hem personı hem customerı hemde personelı gönderebiliriz. Çünkü ebevyn(temel class) person olduğu için hem customer hemde personlerin referansını tutabiliyor.
  print("Inheritance Demo: "+ person.firstName);
  }
}



//class sınıf demek. Nesne olarakta düşünebiliriz.
//Dart dilinde class adlarını PascalCase ile yazarız,
//fonksiyonları ise camelCase ile yazarız.
//clasların bir görevide nesnelerin yapacığı işleri tutmaktır tutmaktadır.
class PersonelManager{
  void add(){
    print("Eklendi!");
  }

  void update(){
    print("Güncelle");
  }

  void delete(){
    print("Silindi");
  }
}

//custom manager
class CustomerManager{
  /*void add(String firstName, String lastName, int dateOfBirth, St){
    print("Eklendi");
  } Bu mantıkla gitsek herhangi bir ihtiyaç halinde çağırlıan her fonkisiyonun değeri değişmesi lazım. Yanlış bir kullanımdır*/

   void add(Customer customer){ //Customer sınıfının bellekte kopyasını oluşturup nesne mantığıyla yerleştridik. 
    print("Eklendi: " +customer.firstName);
    //print(customer.lastName);
    //print(customer.dateOfBirth);
  }

  void update(){
    print("Güncelle");
  }

  void delete(){
    print("Silindi");
  }
}
//model veya nesne mantığıyla ekleme yapmalıyız. Çünkü herhangi bir
//parametre eklenilmek istenildiğinde o parametre eklenilip 
//fonkisiyounu kullandığımız yerde çağırabilirz
class Customer extends Person{


  int dateOfBirth;

  //parametresiz customer.firstName = vb. kullanım için
  //Dart'ta  1den fazla aynı isimde Construct olduğunda çalışmaz..
  Customer(){
  
  }
  
  //Construct bloğu(Yapıcı Blok)
  //this mevcut classın referansı
  //parametli
  //named Construct
  Customer.withInfo(String firstName, String lastName, int dateOfBirth){
    this.firstName = firstName;
    this.lastName = lastName;
    this.dateOfBirth = dateOfBirth;    
  }
}

//personelin içindeki personda olan özellikler var demektir. String firstName vb.
class Personel extends Person{

  int dateOfStart;

  //parametresiz customer.firstName = vb. kullanım için
  //Dart'ta  1den fazla aynı isimde Construct olduğunda çalışmaz..
  Personel(){
  
  }
  
  //Construct bloğu(Yapıcı Blok)
  //this mevcut classın referansı
  //parametli
  //named Construct
  Personel.withInfo(String firstName, String lastName, int dateOfStart){
    this.firstName = firstName;
    this.lastName = lastName;
    this.dateOfStart = dateOfStart;    
  }
}


//Inheritance (Miras-Kalıtım)
class Person{
  String firstName; 
  String lastName;
  String identityNumber;
}



