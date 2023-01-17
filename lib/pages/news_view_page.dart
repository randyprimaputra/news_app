import 'package:flutter/material.dart';
import 'package:news_app/core/constants/palette.dart';

class NewsViewPage extends StatelessWidget {
  const NewsViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.background,
      appBar: AppBar(
        backgroundColor: Palette.background,
        elevation: 0,
        leading: IconButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Palette.deepBlue,
            size: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TITLE
              const Text(
                'Title',
                style: TextStyle(
                  color: Palette.deepBlue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // IMAGE
              Container(
                height: 300,
                color: Palette.lightGrey,
                child: Image.network(
                  'https://akcdn.detik.net.id/community/media/visual/2023/01/16/arsenal-3_169.jpeg?w=700&q=90',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              // DATE
              const Text(
                '17/1/2023',
                style: TextStyle(
                  color: Palette.lightGrey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 16),
              // AUTHOR NAME
              const Text(
                'Author name, Randy',
                style: TextStyle(
                  color: Palette.lightGrey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 16),
              // MAIN NEWS
              const Text(
                '''
London - Arsenal sedang mengerikan saat ini. Performa The Gunners membuat 'ramalan' Jose Mourinho kembali benar adanya.
        
Arsenal tampil brilian musim ini. Meriam London memuncaki klasemen Liga Inggris, mengungguli Manchester City dan Newcastle United.
        
Mikel Arteta mulai menunjukkan kualitasnya di Arsenal, pada musim ketiganya melatih. Di bawah arahan manajer Spanyol itu, Granit Xhaka dkk tampil gemilang dengan mengemas 15 kemenangan, dua hasil imbang, dan baru sekali kalah.
        
Performa Arsenal itu didapat berkat dihuni para pemain matang. Hanya Granit Xhaka yang berusia 30 tahun menjadi pemain paling tua, dan sisanya sederet pemain muda menghuni line up seperti Gabriel Martinelli (21), Bukayo Saka (21), Martin Odegaard (24), dan William Saliba (21).
        
Performa gemilang Arsenal di bawah Arteta membuat komentar Jose Mourinho viral lagi. Pelatih Portugal, yang sempat melatih Chelsea, Manchester United, dan Tottenham Hotspur, pernah memuji Arsenal di bawah Mikel Arteta.
        
Itu terjadi usai pertandingan pada musim 2020/2021, saat Mourinho melatih Tottenham. Usai menang 2-0 di Tottenham Hotspur Stadium, Mourinho mengatakan Arteta memang hanya butuh waktu untuk membuat Arsenal berjaya lagi.

"Secara taktik, mereka amat bagus, sangat terorganisasi. Mereka memberi kami masalah, namun berhasil kami atasi. Keberanian taktik mereka amat bagus dan semangatnya juga luar biasa. Mereka tim yang bagus dan Arteta manajer yang bagus," kata Mourinho saat itu, dilansir Sky Sports.
        
"Kami berhasil membaca arah permainan, dan membuat beberapa perubahan untuk memenanginya, para pemain saya tampil bagus hari ini."
        
"Arsenal tidak berada dalam posisi yang baik di klasemen, tetapi saya percaya dengan para pemainnya dan Mikel Arteta, Arsenal akan menjadi Arsenal lagi," ungkap Jose Mourinho, yang kini sudah melatih di AS Roma.
                ''',
                style: TextStyle(
                  color: Palette.deepBlue,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
