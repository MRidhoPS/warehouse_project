class Barang {
  final int? id;
  final String namabarang;
  final String jenisbarang;
  final String isAuth;
  final String isFoto;
  final String isWarehouse;
  final String date;
  final String? isDone;

  Barang(
      {this.id,
      required this.namabarang,
      required this.jenisbarang,
      required this.isAuth,
      required this.isFoto,
      required this.isWarehouse,
      required this.date,
      this.isDone});

  factory Barang.fromJson(Map<String, dynamic> barang) {
    return Barang(
      id: barang['id'],
      namabarang: barang['nama_barang'],
      jenisbarang: barang['jenis_barang'],
      isAuth: barang['IsAuth'],
      isFoto: barang['IsFoto'],
      isWarehouse: barang['IsWarehouse'],
      date: barang['created_at'],
      isDone: barang['IsDone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nama_barang': namabarang,
      'jenis_barang': jenisbarang,
      'IsAuth': isAuth,
      'IsFoto': isFoto,
      'IsWarehouse': isWarehouse,
    };
  }
}
