import 'package:flutter/material.dart';

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
            Center(
              child: SizedBox(
                width: 600, // Lebar tabel lebih kecil
                child: Table(
                  border: TableBorder(
                    horizontalInside: BorderSide(width: 0.5, color: Colors.grey),
                    verticalInside: BorderSide(width: 0.5, color: Colors.grey),
                    top: BorderSide(width: 1.0, color: Colors.black),
                    bottom: BorderSide(width: 1.0, color: Colors.black),
                    left: BorderSide(width: 1.0, color: Colors.black),
                    right: BorderSide(width: 1.0, color: Colors.black),
                  ),
                  columnWidths: {
                    0: FlexColumnWidth(2),
                  },
                  children: [
                    TableRow(
                      decoration: BoxDecoration(color: Colors.grey[200]),
                      children: [
                        for (var header in ["No Faktur", "Tanggal", "Customer", "Jumlah", "Total"])
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              header,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey[800],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                      ],
                    ),
                    for (var data in salesData)
                      TableRow(
                        children: [
                          for (var value in [
                            data["No Faktur"],
                            data["Tanggal Penjualan"],
                            data["Nama Customer"],
                            data["Jumlah Barang"],
                            data["Total Penjualan"]
                          ])
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                value!,
                                textAlign: TextAlign.center,
                              ),
                            ),
                        ],
                      ),
                  ],
                ),
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
