import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  final TextEditingController fakturController = TextEditingController();
  final TextEditingController tanggalController = TextEditingController();
  final TextEditingController customerController = TextEditingController();
  final TextEditingController jumlahController = TextEditingController();
  final TextEditingController totalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Data"),
        backgroundColor: Colors.teal, // Warna tosca
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tambah Data Penjualan",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.blueGrey[700],
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: SizedBox(
                width: 400, // Lebar tabel lebih kecil
                child: Table(
                  border: TableBorder(
                    horizontalInside: BorderSide(width: 0.5, color: Colors.grey),
                    verticalInside: BorderSide(width: 0.5, color: Colors.grey),
                  ),
                  columnWidths: {
                    0: FlexColumnWidth(2),
                  },
                  children: [
                    _buildTableRow("No Faktur", fakturController),
                    _buildTableRow("Tanggal", tanggalController),
                    _buildTableRow("Customer", customerController),
                    _buildTableRow("Jumlah", jumlahController),
                    _buildTableRow("Total", totalController),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context); // Kembali ke Home
                  },
                  icon: Icon(Icons.save, color: Colors.blueGrey, size: 16),
                  label: Text(
                    'Simpan',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 36), // Ukuran tombol lebih kecil
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.blueGrey),
                  ),
                ),
                SizedBox(width: 8), // Jarak antar tombol lebih dekat
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
                    minimumSize: Size(100, 36), // Ukuran tombol lebih kecil
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.blueGrey),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String label, TextEditingController controller) {
    return TableRow(
      children: [
        Padding(
          padding: EdgeInsets.all(4.0), // Padding lebih kecil
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey[800],
                ),
              ),
              SizedBox(height: 4), // Jarak antara label dan TextField lebih kecil
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8), // Padding dalam TextField lebih kecil
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
