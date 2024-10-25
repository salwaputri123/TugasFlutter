import 'package:flutter/material.dart';

class UpdatePage extends StatelessWidget {
  final TextEditingController noFakturController = TextEditingController(text: "001");
  final TextEditingController tanggalController = TextEditingController(text: "2024-10-01");
  final TextEditingController customerController = TextEditingController(text: "Ali");
  final TextEditingController jumlahController = TextEditingController(text: "10");
  final TextEditingController totalController = TextEditingController(text: "Rp 1.000.000");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Data"),
        backgroundColor: Colors.teal, // Warna tosca
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Update Data Penjualan",
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
                    _buildTableRow("No Faktur", noFakturController),
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
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.update, color: Colors.blueGrey, size: 16),
                  label: Text(
                    'Update',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 36),
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.blueGrey),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.blueGrey, size: 16),
                  label: Text(
                    'Kembali',
                    style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 36),
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
          padding: EdgeInsets.all(4.0),
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
              SizedBox(height: 4),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
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
