import 'package:flutter/material.dart';
// import 'package:warehouse_project/model/barang_model.dart';
import 'package:warehouse_project/widgets/default_container.dart';
import 'package:warehouse_project/widgets/text_widget.dart';

class DetailPage extends StatefulWidget {
  // final Barang barangDetail;
  // const DetailPage({super.key, required this.barangDetail});
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: DefaultContainer(
            width: 1,
            height: 3,
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Nama Barang: R6",
                        size: 16,
                      ),
                      TextWidget(
                        text: "Jenis Barang: motorcycle",
                        size: 16,
                      ),
                      TextWidget(
                        text: "Authenticator: yes",
                        size: 16,
                      ),
                      TextWidget(
                        text: "Foto Detail: yes",
                        size: 16,
                      ),
                      TextWidget(
                        text: "Warehouse: yes",
                        size: 16,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Date of Uploaded",
                        size: 20,
                        colors: Colors.black54,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextWidget(
                        text: "13-07-2024",
                        size: 26,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
