import 'package:flutter/material.dart';
import 'package:warehouse_project/api/barang_api.dart';
import 'package:warehouse_project/widgets/top_header.dart';

import '../model/barang_model.dart';
import '../widgets/list_of_data.dart';
import '../widgets/total_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiBarang apiBarang = ApiBarang();
  late Future<List<Barang>> futureBarang;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureBarang = apiBarang.getBarang();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const TopHeader(),
              const ContainerTotal(),
              ListofData(futureBarang: futureBarang),
            ],
          ),
        ),
      ),
    );
  }
}


