import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  final Map<String, String> produkData;

  ProdukDetail({required this.produkData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Produk"),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                produkData['Nama Customer'] ?? 'Nama Customer',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[700],
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "No Faktur:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[700],
              ),
            ),
            Text(
              produkData['No Faktur'] ?? 'No Faktur tidak tersedia',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Tanggal Penjualan:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[700],
              ),
            ),
            Text(
              produkData['Tanggal Penjualan'] ?? 'Tanggal tidak tersedia',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Jumlah Barang:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[700],
              ),
            ),
            Text(
              produkData['Jumlah Barang'] != null ? '${produkData['Jumlah Barang']} unit' : 'Jumlah tidak tersedia',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              "Total Penjualan:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[700],
              ),
            ),
            Text(
              produkData['Total Penjualan'] ?? 'Total tidak tersedia',
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context); // Kembali ke halaman sebelumnya
                },
                icon: Icon(Icons.arrow_back, color: Colors.white, size: 18),
                label: Text(
                  'Kembali',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[700],
                  minimumSize: Size(120, 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
