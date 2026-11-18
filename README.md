# 🪪 Tugas 1 Pemrograman Mobile — Kartu Profil Praktikan (Flutter)

Aplikasi Flutter sederhana yang menampilkan **kartu profil praktikan** (nama, NIM, hobi, skor aktivitas). Tugas 1 mata kuliah Pemrograman Mobile — **Kelompok 2, kelas KH002**.

Fokus tugas ini adalah **komposisi widget** dan **passing parameter antar widget**: `HomePage` menyusun data, lalu mengirimkannya ke widget `ProfileCard` yang dibuat reusable. Nilai-nilai visual (warna latar, lebar kartu, sudut lengkung, ukuran logo) dihitung otomatis dari digit-digit NIM, sehingga setiap praktikan menghasilkan tampilan yang berbeda.

---

## ✨ Yang Ditampilkan

Kartu berisi:
- Logo Flutter
- Label **"Kartu Praktikan"** + nama lengkap
- NIM
- Hobi
- Skor Aktivitas

---

## 🧮 Personalisasi Berdasarkan NIM

Semua angka diambil dari NIM `20240801192`:

| Elemen | Rumus | Hasil untuk NIM ini |
|---|---|---|
| Warna latar | Digit terakhir **ganjil** → `tealAccent[100]`, **genap** → `amber[100]` | digit terakhir `2` (genap) → **amber** |
| Skor Aktivitas | 2 digit terakhir NIM + 50 | `92 + 50` = **142** |
| Lebar kartu | `320 + (digit kedua dari belakang × 5)` | `320 + 45` = **365 px** |
| Sudut lengkung | `12 + (digit terakhir × 1.5)` | `12 + 3` = **15°** |
| Ukuran logo | `60 + (digit terakhir × 2)` | `60 + 4` = **64 px** |
| Jarak logo–teks | `15 + digit terakhir` | **17 px** |

Data praktikan didefinisikan sebagai konstanta di `lib/main.dart`:

```dart
const String kNama = 'Ahmad Faishal Baihaqi';
const String kNim  = '20240801192';
const String kHobi = 'Belajar';
```

Ganti ketiga konstanta tersebut dengan data Anda — seluruh tampilan akan menyesuaikan otomatis karena semua nilai visual diturunkan dari NIM.

---

## 🧰 Teknologi

- **Flutter** (Dart 3) dengan Material Design
- Tanpa dependency tambahan selain `cupertino_icons`
- Mendukung Android, iOS, Web, Windows, macOS, dan Linux

---

## 📁 Struktur Project

```text
├── lib/
│   ├── main.dart           # Entry point, tema, dan HomePage
│   └── profile_card.dart   # Widget reusable ProfileCard
├── test/widget_test.dart   # Widget test bawaan template
├── pubspec.yaml
└── android/ ios/ web/ windows/ linux/ macos/
```

`ProfileCard` menerima 4 parameter wajib:

```dart
ProfileCard(
  nama: kNama,
  nim: kNim,
  hobi: kHobi,
  skorAktivitas: skor,
)
```

---

## 🚀 Cara Menjalankan

### Prasyarat
- [Flutter SDK](https://docs.flutter.dev/get-started/install) 3.x (`flutter doctor` bersih)
- Emulator atau perangkat fisik

### Langkah
```bash
flutter pub get
flutter run
```

Menjalankan test:
```bash
flutter test
```

---

## 📄 Lisensi

Proyek tugas akademik — bebas dipakai sebagai referensi belajar.
