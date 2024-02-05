Basic numbers for CONSORT diagram of WordGen
================
Geiser C. Challco <geiser@alumni.usp.br>

- [Enrollment (participant
  distribution)](#enrollment-participant-distribution)
- [Allocation (participant
  distribution)](#allocation-participant-distribution)
  - [Allocation for *Controle* Group](#allocation-for-controle-group)
  - [Allocation for *External* Group](#allocation-for-external-group)
- [Follow-up (participant
  distribution)](#follow-up-participant-distribution)
  - [Information of follow-up for *Controle*
    Group](#information-of-follow-up-for-controle-group)
  - [Information of follow-up for *Experimental*
    Group](#information-of-follow-up-for-experimental-group)
- [Data Analysis (participant
  distribution)](#data-analysis-participant-distribution)
  - [Data Analysis for *Controle*
    Group](#data-analysis-for-controle-group)
    - [Analysis of Vocabulary for
      *Controle*](#analysis-of-vocabulary-for-controle)
    - [Analysis of Writting Performance (TDE) for
      *Controle*](#analysis-of-writting-performance-tde-for-controle)
  - [Data Analysis for *Experimental*
    Group](#data-analysis-for-experimental-group)
    - [Analysis of Vocabulary for *Experimental*
      group](#analysis-of-vocabulary-for-experimental-group)
    - [Analysis of Writting Performance (TDE) for *Experimental*
      group](#analysis-of-writting-performance-tde-for-experimental-group)

``` r
library(knitr)
library(rmarkdown)

library(readxl)

get_distribution <- function(data, cnames) {
  do.call(rbind, lapply(cnames, FUN = function(x) {
    df = as.data.frame(table(data[[x]]))
    n.na = nrow(data) - sum(df$Freq)
    df$Pct = round(100*df$Freq/nrow(data), 2)

    df = rbind(data.frame(Var1=paste0("",x), Freq=NA, Pct=NA), df)
    if (n.na > 0)
      df = rbind(df, data.frame(
        Var1="Not declared", Freq=n.na, Pct=round(100*n.na/nrow(data), 2)))

    rbind(df, data.frame(Var1=NA, Freq=NA, Pct=NA))
  }))
}
```

**Note**: Setting Initial Variables

``` r
options(knitr.kable.NA = '')

cname0 = c("Sexo", "Zona", "Cor.Raca", "Idade", "Escola", "Serie")
cnames = c(cname0, "Necessidade.Deficiencia")

data <- read_excel("../data/data.xlsx")
```

# Enrollment (participant distribution)

``` r
wg.dat = data[which(!is.na(data$WG.Grupo)),]
```

Total of participants: 1805

``` r
df = get_distribution(data, cnames)
```

| Var1                                                      | Freq |   Pct |
|:----------------------------------------------------------|-----:|------:|
| Sexo                                                      |      |       |
| F                                                         |  973 | 48.19 |
| M                                                         | 1046 | 51.81 |
|                                                           |      |       |
| Zona                                                      |      |       |
| Rural                                                     |  899 | 44.53 |
| Urbana                                                    |  536 | 26.55 |
| Not declared                                              |  584 | 28.93 |
|                                                           |      |       |
| Cor.Raca                                                  |      |       |
| Amarela                                                   |    4 |  0.20 |
| Branca                                                    |  191 |  9.46 |
| Indígena                                                  |   55 |  2.72 |
| Parda                                                     |  638 | 31.60 |
| Preta                                                     |    3 |  0.15 |
| Not declared                                              | 1128 | 55.87 |
|                                                           |      |       |
| Idade                                                     |      |       |
| 10                                                        |    1 |  0.05 |
| 11                                                        |  309 | 15.30 |
| 12                                                        |  422 | 20.90 |
| 13                                                        |  459 | 22.73 |
| 14                                                        |  435 | 21.55 |
| 15                                                        |  245 | 12.13 |
| 16                                                        |   88 |  4.36 |
| 17                                                        |   34 |  1.68 |
| 18                                                        |   13 |  0.64 |
| 19                                                        |    5 |  0.25 |
| 20                                                        |    4 |  0.20 |
| 21                                                        |    2 |  0.10 |
| 22                                                        |    1 |  0.05 |
| 23                                                        |    1 |  0.05 |
|                                                           |      |       |
| Escola                                                    |      |       |
| EMEB EXPEDITO PORFIRIO DOS SANTOS                         |  142 |  7.03 |
| EMEB NATANAEL DA SILVA                                    |  162 |  8.02 |
| EMEB PADRE ANCHIETA                                       |  321 | 15.90 |
| EMEB PROFESSOR RICARDO VIEIRA DE LIMA                     |  727 | 36.01 |
| EMEB PROFESSORA MARIA QUEIROZ FERRO                       |  420 | 20.80 |
| EMEF PADRE JOSE DOS SANTOS MOUSINHO                       |  247 | 12.23 |
|                                                           |      |       |
| Serie                                                     |      |       |
| 6 ano                                                     |  526 | 26.05 |
| 7 ano                                                     |  556 | 27.54 |
| 8 ano                                                     |  469 | 23.23 |
| 9 ano                                                     |  468 | 23.18 |
|                                                           |      |       |
| Necessidade.Deficiencia                                   |      |       |
| Autismo Infantil                                          |    3 |  0.15 |
| Baixa Visão                                               |    3 |  0.15 |
| Deficiência Auditiva                                      |    1 |  0.05 |
| Deficiência Física                                        |    1 |  0.05 |
| Deficiência Intelectual                                   |   20 |  0.99 |
| Déficit Cognitivo e da Independência e Défcit Intelectual |    1 |  0.05 |
| Distúrbio da atividade e da atenção                       |    1 |  0.05 |
| G40.9 - Epilepsia, não especificada                       |    1 |  0.05 |
| Nanismo                                                   |    1 |  0.05 |
| Paralisia cerebral                                        |    1 |  0.05 |
| Síndrome de Down                                          |    1 |  0.05 |
| TID - Transtorno Invasivo do Desenvolvimento              |    1 |  0.05 |
| Transtorno hipercinético da conduta                       |    2 |  0.10 |
| Not declared                                              | 1982 | 98.17 |
|                                                           |      |       |

# Allocation (participant distribution)

## Allocation for *Controle* Group

``` r
dat.ctr = wg.dat[which(wg.dat$WG.Grupo == "Controle"),]
```

Participants allocated to controle group: 769

``` r
df = get_distribution(dat.ctr, cnames)
```

| Var1                                                      | Freq |   Pct |
|:----------------------------------------------------------|-----:|------:|
| Sexo                                                      |      |       |
| F                                                         |  376 | 48.89 |
| M                                                         |  393 | 51.11 |
|                                                           |      |       |
| Zona                                                      |      |       |
| Rural                                                     |  351 | 45.64 |
| Urbana                                                    |  207 | 26.92 |
| Not declared                                              |  211 | 27.44 |
|                                                           |      |       |
| Cor.Raca                                                  |      |       |
| Branca                                                    |   77 | 10.01 |
| Indígena                                                  |   21 |  2.73 |
| Parda                                                     |  254 | 33.03 |
| Preta                                                     |    1 |  0.13 |
| Not declared                                              |  416 | 54.10 |
|                                                           |      |       |
| Idade                                                     |      |       |
| 11                                                        |  112 | 14.56 |
| 12                                                        |  162 | 21.07 |
| 13                                                        |  183 | 23.80 |
| 14                                                        |  173 | 22.50 |
| 15                                                        |   90 | 11.70 |
| 16                                                        |   30 |  3.90 |
| 17                                                        |    9 |  1.17 |
| 18                                                        |    5 |  0.65 |
| 19                                                        |    1 |  0.13 |
| 20                                                        |    2 |  0.26 |
| 21                                                        |    1 |  0.13 |
| 22                                                        |    1 |  0.13 |
|                                                           |      |       |
| Escola                                                    |      |       |
| EMEB EXPEDITO PORFIRIO DOS SANTOS                         |   46 |  5.98 |
| EMEB NATANAEL DA SILVA                                    |   34 |  4.42 |
| EMEB PADRE ANCHIETA                                       |  184 | 23.93 |
| EMEB PROFESSOR RICARDO VIEIRA DE LIMA                     |  240 | 31.21 |
| EMEB PROFESSORA MARIA QUEIROZ FERRO                       |  171 | 22.24 |
| EMEF PADRE JOSE DOS SANTOS MOUSINHO                       |   94 | 12.22 |
|                                                           |      |       |
| Serie                                                     |      |       |
| 6 ano                                                     |  215 | 27.96 |
| 7 ano                                                     |  214 | 27.83 |
| 8 ano                                                     |  163 | 21.20 |
| 9 ano                                                     |  177 | 23.02 |
|                                                           |      |       |
| Necessidade.Deficiencia                                   |      |       |
| Autismo Infantil                                          |    1 |  0.13 |
| Baixa Visão                                               |    2 |  0.26 |
| Deficiência Auditiva                                      |    1 |  0.13 |
| Deficiência Física                                        |    1 |  0.13 |
| Deficiência Intelectual                                   |    5 |  0.65 |
| Déficit Cognitivo e da Independência e Défcit Intelectual |    1 |  0.13 |
| G40.9 - Epilepsia, não especificada                       |    1 |  0.13 |
| Nanismo                                                   |    1 |  0.13 |
| Paralisia cerebral                                        |    1 |  0.13 |
| Síndrome de Down                                          |    1 |  0.13 |
| Transtorno hipercinético da conduta                       |    1 |  0.13 |
| Not declared                                              |  753 | 97.92 |
|                                                           |      |       |

## Allocation for *External* Group

``` r
dat.exp = wg.dat[which(wg.dat$WG.Grupo == "Experimental"),]
```

Participants allocated to external group: 1036\`

``` r
df = get_distribution(dat.exp, cnames)
```

| Var1                                         | Freq |   Pct |
|:---------------------------------------------|-----:|------:|
| Sexo                                         |      |       |
| F                                            |  508 | 49.03 |
| M                                            |  528 | 50.97 |
|                                              |      |       |
| Zona                                         |      |       |
| Rural                                        |  426 | 41.12 |
| Urbana                                       |  289 | 27.90 |
| Not declared                                 |  321 | 30.98 |
|                                              |      |       |
| Cor.Raca                                     |      |       |
| Amarela                                      |    3 |  0.29 |
| Branca                                       |   92 |  8.88 |
| Indígena                                     |   22 |  2.12 |
| Parda                                        |  299 | 28.86 |
| Preta                                        |    1 |  0.10 |
| Not declared                                 |  619 | 59.75 |
|                                              |      |       |
| Idade                                        |      |       |
| 11                                           |  161 | 15.54 |
| 12                                           |  215 | 20.75 |
| 13                                           |  226 | 21.81 |
| 14                                           |  221 | 21.33 |
| 15                                           |  126 | 12.16 |
| 16                                           |   52 |  5.02 |
| 17                                           |   21 |  2.03 |
| 18                                           |    7 |  0.68 |
| 19                                           |    4 |  0.39 |
| 20                                           |    1 |  0.10 |
| 21                                           |    1 |  0.10 |
| 23                                           |    1 |  0.10 |
|                                              |      |       |
| Escola                                       |      |       |
| EMEB EXPEDITO PORFIRIO DOS SANTOS            |   70 |  6.76 |
| EMEB NATANAEL DA SILVA                       |   93 |  8.98 |
| EMEB PADRE ANCHIETA                          |  100 |  9.65 |
| EMEB PROFESSOR RICARDO VIEIRA DE LIMA        |  444 | 42.86 |
| EMEB PROFESSORA MARIA QUEIROZ FERRO          |  211 | 20.37 |
| EMEF PADRE JOSE DOS SANTOS MOUSINHO          |  118 | 11.39 |
|                                              |      |       |
| Serie                                        |      |       |
| 6 ano                                        |  250 | 24.13 |
| 7 ano                                        |  283 | 27.32 |
| 8 ano                                        |  258 | 24.90 |
| 9 ano                                        |  245 | 23.65 |
|                                              |      |       |
| Necessidade.Deficiencia                      |      |       |
| Autismo Infantil                             |    2 |  0.19 |
| Baixa Visão                                  |    1 |  0.10 |
| Deficiência Intelectual                      |   13 |  1.25 |
| Distúrbio da atividade e da atenção          |    1 |  0.10 |
| TID - Transtorno Invasivo do Desenvolvimento |    1 |  0.10 |
| Transtorno hipercinético da conduta          |    1 |  0.10 |
| Not declared                                 | 1017 | 98.17 |
|                                              |      |       |

# Follow-up (participant distribution)

## Information of follow-up for *Controle* Group

Lost to follow-up in the **controle** group:

- Don’t answer vocabulary pre- OR post-tests: 243
- Don’t answer writing performance (TDE) pre- OR post-test: 279

``` r
dat.ctr.tde = dat.ctr[which(!is.na(dat.ctr$score.tde.pre) & !is.na(dat.ctr$score.tde.pos)),]
dat.ctr.vocab = dat.ctr[which(!is.na(dat.ctr$vocab.pre) & !is.na(dat.ctr$vocab.pos)),]
```

## Information of follow-up for *Experimental* Group

Lost to follow-up in the **experimental** group:

- Don’t answer vocabulary pre- OR post-tests: 311
- Don’t answer writing performance (TDE) pre- OR post-test: 391

``` r
dat.exp.tde = dat.exp[which(!is.na(dat.exp$score.tde.pre) & !is.na(dat.exp$score.tde.pos)),]
dat.exp.vocab = dat.exp[which(!is.na(dat.exp$vocab.pre) & !is.na(dat.exp$vocab.pos)),]
```

# Data Analysis (participant distribution)

## Data Analysis for *Controle* Group

### Analysis of Vocabulary for *Controle*

``` r
df = dat.ctr.vocab[which(is.na(dat.ctr.vocab$Necessidade.Deficiencia)),]
```

Analysed of Vocabulary (n = 516)

- Excluded from analysis because participants declared disabilities: 10

``` r
df = get_distribution(df, cname0)
```

| Var1                                  | Freq |   Pct |
|:--------------------------------------|-----:|------:|
| Sexo                                  |      |       |
| F                                     |  259 | 50.19 |
| M                                     |  257 | 49.81 |
|                                       |      |       |
| Zona                                  |      |       |
| Rural                                 |  253 | 49.03 |
| Urbana                                |  114 | 22.09 |
| Not declared                          |  149 | 28.88 |
|                                       |      |       |
| Cor.Raca                              |      |       |
| Branca                                |   54 | 10.47 |
| Indígena                              |   13 |  2.52 |
| Parda                                 |  168 | 32.56 |
| Preta                                 |    1 |  0.19 |
| Not declared                          |  280 | 54.26 |
|                                       |      |       |
| Idade                                 |      |       |
| 11                                    |   88 | 17.05 |
| 12                                    |  122 | 23.64 |
| 13                                    |  125 | 24.22 |
| 14                                    |  114 | 22.09 |
| 15                                    |   43 |  8.33 |
| 16                                    |   17 |  3.29 |
| 17                                    |    5 |  0.97 |
| 18                                    |    2 |  0.39 |
|                                       |      |       |
| Escola                                |      |       |
| EMEB NATANAEL DA SILVA                |   24 |  4.65 |
| EMEB PADRE ANCHIETA                   |  129 | 25.00 |
| EMEB PROFESSOR RICARDO VIEIRA DE LIMA |  192 | 37.21 |
| EMEB PROFESSORA MARIA QUEIROZ FERRO   |  103 | 19.96 |
| EMEF PADRE JOSE DOS SANTOS MOUSINHO   |   68 | 13.18 |
|                                       |      |       |
| Serie                                 |      |       |
| 6 ano                                 |  146 | 28.29 |
| 7 ano                                 |  152 | 29.46 |
| 8 ano                                 |  100 | 19.38 |
| 9 ano                                 |  118 | 22.87 |
|                                       |      |       |

### Analysis of Writting Performance (TDE) for *Controle*

``` r
df = dat.ctr.tde[which(is.na(dat.ctr.tde$Necessidade.Deficiencia)),]
```

Analysed of Writting Performance (n = 485)

- Excluded from analysis because participants declared disabilities: 5

``` r
df = get_distribution(df, cname0)
```

| Var1                                  | Freq |   Pct |
|:--------------------------------------|-----:|------:|
| Sexo                                  |      |       |
| F                                     |  247 | 50.93 |
| M                                     |  238 | 49.07 |
|                                       |      |       |
| Zona                                  |      |       |
| Rural                                 |  243 | 50.10 |
| Urbana                                |  109 | 22.47 |
| Not declared                          |  133 | 27.42 |
|                                       |      |       |
| Cor.Raca                              |      |       |
| Branca                                |   50 | 10.31 |
| Indígena                              |   11 |  2.27 |
| Parda                                 |  162 | 33.40 |
| Not declared                          |  262 | 54.02 |
|                                       |      |       |
| Idade                                 |      |       |
| 11                                    |   85 | 17.53 |
| 12                                    |  109 | 22.47 |
| 13                                    |  115 | 23.71 |
| 14                                    |  109 | 22.47 |
| 15                                    |   45 |  9.28 |
| 16                                    |   14 |  2.89 |
| 17                                    |    5 |  1.03 |
| 18                                    |    1 |  0.21 |
| 21                                    |    1 |  0.21 |
| 22                                    |    1 |  0.21 |
|                                       |      |       |
| Escola                                |      |       |
| EMEB NATANAEL DA SILVA                |   18 |  3.71 |
| EMEB PADRE ANCHIETA                   |  122 | 25.15 |
| EMEB PROFESSOR RICARDO VIEIRA DE LIMA |  175 | 36.08 |
| EMEB PROFESSORA MARIA QUEIROZ FERRO   |  103 | 21.24 |
| EMEF PADRE JOSE DOS SANTOS MOUSINHO   |   67 | 13.81 |
|                                       |      |       |
| Serie                                 |      |       |
| 6 ano                                 |  134 | 27.63 |
| 7 ano                                 |  141 | 29.07 |
| 8 ano                                 |   89 | 18.35 |
| 9 ano                                 |  121 | 24.95 |
|                                       |      |       |

## Data Analysis for *Experimental* Group

### Analysis of Vocabulary for *Experimental* group

``` r
df = dat.exp.vocab[which(is.na(dat.exp.vocab$Necessidade.Deficiencia)),]
```

Analysed of Vocabulary (n = 714)

- Excluded from analysis because participants declared disabilities: 11

``` r
df = get_distribution(df, cname0)
```

| Var1                                  | Freq |   Pct |
|:--------------------------------------|-----:|------:|
| Sexo                                  |      |       |
| F                                     |  369 | 51.68 |
| M                                     |  345 | 48.32 |
|                                       |      |       |
| Zona                                  |      |       |
| Rural                                 |  294 | 41.18 |
| Urbana                                |  190 | 26.61 |
| Not declared                          |  230 | 32.21 |
|                                       |      |       |
| Cor.Raca                              |      |       |
| Amarela                               |    1 |  0.14 |
| Branca                                |   62 |  8.68 |
| Indígena                              |   18 |  2.52 |
| Parda                                 |  202 | 28.29 |
| Preta                                 |    1 |  0.14 |
| Not declared                          |  430 | 60.22 |
|                                       |      |       |
| Idade                                 |      |       |
| 11                                    |  119 | 16.67 |
| 12                                    |  155 | 21.71 |
| 13                                    |  160 | 22.41 |
| 14                                    |  156 | 21.85 |
| 15                                    |   80 | 11.20 |
| 16                                    |   27 |  3.78 |
| 17                                    |    9 |  1.26 |
| 18                                    |    3 |  0.42 |
| 19                                    |    2 |  0.28 |
| 20                                    |    1 |  0.14 |
| 21                                    |    1 |  0.14 |
| 23                                    |    1 |  0.14 |
|                                       |      |       |
| Escola                                |      |       |
| EMEB NATANAEL DA SILVA                |   72 | 10.08 |
| EMEB PADRE ANCHIETA                   |   70 |  9.80 |
| EMEB PROFESSOR RICARDO VIEIRA DE LIMA |  323 | 45.24 |
| EMEB PROFESSORA MARIA QUEIROZ FERRO   |  161 | 22.55 |
| EMEF PADRE JOSE DOS SANTOS MOUSINHO   |   88 | 12.32 |
|                                       |      |       |
| Serie                                 |      |       |
| 6 ano                                 |  165 | 23.11 |
| 7 ano                                 |  197 | 27.59 |
| 8 ano                                 |  181 | 25.35 |
| 9 ano                                 |  171 | 23.95 |
|                                       |      |       |

### Analysis of Writting Performance (TDE) for *Experimental* group

``` r
df = dat.exp.tde[which(is.na(dat.exp.tde$Necessidade.Deficiencia)),]
```

Analysed of Writting Performance (n = 636)

- Excluded from analysis because participants declared disabilities: 9

``` r
df = get_distribution(df, cname0)
```

| Var1                                  | Freq |   Pct |
|:--------------------------------------|-----:|------:|
| Sexo                                  |      |       |
| F                                     |  319 | 50.16 |
| M                                     |  317 | 49.84 |
|                                       |      |       |
| Zona                                  |      |       |
| Rural                                 |  284 | 44.65 |
| Urbana                                |  167 | 26.26 |
| Not declared                          |  185 | 29.09 |
|                                       |      |       |
| Cor.Raca                              |      |       |
| Amarela                               |    1 |  0.16 |
| Branca                                |   61 |  9.59 |
| Indígena                              |   15 |  2.36 |
| Parda                                 |  190 | 29.87 |
| Not declared                          |  369 | 58.02 |
|                                       |      |       |
| Idade                                 |      |       |
| 11                                    |  113 | 17.77 |
| 12                                    |  153 | 24.06 |
| 13                                    |  139 | 21.86 |
| 14                                    |  132 | 20.75 |
| 15                                    |   68 | 10.69 |
| 16                                    |   21 |  3.30 |
| 17                                    |    6 |  0.94 |
| 18                                    |    1 |  0.16 |
| 19                                    |    2 |  0.31 |
| 21                                    |    1 |  0.16 |
|                                       |      |       |
| Escola                                |      |       |
| EMEB NATANAEL DA SILVA                |   66 | 10.38 |
| EMEB PADRE ANCHIETA                   |   70 | 11.01 |
| EMEB PROFESSOR RICARDO VIEIRA DE LIMA |  265 | 41.67 |
| EMEB PROFESSORA MARIA QUEIROZ FERRO   |  151 | 23.74 |
| EMEF PADRE JOSE DOS SANTOS MOUSINHO   |   84 | 13.21 |
|                                       |      |       |
| Serie                                 |      |       |
| 6 ano                                 |  159 | 25.00 |
| 7 ano                                 |  187 | 29.40 |
| 8 ano                                 |  143 | 22.48 |
| 9 ano                                 |  147 | 23.11 |
|                                       |      |       |
