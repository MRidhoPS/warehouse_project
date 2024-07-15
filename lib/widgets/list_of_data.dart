import 'package:flutter/material.dart';
import 'package:warehouse_project/page/detail_page.dart';

import '../model/barang_model.dart';

class ListofData extends StatelessWidget {
  const ListofData({
    super.key,
    required this.futureBarang,
  });

  final Future<List<Barang>> futureBarang;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            // color: Colors.blue[100],
            borderRadius: BorderRadius.circular(13),
          ),
          child: FutureBuilder<List<Barang>>(
            future: futureBarang,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error}"),
                  );
                }
                final barang = snapshot.data ?? [];
                return ListView.builder(
                  itemCount: barang.length,
                  itemBuilder: (context, index) {
                    final barangIndex = barang[index];
                    return Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: GestureDetector(
                        // onTap: () =>
                        //     Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) =>
                        //       DetailPage(barangDetail: barangIndex),
                        // )),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade50,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: ListTile(
                            title: Text(barangIndex.namabarang),
                            subtitle: Text(barangIndex.jenisbarang),
                            trailing: Text(barangIndex.isDone ?? 'No'),
                          ),
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(child: Text("Connection Lost"));
              }
            },
          ),
        ),
      ],
    );
  }
}
