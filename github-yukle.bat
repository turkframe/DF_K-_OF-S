@echo off
title GitHub'a yukle - Deniz Feneri Ajan Ofisi
cd /d "%~dp0"
echo.
echo  Bu dosya ofis-next projesini GitHub'daki depoya yukler:
echo  https://github.com/turkframe/DF_K-_OF-S
echo.
where git >nul 2>nul
if errorlevel 1 goto GITYOK

if not exist ".git" git init -b main
git config user.name >nul 2>nul || git config user.name "turkframe"
git config user.email >nul 2>nul || git config user.email "turkframe@users.noreply.github.com"
git add -A
git -c core.safecrlf=false commit -m "Deniz Feneri Ajan Ofisi: Next.js arayuzu (ilk surum)" -m "3D ofis sahnesi Next.js 15 istemci bilesenine tasindi; motor bagli degilken izleme modunda calisir; Vercel'de yayina hazir." -m "Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>" -m "Claude-Session: https://claude.ai/code/session_01AqxYGFtjfPADz8AmxB3Vbz"
git branch -M main
git remote remove origin >nul 2>nul
git remote add origin https://github.com/turkframe/DF_K-_OF-S.git
echo.
echo  GitHub'a gonderiliyor. Giris penceresi acilirsa GitHub hesabinizla girin.
echo.
git push -u origin main
if errorlevel 1 goto PUSHHATA
echo.
echo  TAMAM: Proje GitHub'a yuklendi.
echo  Simdi vercel.com - Add New - Project - DF_K-_OF-S - Import - Deploy
echo.
pause
exit /b 0

:PUSHHATA
echo.
echo  Gonderilemedi. Sik nedenler:
echo   - GitHub girisi yapilmadi ya da bu depoya yazma izniniz yok
echo   - Depoyu acarken README eklendiyse: once su komutu calistirin, sonra bu dosyayi tekrar acin:
echo       git pull origin main --allow-unrelated-histories --no-edit
echo  Hata yazisinin ekran goruntusunu Claude'a gonderebilirsiniz.
echo.
pause
exit /b 1

:GITYOK
echo  Git bulunamadi.
echo  https://git-scm.com/download/win adresinden "Git for Windows" kurun
echo  (varsayilan ayarlarla), sonra bu dosyayi tekrar calistirin.
start https://git-scm.com/download/win
echo.
pause
exit /b 1
