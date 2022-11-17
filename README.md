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
---
## Tugas 8
---
1. Navigator push akan memasukan page baru langsung kedalam stack dan membiarkan page sekarang didalam stack. Hal ini membuat ketika kita melakukan navigator pop akan kembali ke page berikutnya. Sedangkan Navigator pushReplacement akan mengganti page sekarang dengan page yang ingin dipush.
2. * AppBar : Bar yang berisi widget-widget yang akan digunakan dalam app tersebut
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
   * ListView : Widget yang dapat melakukan scroll serta dapat diisi widget-widget lain
   * TextFormField : Menerima form field yang dapat diisi dengan text
   * DropdownButton : Berisi button yang akan memberikan banyak nilai-nilai yang kita bisa pilih untuk menjadi nilai dari suatu form
   * Sizedbox : Box yang bisa diatur ukuranya untuk memberikan jarak antar widget.
3. * onEnter
   * onHover
   * onExit
   * onPressed
   * onTap
4. navigator pada flutter diimplementasikan menggunakan stack. Sehingga jika user ingin membuka page baru maka akan dipush page tersebut kedalam stack. Sebaliknya jika ingin kembali ke halaman sebelumnya maka element dari stack tersebut akan dipop.

5. Pertama dibuat dahulu navigation menggunakan drawer yang berisi list view untuk membuat widget-widget untuk melakukan navigasi ke page yang berbeda. Kemudian untuk bagian form implementasikan menggunakan TextFormField dan DropdownButton untuk menerima input dari user. Kemudian form yang sudah diisi akan disimpan ketika tombol submit ditekan. Data tersebut akan dimasukan kedalam list 2d yang nantinya data-data yang ada dilist tersebut akan ditampilkan. Untuk menampilkan data akan digunakan widget row, columnm dan juga text.
