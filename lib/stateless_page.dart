import 'package:flutter/material.dart';

class StatelessPage extends StatelessWidget {
  const StatelessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil & Mahasiswa'), centerTitle: true,),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          // Profil
          const CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/img.png'),
          ),
          const Text('Naufal Maulana', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icons.email, Icons.phone, Icons.share].map((icon) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(color: Colors.black12, shape: BoxShape.circle),
              child: Icon(icon, size: 16),
            )).toList(),
          ),
          const Divider(height: 20),

          // 3 Kartu Mahasiswa dalam Column
          const Column(
            children: [
              KartuMahasiswa(nama: 'Ahmad Dahlan', nim: '301241001', prodi: 'Informatika'),
              KartuMahasiswa(nama: 'Ahmad Burhan', nim: '301241002', prodi: 'Informatika'),
              KartuMahasiswa(nama: 'Ahmad Santoso', nim: '301241003', prodi: 'Informatika'),
            ],
          ),
        ],
      ),
    );
  }
}

class KartuMahasiswa extends StatelessWidget {
  final String nama, nim, prodi;
  const KartuMahasiswa({super.key, required this.nama, required this.nim, required this.prodi});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.badge, color: Colors.blue),
        title: Text(nama, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('$nim • $prodi'),
      ),
    );
  }
}