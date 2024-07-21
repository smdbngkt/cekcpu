# cekcpu

Script untuk memeriksa detail CPU, RAM, storage, dan detail lainnya di VPS Ubuntu.

## Cara Penggunaan

1. Download script `cek.sh` dengan perintah berikut:
    ```bash
    curl -O https://raw.githubusercontent.com/smdbngkt/cekcpu/main/cek.sh
    ```

2. Berikan izin eksekusi pada script `cek.sh`:
    ```bash
    chmod +x cek.sh
    ```

3. Jalankan script untuk menampilkan informasi sistem:
    ```bash
    ./cek.sh
    ```

Script ini akan menampilkan informasi detail tentang CPU, RAM, storage, dan informasi lainnya dari VPS Anda dalam sekali jalan.

## Output yang Ditampilkan

Script ini akan menampilkan informasi berikut:
- Detail CPU
- Detail RAM
- Detail Storage
- Penggunaan Disk
- Interface Jaringan
- Detail Sistem Operasi
- Versi Kernel
- Waktu Operasi Sistem
- Proses yang Berjalan
- Port yang Mendengarkan
- 5 Proses dengan Penggunaan Memori Terbanyak
- 5 Proses dengan Penggunaan CPU Terbanyak

## Kontribusi

Jika Anda ingin berkontribusi pada proyek ini, silakan fork repositori ini dan buat pull request dengan perubahan yang ingin Anda ajukan.

## Lisensi

Proyek ini dilisensikan di bawah MIT License.
