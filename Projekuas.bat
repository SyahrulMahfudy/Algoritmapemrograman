@echo off
set "username=1"
set "password=1"





:login
cls
echo Selamat datang di Program Menu Aplikasi
echo.

set /p "input_username=Masukkan username: "
set /p "input_password=Masukkan password: "

if "%input_username%"=="%username%" (
    if "%input_password%"=="%password%" (
        goto utama
    ) else (
        echo Password yang Anda masukkan salah.
        pause
        goto login
    )
) else (
    echo Username yang Anda masukkan salah.
    pause
    goto login
)





:utama
cls
echo Menu:
echo [1] Hitung
echo [2] Aplikasi Menu Aplikasi
echo [3] Menu Jaringan Komputer
echo [4] Menu Setting
echo [0] Keluar
echo.
set /p "pil=Masukkan pilihan: "
if "%pil%"=="1" (
    goto Hitung
) else if "%pil%"=="2" (
    goto menu
) else if "%pil%"=="3" (
    goto jaringan
) else if "%pil%"=="4" (
    goto pengaturan
) else if "%pil%"=="0" (
    goto exit
) else (
    echo Pilihan yang Anda masukkan salah.
    pause
    goto utama
)





:Hitung
cls
echo Aplikasi Menghitung:
echo [1] Penjumlahan
echo [2] Pengurangan
echo [3] Pembagian
echo [0] Kembali
echo.

set /p "pilih=Masukkan pilihan: "

if "%pilih%"=="1" (
    call :penjumlahan
) else if "%pilih%"=="2" (
    call :pengurangan
) else if "%pilih%"=="3" (
    call :pembagian
) else if "%pilih%"=="0" (
    goto utama
) else (
    echo Pilihan yang Anda masukkan salah.
    pause
    goto Hitung
)


:penjumlahan
cls
echo Masukkan dua angka yang akan dijumlahkan.
set /p "angka1=Angka pertama: "
set /p "angka2=Angka kedua: "
set /a hasil=angka1+angka2
echo.
echo Hasil penjumlahan: %hasil%
pause
goto Hitung

:pengurangan
cls
echo Masukkan dua angka yang akan dikurangkan.
set /p "angka1=Angka pertama: "
set /p "angka2=Angka kedua: "
set /a hasil=angka1-angka2
echo.
echo Hasil pengurangan: %hasil%
pause
goto Hitung

:pembagian
cls
echo Masukkan dua angka yang akan dibagi.
set /p "angka1=Angka pertama: "
set /p "angka2=Angka kedua: "
set /a hasil=angka1/angka2
echo.
echo Hasil pembagian: %hasil%
pause
goto Hitung




:menu
cls
echo Menu:
echo [1] Youtube
echo [2] word
echo [3] friv
echo [0] Kembali
echo.

set /p "choice=Masukkan pilihan: "

if "%choice%"=="1" (
    call :Youtube
) else if "%choice%"=="2" (
    call :word
) else if "%choice%"=="3" (
    call :friv
) else if "%choice%"=="0" (
    goto utama
) else (
    echo Pilihan yang Anda masukkan salah.
    pause
    goto menu
)

:Youtube
cls
start "" https://www.Youtube.com
pause
goto menu

:word
cls
start WINWORD.exe
pause
goto menu

:friv
cls
start "" https://www.friv.com
pause
goto menu




:Jaringan
cls
echo Menu:
echo [1] Cek Ip adress
echo [2] Cek ping
echo [3] friv
echo [0] Kembali
echo.

set /p "choice=Masukkan pilihan: "

if "%choice%"=="1" (
    call :ip
) else if "%choice%"=="2" (
    call :cekping
) else if "%choice%"=="3" (
    call :friv
) else if "%choice%"=="0" (
    goto utama
) else (
    echo Pilihan yang Anda masukkan salah.
    pause
    goto menu
)

:ip
cls
ipconfig /all
pause
goto Jaringan

:cekping
cls
ping www.google.com
pause
goto Jaringan



:pengaturan
cls
echo Menu:
echo [1] Shutdown
echo [2] Restart
echo [0] Kembali
echo.

set /p "choice=Masukkan pilihan: "

if "%choice%"=="1" (
    call :sd
) else if "%choice%"=="2" (
    call :rest
) else if "%choice%"=="0" (
    goto utama
) else (
    echo Pilihan yang Anda masukkan salah.
    pause
    goto menu
)

:sd
cls
set/p "mti=echo Anda yakin akan mematikan komputer? [Y/N]"
if %mti==y goto mti1
if %mti==n goto pengaturan


:mti1
echo Mematikan Komputer....
pause
shutdown -s -t 60 -c "Komputer akan dimatikan!"
goto pengaturan


:rest
cls
set/p "rst=echo Anda yakin akan mengrestart komputer? [Y/N]"
if %rst==y goto rst1
if %rst==n goto pengaturan

:rst1
echo mengrestart Komputer....
shutdown -r -t 00 -c "Restarting komputer sedang berjalan"

:exit
cls
echo Terima kasih telah menggunakan Program Kalkulator.
exit
pause
