# GEDOG-DEX untuk Android

Proyek Android WebView untuk membungkus HTML GEDOG-DEX menjadi aplikasi Android. File HTML asli dari ZIP dipertahankan tanpa mengubah isi halaman; semua gambar lokal ikut disimpan di `app/src/main/assets/www/`.

## Yang didukung
- Aplikasi membuka GEDOG-DEX dari aset lokal, sehingga foto `mbg.jpg`, `puzzle.jpg`, dan gambar lain tidak bergantung pada path TrebEdit.
- JavaScript dan DOM storage diaktifkan untuk fungsi interaktif.
- Fitur kamera meminta izin Android saat diperlukan.
- Tautan sumber eksternal dibuka lewat browser.
- TensorFlow.js/MobileNet yang dimuat dari CDN tetap memerlukan koneksi internet.

## Cara membuat APK

**APK belum disertakan dalam paket ini.** Lingkungan pembuatan saat paket disiapkan tidak memiliki Android SDK/Gradle dan tidak dapat mengunduh dependensi, sehingga saya tidak bisa mengklaim build APK berhasil.

1. Ekstrak ZIP ini di komputer.
2. Buka Android Studio dan pilih **Open**, lalu pilih folder `GEDOG-DEX-Android`.
3. Gunakan JDK 17 atau JDK bawaan Android Studio. Izinkan Android Studio mengunduh Android SDK Platform 35, Android Gradle Plugin, dan dependensi saat diminta.
4. Setelah Gradle Sync sukses, pilih **Build > Build Bundle(s) / APK(s) > Build APK(s)**.
5. APK debug akan berada di `app/build/outputs/apk/debug/app-debug.apk`.

## Identitas aplikasi
- Nama: GEDOG-DEX
- Application ID: `com.gedogdex.app`
- Versi: 1.0 (debug build)

Catatan: Fitur pemindai di HTML tetap mengikuti implementasi HTML yang ada. Pembungkusan ini memberi konteks aplikasi Android dan izin kamera, tetapi tidak menjamin prediksi AI akan berjalan offline karena model AI dimuat dari CDN.

## Alternatif build otomatis (GitHub Actions)

Proyek juga menyertakan workflow `.github/workflows/build-apk.yml`.

1. Unggah seluruh isi folder proyek ini ke repositori GitHub milikmu.
2. Buka tab **Actions**, pilih **Build GEDOG-DEX APK**, lalu tekan **Run workflow**.
3. Setelah selesai, buka hasil workflow dan unduh artifact **GEDOG-DEX-debug-apk**.
4. Ekstrak artifact untuk mendapatkan `app-debug.apk`.

Workflow ini memerlukan akun GitHub dan koneksi internet untuk mengunduh Android SDK serta dependensi. APK debug cocok untuk pengujian dan instalasi manual; APK belum ditandatangani sebagai rilisan Play Store.
