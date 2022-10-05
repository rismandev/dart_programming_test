// Created by Risman Abdilah
// Date     : 05 Oct 2022
// Version  : 1.0.0

// Fungsi isAnagram membandingkan dua kata apakah anagram atau bukan.
// Parameter berisi kata 1 dan kata 2.
// Nilai yang akan dikembalikan adalah perbandingan apakah kata 1 dan kata 2 merupakan anagram.
// Ubah setiap kata kedalam array, kemudian sorting setiap huruf.
// Setelah itu, ubah kembali ke dalam string.
// Lakukan perbandingan
bool isAnagram(String firstWord, String secondWord) {
  final arrayFirstWord = firstWord.split("");
  arrayFirstWord.sort((a, b) => a.compareTo(b));
  final sortedFirstWord = arrayFirstWord.join("");

  final arraySecondWord = secondWord.split("");
  arraySecondWord.sort((a, b) => a.compareTo(b));
  final sortedSecondWord = arraySecondWord.join("");

  return sortedFirstWord == sortedSecondWord;
}

// Fungsi untuk mencari kata anagrams.
// Parameter pertama adalah kata yang akan dilakukan pengecekan.
// Nilai yang akan dikembalikan adalah list berupa kata anagram.
// Parameter kedua adalah list kata yang akan menjadi acuan untuk melalukan pengecekan.
// Dibutuhkan variable result untuk menampung hasil pengecekan.
// Fungsi isAnagram adalah fungsi untuk membandingkan dua kata apakah anagram atau bukan.
List<String> findAnagrams(String str, List<String> list) {
  List<String> result = [];

  for (String word in list) {
    if (isAnagram(str, word)) {
      result.add(word);
    }
  }

  return result;
}

// Fungsi utama untuk mencari data anagrams
// Parameter input harus bernilai list kata, contoh : ["Aku", "Kamu", "Satu", "Muka"]
// Nilai yang dikembalikan adalah list anagrams,
//
// 1. Buat variable listAnagram untuk menampung datanya.
// 2. Lakukan perulangan dari input kata, karena i = 0 maka i harus kurang dari jumlah input kata
// 3. Lakukan proses pencarian kata anagram, hasilnya simpan ke dalam variable listData
// 4. Ubah listData ke dalam string, Lakukan pengecekan untuk mencegah data duplikat ketika menambah listData ke varible listAnagram.
// 5. Lakukan proses sorting berdasarkan jumlah data anagram terbanyak.
// Jika hanya terdapat 1 kata di dalam listData, artinya kata tersebut tidak memiliki hubungan anagram dengan kata lainnya dari inputan.
List<String> search(List<String> input) {
  List<String> listAnagram = [];

  for (int i = 0; i < input.length; i++) {
    final listData = findAnagrams(input[i], input);

    if (!listAnagram.contains(listData.toString())) {
      listAnagram.add(listData.toString());
    }
  }

  listAnagram.sort((a, b) => b.length.compareTo(a.length));

  return listAnagram;
}
