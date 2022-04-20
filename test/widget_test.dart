void main() async {
  func1();
  await func4(30).then(
    (value) {
      print(value);
      print('Selamat');
    },
  ).catchError((error) {
    print(error);
    print('error');
  });
  func2();
  func3();
}

func1() {
  print('function 1');
}

func2() {
  print('function 2');
}

func3() {
  print('function 3');
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
