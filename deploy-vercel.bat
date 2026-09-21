@echo off
title TRIEN KHAI WEBSITE LEN VERCEL - HUONG KUNKUNS
cd /d "%~dp0"
cls
echo ================================================================
echo   TRIEN KHAI WEBSITE OHANA ASTRONIXA LEN VERCEL
echo   Danh cho: Huong Kunkuns
echo ================================================================
echo.
echo Vercel CLI da san sang!
echo.
echo HUONG DAN TUNG BUOC:
echo 1. Neu la lan dau tien, Vercel se hoi: "Log in to Vercel"
echo    - Ban dung phim mui ten xuong/len va bam ENTER de chon "Continue with GitHub" hoac "Continue with Email"
echo    - Trinh duyet web se tu dong bat len, ban chi can bam nut "Authorize" de dang nhap.
echo.
echo 2. Sau khi dang nhap xong, quay lai man hinh nay:
echo    - Hoi "Set up and deploy ...? [Y/n]": Bam ENTER (de chon Yes)
echo    - Hoi "Which scope ...?": Bam ENTER
echo    - Hoi "Link to existing project? [y/N]": Bam ENTER (de chon No)
echo    - Hoi "What's your project's name?": Bam ENTER
echo    - Hoi "In which directory ...?": Bam ENTER
echo    - Hoi "Want to modify these settings? [y/N]": Bam ENTER
echo.
echo Cho 15 giay, Vercel se in ra link website .vercel.app cua ban!
echo ----------------------------------------------------------------
echo.
call "node_modules\.bin\vercel.cmd"
echo.
echo ================================================================
echo   DA HOAN TAT!
echo ================================================================
echo.
pause
