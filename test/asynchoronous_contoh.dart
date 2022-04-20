void main() async {
  func1();
  func2();
  await func4(5).then(
    (value) {
      print('Selamat');
      print(value);
    },
  ).catchError((error) {
    print('error');
    print(error);
  });
  func3();
}

func1() {
  print('data 1');
}

func2() {
  print('data 2');
}

func3() {
  print('data 3');
}

Future<String> func4(int barang) {
  int stok = 10;
  return Future.delayed(Duration(seconds: 3), () {
    if (barang < stok) {
      return 'berhasil membeli barang sejumlah $barang ';
    } else {
      throw 'Maaf Stok Barang Kurang :( ';
    }
  });
}
