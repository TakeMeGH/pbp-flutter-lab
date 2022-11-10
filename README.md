# Abdul Rafi - 2106630113 - D
## Tugas 7
---
1. Stateless widget adalah sebuah widget yang kegunaanya sudah didefinisikan dari awal program dan tidak mungkin menghasilkan hal yang berbeda pada kondisi apapun. Stateful widget adalah widget yang dapat melakukan hal yang berbeda tergantung dari state saat ini.

2. * Scaffold : memiliki fungsi-fungsi dasar dalam pembuatan app flutter
   * AppBar : Bar yang berisi widget-widget yang akan digunakan dalam app tersebut
   * Center : Widget yang membuat child dari widget tersebut berada ditengah
   * Text : Widget yang menampilkan tulisan pada app
   * Padding : Widget yang memberikan padding pada child
   * Row : Fungsi layout yang menyusun widget seperti baris
   * Column : Fungsi layout yang menyusun widget seperti kolom
   * Align : Fungsi yang melakukan align kepada child berdasarkan posisi yang dispesifikasikan
   * Visibility : Menyembunyikan sebuah widget
   * FloatingActionButton : Berisi button yang dapat melakukan suatu aksi pada app tersebut
   * Icon : Berisi suatu icon yang sudah menjadi builtin pada flutter
   * TextStyle : memberikan styling pada sutu text

3. setState() adalah fungsi yang memungkinkan melakukan perubahan pada internal state. Variabel yang terdampak pada fungsi ini adalah suatu varibel yang menjadi state dari sebuah widget.

4. Const adalah suatu varibel yang tidak dapat diubah yang dijalankan pada saat compile. Final adalah suatu varibel yang tidak dapat diubah yang dijalankan pada run.

5. Kita membuat app counter_7 terlebih dahulu. Kemudian buat floatingActionButton kedua. Dua buah floatingActionButton tersebut disusun pada row dan lakukan alignment pada button tersebut agar sejajar dibawah app. Untuk floatingActionButton terbaru buat sebuah fungsi baru guna mengubah state dari counter. Fungsi ini nantinya akan dihubugnkan dengan floatingActionButton yang baru. Kemudian kita juga perlu menambahkan conditional pada text. Sehingga text akan dituliskan ganjil ketika counter ganjil dan genap ketika counter genap. Untuk Bonus kita dapat menambahkan widget visibility dan juga menambahkan conditional untuk menghandle kasus counter = 0.
