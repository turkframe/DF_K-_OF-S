'use client';
import { useEffect } from 'react';
import { OFIS_GOVDE } from '@/lib/ofis-govde';

// 3D ofis: ofis.html'deki Three.js sahnesi olduğu gibi bu bileşenin içinde çalışır.
export default function Ofis3D() {
  useEffect(() => {
    import('@/lib/ofis-sahne').then(m => m.baslat());
  }, []);
  return <div style={{ display: 'contents' }} dangerouslySetInnerHTML={{ __html: OFIS_GOVDE }} />;
}
