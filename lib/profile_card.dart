import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String nama;
  final String nim;
  final String hobi;
  final int skorAktivitas;

  const ProfileCard({
    super.key,
    required this.nama,
    required this.nim,
    required this.hobi,
    required this.skorAktivitas,
  });

  @override
  Widget build(BuildContext context) {
    final int lastDigit = int.parse(nim[nim.length - 1]);
    final int secondLastDigit = int.parse(nim[nim.length - 2]);

    final double lebarKartu = 320.0 + (secondLastDigit * 5);
    final double sudut = 12.0 + (lastDigit * 1.5);
    final double ukuranLogo = 60.0 + (lastDigit * 2);
    final double jarak = 15.0 + lastDigit;

    return Container(
      width: lebarKartu,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(sudut),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(sudut),
                ),
                child: FlutterLogo(size: ukuranLogo),
              ),
              SizedBox(width: jarak),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kartu Praktikan',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      nama,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(thickness: 1.5),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('NIM: $nim',
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 6),
              Text('Hobi: $hobi',
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 6),
              Text('Skor Aktivitas: $skorAktivitas',
                  style: const TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
        ],
      ),
    );
  }
}