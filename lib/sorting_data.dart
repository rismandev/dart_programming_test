// Created by Risman Abdilah
// Date     : 05 Oct 2022
// Version  : 1.0.0

// Fungsi sort data array menggunakan algoritma bubble sort.
// Parameter adalah data yang akan di sorting.
// Jika data kosong, kembalikan array kosong.
// Lakukan perulangan pertama sesuai jumlah data.
// Lakukan perulangan kedua dengan kondisi i < dataLength - step - 1
// Jika nilai pertama lebih besar dari nilai kedua, Lakukan proses perubahan data
// 1. Buat variable temporary untuk menampung nilai saat ini
// 2. Ubah nilai pertama dengan nilai selanjutnya
// 3. Ubah nilai selanjutnya dengan nilai dari variable temporary.
// Jangan lupa kembalikan data yang telah disorting.
List<int> sortData(List<int> data) {
  if (data.isEmpty) return <int>[];

  int dataLength = data.length;
  int i, step;
  for (step = 0; step < dataLength; step++) {
    for (i = 0; i < dataLength - step - 1; i++) {
      if (data[i] > data[i + 1]) {
        int temp = data[i];
        data[i] = data[i + 1];
        data[i + 1] = temp;
      }
    }
  }

  return data;
}
