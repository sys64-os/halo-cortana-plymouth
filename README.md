# Halo Cortana - Plymouth Theme for Ubuntu 26.04

Tema Plymouth kustom untuk Ubuntu 26.04 dengan nuansa antarmuka Halo Master Chief dan animasi AI Cortana (Jantung berdetak & efek *Glow*).

## Previews

### Tampilan Statis (Preview)
![Static Preview](preview.jpg)

### Tampilan Animasi (GIF)
![Animation Preview](preview.gif)

## Fitur
- Animasi detak jantung AI Cortana yang halus (30 FPS).
- Resolusi adaptif: Otomatis menyesuaikan rasio layar (Background akan di-scale sesuai layar monitor/laptop).
- Dukungan interaktif: Mendukung penuh input password enkripsi disk (LUKS) dengan font berwarna biru UI Cortana.
- Pesan Sistem: Menampilkan status loading/booting dan *fsck* (pengecekan disk) secara rapi di layar.
- Instalasi 1-klik menggunakan bash script.

## Cara Pemasangan (Instalasi)
1. Ekstrak file zip ini.
2. Buka Terminal (`Ctrl`+`Alt`+`T`) dan navigasikan ke dalam folder hasil ekstraksi.
3. Jalankan perintah berikut:
   ```bash
   sudo ./install.sh
   ```
4. Tunggu hingga proses update `initramfs` selesai.
5. *Reboot* komputer Anda untuk melihat hasilnya.

## Cara Menghapus / Mengembalikan Tema Default
Jika Anda ingin kembali ke tema bawaan Ubuntu (default), jalankan perintah ini di terminal:
```bash
sudo update-alternatives --config default.plymouth
```
Pilih nomor yang sesuai dengan tema bawaan Ubuntu (biasanya `bgrt` atau `ubuntu-logo`), lalu tekan Enter. 
Setelah itu jalankan:
```bash
sudo update-initramfs -u
```
