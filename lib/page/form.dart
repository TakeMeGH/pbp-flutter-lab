import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:intl/intl.dart';

var daftar = List.generate(
    0,
    (int index) =>
        List<String>.generate(0, (int index2) => "", growable: true));

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return int.tryParse(s) != null;
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _namaLengkap = "";
  String _nominal = "";
  String tipe = "";
  String? _selectedItem;
  TextEditingController dateinput = TextEditingController();

  List<String> tipe_operasi = ['Pemasukan', 'Pengeluaran'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Budget'),
      ),
      drawer: OwnDrawer(),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                // Menggunakan padding sebesar 8 pixels
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Contoh : Belanja Online",
                    labelText: "Judul",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _namaLengkap = value!;
                    });
                  },
                  onSaved: (String? value) {
                    setState(() {
                      _namaLengkap = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama lengkap tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                // Menggunakan padding sebesar 8 pixels
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    hintText: "Contoh : 200000",
                    labelText: "Nominal",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _nominal = (value!);
                    });
                  },
                  onSaved: (String? value) {
                    setState(() {
                      _nominal = (value!);
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Nominal tidak boleh kosong!';
                    } else if (!isNumeric(value)) {
                      return 'Nominal harus berupa angka!';
                    }
                    return null;
                  },
                ),
              ),
              DropdownButton(
                hint: Text("Pilih Jenis"),
                value: _selectedItem,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: tipe_operasi.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    tipe = newValue!;
                    _selectedItem = newValue;
                  });
                },
              ),
              // input jenis
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: dateinput,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today),
                      labelText: "Select Date"),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101));
                    if (pickedDate != null) {
                      setState(() {
                        dateinput.text =
                            DateFormat('dd-MM-yyyy').format(pickedDate);
                      });
                    }
                  },
                  // Validator sebagai validasi form
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Tanggal tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              Expanded(
                child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          List<String> temp = [
                            _namaLengkap,
                            _nominal,
                            tipe,
                            dateinput.text,
                          ];
                          daftar.add(temp);
                        }
                      },
                      child: const Text(
                        "Simpan",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
