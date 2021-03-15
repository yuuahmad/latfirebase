import 'package:flutter/material.dart';
import 'package:latfirebase/page/autentifikasi/daftar_page.dart';
import 'package:latfirebase/page/bacadata_page.dart';
import 'package:latfirebase/page/buatdata_page.dart';
import 'package:latfirebase/page/hapusdata_page.dart';
import 'package:latfirebase/page/updatedata_page.dart';
import 'package:latfirebase/services/scale_transition.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Center(child: Text('Pilih Menu Anda'))),
            Listsaya('Buat Data', Icons.book, BuatData()),
            Listsaya('Baca Data', Icons.book, BacaData()),
            Listsaya('Update Data', Icons.book, UpdateData()),
            Listsaya('Hapus Data', Icons.book, HapusData()),
            Divider(),
            Listsaya('Keluar Akun', Icons.outbox, Daftar())
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Latihan Firebase'),
        centerTitle: true,
        elevation: 0,
        actions: [Icon(Icons.ac_unit)],
      ),
      body: Center(
        child: Text('ini adalah latihan firebase saya'),
      ),
    );
  }
}

class Listsaya extends StatelessWidget {
  final judul;
  final ikon;
  final route;
  Listsaya(this.judul, this.ikon, this.route);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(ikon),
      title: Text(judul),
      onTap: () {
        Navigator.pop(context);
        Navigator.push(context, ScaleRoute(page: route));
      },
    );
  }
}
