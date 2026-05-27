# Plan de Retiro Movistar — Tablero interactivo

Tablero ejecutivo HTML interactivo para planeación financiera personal post-retiro de Colombia Telecomunicaciones S.A. ESP BIC (Movistar/Telefónica), bonificación de retiro 2026.

## 🌐 URL pública

👉 **https://hgomezgonzalez.github.io/plan-retiro-movistar/**

## 📋 Contenido (18 slides)

1. Resumen ejecutivo · 2. Tu situación · 3. Deudas
4. Gastos recurrentes (validador + 3 capas eficiencias) · 5. Viaje USA jun/2026 (división familiar 7 pax)
6. Marco tributario · 7. Simulador fiscal · 8. Vehículos
9. Distribución sugerida · 10. Proyectos · 11. Inversiones pasivas (20 wallets)
12. Negocios físicos · 13. Análisis salarial · 14. Comunicados
15. Eficiencias post-retiro (simulador checkboxes) · 16. Cronograma 90 días
17. Riesgos · 18. Checklist final

## 🎨 Características

- **HTML autocontenido** (Chart.js CDN, sin dependencias locales)
- **18 slides** con navegación lateral + deep-linking (`#5` abre slide 5)
- **Toolbar editable** que recalcula todo en vivo
- **Simulador interactivo** de decisiones con checkboxes
- **Imprimible a PDF** (Ctrl+P)
- **Responsive** (desktop, tablet, mobile)

## ⚠️ Disclaimer

Documento orientativo personal. NO es asesoría tributaria/financiera vinculante. Validar con contador y asesor financiero antes de tomar decisiones.

## 🔒 Protección con contraseña (StatiCrypt)

El `index.html` publicado está **cifrado con AES-256** vía [StatiCrypt](https://github.com/robinmoisson/staticrypt). El visitante debe introducir la contraseña para ver el contenido. La fuente sin cifrar vive en `src/index.html` (no se sirve por Pages).

### Regenerar tras editar `src/index.html`

```bash
bash build.sh                              # pide pass interactiva
STATICRYPT_PASS='tu-pass' bash build.sh    # no interactivo
git add index.html src/index.html
git commit -m "update: <cambios>"
git push
```

> Si pierdes la contraseña, no hay recuperación: regenera con una nueva. El archivo `.staticrypt.json` (estado local) está gitignored.

## 📅 Última actualización

2026-05-25
