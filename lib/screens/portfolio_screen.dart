import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  // Data dummy untuk tabel portfolio
  final List<Map<String, dynamic>> projects = [
    {
      'no': 1,
      'name': 'Website Barbershop',
      'description':
          'Website pemesanan online untuk barbershop, barbershop tersebut bernama barberbor yang dibangun diatas HTML, CSS, JavaScript, Boostrap, PHP dan Laravel.',
    },
    {
      'no': 2,
      'name': 'Website Game Rock Paper Scissors',
      'description':
          'Proyek kecil yaitu game suit gunting kertas batu menggunakan HTML, CSS dan Javascript.',
    },
    {
      'no': 3,
      'name': 'Rinema',
      'description': 'Platform untuk pecinta film Indonesia',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Row(
          children: [
            Text(
              'イチラム',
              style: TextStyle(fontSize: 24, color: Colors.yellow[700]),
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text(
                'Home',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/portfolio');
              },
              child: Text(
                'Portfolio',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: Text(
                'Contact',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Portfolio',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('No')),
                  DataColumn(label: Text('Nama Proyek')),
                  DataColumn(label: Text('Deskripsi')),
                ],
                rows:
                    projects.map((project) {
                      return DataRow(
                        cells: [
                          DataCell(Text(project['no'].toString())),
                          DataCell(Text(project['name'])),
                          DataCell(Text(project['description'])),
                        ],
                      );
                    }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
