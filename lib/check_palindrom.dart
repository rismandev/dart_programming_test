// Created by Risman Abdilah
// Date     : 05 Oct 2022
// Version  : 1.0.0

// Fungsi untuk menentukan kata termasuk palindrom atau bukan.
// Parameter word adalah kata yang akan dilakukan pengecekan.
// Nilai yang akan dikembalikan secara default adalah false, artinya kata bukan termasuk palindrom.
// 1. Simpan jumlah huruf dari kata ke dalam variable wordLength.
// 2. Ubah setiap huruf menjadi huruf kecil (lowercase) dan masukan ke dalam variable wordLowerCase.
// 3. Siapkan variable reverseWord untuk menampung kata sebaliknya.
// 4. Isi variable reverseWord dengan melakukan perulangan pada setiap huruf dari nilai wordLowerCase.
// 5. Lakukan perbandingan dengan fungsi compareTo milik class Object String, masukan hasil perbandingan ke dalam variable compareWord.
// 6. Cek Nilai compareWord, Jika nilainya adalah 0 maka kembalikan nilai true.
bool isPalindrom(String word) {
  int wordLength = word.length;
  String wordLowerCase = word.toLowerCase();

  String reverseWord = "";

  for (int i = wordLength - 1; i >= 0; i--) {
    reverseWord += wordLowerCase[i];
  }

  // Bisa cara seperti berikut, biar lebih ringkas
  // return wordLowerCase == reverseWord;
  // atau
  int compareWord = wordLowerCase.compareTo(reverseWord);
  return compareWord == 0;
}
