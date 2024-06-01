class Contact {
  int? id; // Nullable integer untuk menyimpan ID kontak, yang bisa bernilai null.
  late String name; // String yang tidak boleh null untuk menyimpan nama kontak.
  late String phone; // String yang tidak boleh null untuk menyimpan nomor telepon kontak.

  // Konstruktor default untuk menginisialisasi kontak dengan nama dan nomor telepon.
  Contact(this.name, this.phone);

  // Konstruktor bernama untuk membuat instance Contact dari sebuah map.
  // Biasanya digunakan saat membaca data dari database.
  Contact.fromMap(Map<String, dynamic> map) {
    id = map['id']; // Menetapkan nilai 'id' dari map ke field id.
    name = map['name']; // Menetapkan nilai 'name' dari map ke field name.
    phone = map['phone']; // Menetapkan nilai 'phone' dari map ke field phone.
  }

  // Metode untuk mengubah instance Contact menjadi sebuah map.
  // Kunci dalam map ini harus sesuai dengan nama kolom dalam database.
  Map<String, dynamic> toMap() {
    return {
      'id': id, // Menambahkan field 'id' ke dalam map.
      'name': name, // Menambahkan field 'name' ke dalam map.
      'phone': phone, // Menambahkan field 'phone' ke dalam map.
    };
  }

  // Override metode toString untuk menyediakan representasi string dari instance Contact.
  // Ini membuat lebih mudah melihat informasi tentang setiap kontak saat menggunakan pernyataan print.
  @override
  String toString() {
    return 'Contact{id: $id, name: $name, phone: $phone}'; // Mengembalikan string dengan detail kontak.
  }
}
