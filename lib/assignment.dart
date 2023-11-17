/*1- Bir fonksiyonu asenkron yapmak için fonksiyonun başına async anahtar kelimesini eklemeliyiz. Dart dilinin önceki sürümlerinde asenkron fonksiyonlarda sadece async ifadesinin kullanılması yeterli iken Dart 2’den sonra, asenkron bir fonksiyon tanımlarsak bu fonksiyonun await ifadesi yok ise onu null yapmalıyız. (await null;)


Future<String> getUserName(int id) async {
  //Future nesnesi döndüren bir fonksiyon çağırıyoruz
  var name = await fetchNameFromDatabase(id);
  // Future nesnesinin sonucunu bekledikten sonra kullanıcı adını döndürüyoruz
  return name;
}
2- Bir Future nesnesinin sonucunu almak için iki yöntem vardır: then ve await. then yöntemi, Future nesnesi tamamlandığında çalıştırılacak bir geri çağırma fonksiyonu alır. 

void printUserName(int id) {
  // Future nesnesi döndüren bir fonksiyon çağırıyoruz
  var future = getUserName(id);
  // Future nesnesinin sonucunu then yöntemiyle alıyoruz
  future.then((name) { ( bu satıra var name = await getUserName(id); de yazılabilir)
    // Future nesnesi tamamlandığında kullanıcı adını yazdırıyoruz
    print(name);
  });
}
Await ifadesi ise, future nesnesinin tamamlanmasını bekler ve değerini döndürür. Bu sayede, asenkron bir fonksiyonun diğer işlemleri engellemesini önler ve kodun daha okunaklı olmasını sağlar.

}
3- Await ifadesi, Future nesnesinin sonucunu beklemek ve asenkron fonksiyonun akışını durdurmak için kullanılır. Await, Future nesnesinin tamamlanmasını bekler ve sonucunu döndürür ayrıca sadece asenkron fonksiyonların içinde kullanılabilir. 

void printUserName(int id) async {
  // Future nesnesi döndüren bir fonksiyon çağırıyoruz
  var name = await getUserName(id);
  // Future nesnesinin sonucunu bekledikten sonra kullanıcı adını yazdırıyoruz
  print(name);
}

4- Bir asenkron fonksiyonun içinde await ifadesi kullanmadan Future nesnesinin sonucunu alabiliriz. Future nesnesinin sonucunu almak için then yöntemini kullanmamız gerekir. Ancak, then yöntemi içindeki kod, asenkron fonksiyonun dışındaki koddan sonra çalışır, bu da hata yakalamayı zorlaştırır. 

void printUserName(int id) async {
  var future = getUserName(id);
   future.then((name) {
    print(name);
  });
  // Bu kod, then yöntemi içindeki koddan önce çalışır
  print("Future nesnesi tamamlanmadı");
}

5- Bir kod bloğunda dinamik olarak hatayı yakalamak için, kod bloğunu try-catch-finally kod blok yapısı içine almalıyız. try bloğu, hata oluşturabilecek kodu içerir. catch(catchError()) bloğu, hata oluştuğunda çalıştırılacak kodu içerir. finally bloğu ise, hata olsun ya da olmasın, her durumda çalıştırılacak kodu içerir.


void printUserName(int id) async {
  try {
     var name = await getUserName(id);   
    print(name);
  } catch (e) {
    // Hata oluştuğunda, hatayı yazdırıyoruz
    print(e);
  } finally {
    // Her durumda, bu kodu çalıştırıyoruz
    print("Fonksiyon bitti");
  }
}

6- Dart dilinde “Cascade notation” (…), bir nesneye birden fazla işlem yapmak için kullanılan bir sözdizimidir. Cascade notation, nesneyi tekrar tekrar yazmaktan kaçınmamızı sağlar. Örneğin:
// Bu sınıf, bir araba nesnesini temsil eder
class Car {
  // Arabanın markası, modeli ve rengi
  String brand;
  String model;
  String color;

  // Arabanın markasını, modelini ve rengini ayarlayan bir kurucu fonksiyon
  Car(this.brand, this.model, this.color);

  // Arabanın markasını, modelini ve rengini yazdıran bir fonksiyon
  void printCar() {
    print("Arabanın markası: $brand");
    print("Arabanın modeli: $model");
    print("Arabanın rengi: $color");
  }

  // Arabanın rengini değiştiren bir fonksiyon
  void changeColor(String newColor) {
    color = newColor;
  }
}

// Bir araba nesnesi oluşturuyoruz
var car = Car("Toyota", "Corolla", "Beyaz");

// Arabanın markasını, modelini ve rengini yazdırıyoruz
car.printCar();

// Arabanın rengini değiştiriyoruz ve tekrar yazdırıyoruz
car.changeColor("Kırmızı");
car.printCar();

// Cascade notation kullanarak, aynı işlemleri daha kısa bir şekilde yapabiliriz
car
  ..changeColor("Mavi")
  ..printCar();

7- Dart dilinde liste içerisine, başka bir listenin elemanları direkt olarak eklenmek istendiğinde addAll/insertAll ya da ... operatörünü kullanabiliriz.
// İki liste oluşturuyoruz
var list1 = [1, 2, 3];
var list2 = [4, 5, 6];

// list1'in sonuna list2'nin elemanlarını ekliyoruz
list1.addAll(list2);

// list1'i yazdırıyoruz
print(list1); // [1, 2, 3, 4, 5, 6]

**********
List<int> liste1 = [1, 2, 3]; 
List<int> liste2 = [4, 5, 6]; 
List<int> liste3 = [...liste1, ...liste2]; // Yeni bir liste oluşturup liste1 ve liste2'nin elemanlarını ekliyoruz
print(liste3); 
// Bu kodun çıktısı: [1, 2, 3, 4, 5, 6]


*/
