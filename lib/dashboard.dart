import 'package:flutter/material.dart';
import 'produk_detail.dart'; // Import halaman produk detail

class DashboardPage extends StatelessWidget {
  final List<Map<String, String>> salesData = [
    {
      "No Faktur": "001",
      "Tanggal Penjualan": "2024-10-01",
      "Nama Customer": "Ali",
      "Jumlah Barang": "10",
      "Total Penjualan": "Rp 1.000.000"
    },
    {
      "No Faktur": "002",
      "Tanggal Penjualan": "2024-10-05",
      "Nama Customer": "Budi",
      "Jumlah Barang": "15",
      "Total Penjualan": "Rp 1.500.000"
    },
    {
      "No Faktur": "003",
      "Tanggal Penjualan": "2024-10-10",
      "Nama Customer": "Citra",
      "Jumlah Barang": "8",
      "Total Penjualan": "Rp 800.000"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.teal, // Warna tosca
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              // Implement refresh action if needed
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Data Penjualan",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.blueGrey[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: salesData.length,
                itemBuilder: (context, index) {
                  final data = salesData[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProdukDetail(
                            produkData: data,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      elevation: 3,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "No Faktur: ${data['No Faktur']}",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[800],
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Tanggal Penjualan: ${data['Tanggal Penjualan']}",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Nama Customer: ${data['Nama Customer']}",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Jumlah Barang: ${data['Jumlah Barang']}",
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                              "Total Penjualan: ${data['Total Penjualan']}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.teal,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context); // Kembali ke Home
              },
              icon: Icon(Icons.arrow_back, color: Colors.blueGrey, size: 16),
              label: Text(
                'Kembali',
                style: TextStyle(color: Colors.blueGrey, fontSize: 14),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.blueGrey),
                minimumSize: Size(100, 36),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
