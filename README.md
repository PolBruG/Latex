# 📄 Plantilla LaTeX — Pràctiques UPC

Plantilla completa de LaTeX per a pràctiques universitàries, basada en la classe `practicaitic` de la UPC. Inclou exemples de text, matemàtiques, taules, figures, codi font i molt més.

---

## 📁 Estructura del projecte

```
tex/
├── Plantilla.tex          # Plantilla principal (edita aquest fitxer)
├── practicaitic.cls       # Classe del document (no modificar)
├── practicaitic.tex       # Documentació de la classe
├── bolaupc.sty            # Estil corporatiu UPC
├── paletaupc.sty          # Paleta de colors UPC
├── ccbyncsa.sty           # Llicència CC BY-NC-SA
├── lst-python.sty         # Estil listings per a Python
├── lst-c.sty              # Estil listings per a C
├── lst-shell.sty          # Estil listings per a Shell
├── lst-sql.sty            # Estil listings per a SQL
├── lst-vhdl.sty           # Estil listings per a VHDL
├── lst-avr.sty            # Estil listings per a AVR
├── lst-erlang.sty         # Estil listings per a Erlang
├── lst-make.sty           # Estil listings per a Makefile
├── lst-common.sty         # Configuració comuna de listings
└── Makefile               # Compilació automatitzada
```

---

## 🚀 Com compilar

### Opció 1 — Make (recomanat)
```bash
make
```

### Opció 2 — pdflatex manual
```bash
pdflatex Plantilla.tex
pdflatex Plantilla.tex   # Segona passada per a les referències
```

### Opció 3 — latexmk
```bash
latexmk -pdf Plantilla.tex
```

> ⚠️ Cal compilar **dues vegades** amb `pdflatex` perquè les referències creuades (`\ref`, `\eqref`, `\cite`) es resolguin correctament.

---

## 🧹 Netejar fitxers temporals

```bash
make clean
```

O manualment:
```bash
rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk
```

---

## ✏️ Com usar la plantilla

Obre `Plantilla.tex` i modifica les metadades a la capçalera:

```latex
\numpract{1}            % Número de pràctica
\assignatura{LaTeX}     % Nom de l'assignatura
\titol{Títol}           % Títol de la pràctica
\autor{Nom Cognom}      % El teu nom
```

---

## 📦 Contingut de la plantilla

La plantilla inclou exemples de:

### ✍️ Text i estructura
- Format de text: negreta, cursiva, subratllat, codi, versaletes, colors
- Totes les mides de lletra (`\tiny` fins a `\huge`)
- Llistes desordenades, numerades (amb números, lletres, romans) i descriptives
- Citacions curtes i llargues
- Notes a peu de pàgina

### 🎨 Caixes de contingut (`tcolorbox`)
- Tasca, Nota important, Definició, Atenció, Solució, Resultat destacat

### ➗ Matemàtiques
- Notació bàsica, fraccions, arrels, valors absoluts
- Lletres gregues i símbols lògics/de conjunts
- Límits, derivades, integrals (simples, dobles, de línia)
- Sumatoris, productes, coeficients binomials
- Vectors, matrius, determinants
- Equacions alineades (`align`), sistemes, funcions a trossos
- Sèries de Taylor, Transformades de Fourier i Laplace
- Probabilitat i distribució normal
- Entorns `teorema`, `definicio`, `exemple`, `proof`
- Equacions de Maxwell i Schrödinger

### 📊 Taules
- Taula bàsica amb línies
- Taula professional (`booktabs`)
- `multicolumn` i `multirow`
- Files de color alternes (`colortbl`)
- Taula de dades numèriques

### 🖼️ Figures i gràfics
- Inserció d'imatges (`includegraphics`)
- Dues imatges en paral·lel (`subcaption`)
- Diagrama de flux (TikZ)
- Gràfic de funcions trigonomètriques (`pgfplots`)
- Diagrama de barres comparatiu (`pgfplots`)

### 💻 Codi font
- Python amb ressaltat de sintaxi i numeració de línies
- C amb ressaltat de sintaxi
- Pseudocodi estructurat

### ⚗️ Física i química
- Fórmules químiques amb subíndexs
- Reaccions químiques
- Equacions físiques amb unitats

### 🔗 Referències
- Referències creuades (`\ref`, `\eqref`)
- Hipervínculs i correus electrònics
- Bibliografia (`thebibliography`)
- Apèndix amb taula de símbols

---

## 📋 Requisits

Distribució **TeX Live 2023** o superior amb els paquets:

| Paquet | Grup |
|---|---|
| `tcolorbox`, `xcolor`, `colortbl` | Colors i caixes |
| `amsmath`, `amssymb`, `amsthm`, `mathtools` | Matemàtiques |
| `booktabs`, `multirow` | Taules |
| `graphicx`, `subcaption`, `wrapfig` | Figures |
| `tikz`, `pgfplots` | Gràfics vectorials |
| `listings` | Codi font |
| `hyperref`, `enumitem`, `soul`, `cancel` | Utilitats |

La majoria estan inclosos a `texlive-full`. Si en falta algun:

```bash
sudo apt install texlive-full        # Tot (recomanat, ~5 GB)
# O instal·lació mínima:
sudo apt install texlive-latex-extra texlive-science texlive-pictures
```

---

## 📝 Llicència

Aquest projecte segueix la llicència **Creative Commons BY-NC-SA 4.0**.  
Podeu utilitzar, adaptar i redistribuir el material sempre que citeu l'autor original, no en feu un ús comercial i mantingueu la mateixa llicència.

[![CC BY-NC-SA 4.0](https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

---

## 👤 Autor

**Pol Bru**
