# Deniz Feneri Ajan Ofisi — Next.js (Vercel)

Kurumsal İletişim Müdürlüğü'nün 3D yapay zekâ ajan ofisi. Bu proje ofisin **web arayüzüdür**; Vercel'de yayınlanır.

## Şu anki durum (1. adım)
- 3D ofis, odalar, bütçe ekranı ve paneller çalışır.
- Ajanları çalıştıran motor (`claude-projelerim\ofis\server.js` + Claude Code) henüz bağlı değil: sayfa **izleme modunda** ("Çevrimdışı görünüm") açılır, görev verilemez.

## Yapı
- `app/page.tsx` → sayfa
- `components/Ofis3D.tsx` → 3D ofisi başlatan bileşen
- `lib/ofis-sahne.js` → Three.js sahnesi ve panel mantığı (eski `ofis.html` içindeki kod)
- `lib/ofis-govde.ts` → panel ve üst çubuk işaretlemesi
- `app/globals.css` → stiller

## Bilgisayarda çalıştırma
```
npm install
npm run dev
```
Tarayıcıda http://localhost:3000

## GitHub'a yükleme ve Vercel'de yayınlama
1. GitHub Desktop → File → Add local repository → bu klasörü seçin → "create a repository" → **Private** işaretli olarak Publish.
2. vercel.com → Add New → Project → GitHub'daki bu depoyu seçin → Framework: Next.js (otomatik) → Deploy.
3. Vercel → Project → Settings → Deployment Protection: erişimi kısıtlayın (link herkese açık kalmasın).

## Sonraki adımlar
2. Microsoft (Entra ID) ile kurumsal giriş
3. Motor bağlantısı: Vercel API rotaları görevleri gizli anahtarla motor makinesine iletir
4. Veritabanı ve dosya depolama (görev geçmişi, düzen, okundu bilgileri)
