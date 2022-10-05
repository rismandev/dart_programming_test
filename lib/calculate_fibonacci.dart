// Created by Risman Abdilah
// Date     : 05 Oct 2022
// Version  : 1.0.0

// Fungsi kalkulasi utama
// Parameter number adalah nilai yang menjadi acuan fibonacci
// Variable result akan menampung semua data fibonacci dalam bentuk string
List<int> calculate(int number) {
  List<int> result = <int>[];

  for (int i = 0; fibonacci(i) <= number; ++i) {
    result.add(fibonacci(i));
  }

  return result;
}

// Fungsi kalulasi bilangan fibonacci
// Parameter n berisi nilai yang akan di kalkulasi
// Jika n bernilai 0, maka nilai yang dikembalikan adalah 0
// Jika n bernilai 1 atau 2, maka nilai yang dikembalikan adalah 1
// Jika n bernilai lebih dari 2, maka nilai yang dikembalikan adalah hasil kalkulasi dari (n - 2) + (n - 1)
int fibonacci(int n) {
  if (n == 0) return 0;

  if (n <= 2) return 1;

  return fibonacci(n - 2) + fibonacci(n - 1);
}
