ANCOVA in Vocabulario (acertos) (Vocabulario (acertos))
================
Geiser C. Challco <geiser@alumni.usp.br>

- [Descriptive Statistics of Initial
  Data](#descriptive-statistics-of-initial-data)
- [Checking of Assumptions](#checking-of-assumptions)
  - [Assumption: Normality distribution of
    data](#assumption-normality-distribution-of-data)
  - [Assumption: Homogeneity of data
    distribution](#assumption-homogeneity-of-data-distribution)
- [Computation of ANCOVA test and Pairwise
  Comparison](#computation-of-ancova-test-and-pairwise-comparison)
  - [ANCOVA tests for one factor](#ancova-tests-for-one-factor)
  - [ANCOVA tests for two factors](#ancova-tests-for-two-factors)
  - [Pairwise comparisons for one factor:
    **grupo**](#pairwise-comparisons-for-one-factor-grupo)
  - [Pairwise comparisons for two
    factors](#pairwise-comparisons-for-two-factors)
    - [factores: **grupo:Sexo**](#factores-gruposexo)
    - [factores: **grupo:Zona**](#factores-grupozona)
    - [factores: **grupo:Cor.Raca**](#factores-grupocorraca)
    - [factores: **grupo:Serie**](#factores-gruposerie)

**NOTE**

- Teste ANCOVA para determinar se houve diferenças significativas no
  Vocabulario (acertos) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Vocabulario (acertos) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Serie | variable  |   n |   mean | median | min | max |    sd |    se |     ci |   iqr |
|:-------------|:-----|:-------|:------|:----------|----:|-------:|-------:|----:|----:|------:|------:|-------:|------:|
| Controle     | F    |        |       | vocab.pre |   6 | 35.167 |   35.0 |  35 |  36 | 0.408 | 0.167 |  0.428 |  0.00 |
| Controle     | M    |        |       | vocab.pre |   7 | 39.286 |   36.0 |  36 |  45 | 4.192 | 1.584 |  3.877 |  7.00 |
| Experimental | M    |        |       | vocab.pre |   1 | 39.000 |   39.0 |  39 |  39 |       |       |        |  0.00 |
| Controle     | F    |        |       | vocab.pos |   6 | 28.667 |   29.0 |  17 |  38 | 7.967 | 3.252 |  8.360 | 10.75 |
| Controle     | M    |        |       | vocab.pos |   7 | 37.429 |   40.0 |  19 |  45 | 8.463 | 3.199 |  7.827 |  3.00 |
| Experimental | M    |        |       | vocab.pos |   1 | 39.000 |   39.0 |  39 |  39 |       |       |        |  0.00 |
| Controle     |      | Rural  |       | vocab.pre |   4 | 37.500 |   35.5 |  35 |  44 | 4.359 | 2.179 |  6.936 |  3.00 |
| Controle     |      | Urbana |       | vocab.pre |   2 | 40.000 |   40.0 |  35 |  45 | 7.071 | 5.000 | 63.531 |  5.00 |
| Controle     |      |        |       | vocab.pre |   7 | 36.571 |   36.0 |  35 |  42 | 2.440 | 0.922 |  2.256 |  0.50 |
| Experimental |      | Rural  |       | vocab.pre |   1 | 39.000 |   39.0 |  39 |  39 |       |       |        |  0.00 |
| Controle     |      | Rural  |       | vocab.pos |   4 | 39.750 |   39.0 |  36 |  45 | 3.862 | 1.931 |  6.146 |  3.75 |
| Controle     |      | Urbana |       | vocab.pos |   2 | 36.000 |   36.0 |  31 |  41 | 7.071 | 5.000 | 63.531 |  5.00 |
| Controle     |      |        |       | vocab.pos |   7 | 29.000 |   27.0 |  17 |  41 | 9.916 | 3.748 |  9.171 | 17.00 |
| Experimental |      | Rural  |       | vocab.pos |   1 | 39.000 |   39.0 |  39 |  39 |       |       |        |  0.00 |
| Controle     |      |        | 7 ano | vocab.pre |   1 | 35.000 |   35.0 |  35 |  35 |       |       |        |  0.00 |
| Controle     |      |        | 8 ano | vocab.pre |   4 | 39.750 |   39.5 |  35 |  45 | 5.500 | 2.750 |  8.752 |  9.25 |
| Controle     |      |        | 9 ano | vocab.pre |   8 | 36.500 |   36.0 |  35 |  42 | 2.268 | 0.802 |  1.896 |  0.25 |
| Experimental |      |        | 7 ano | vocab.pre |   1 | 39.000 |   39.0 |  39 |  39 |       |       |        |  0.00 |
| Controle     |      |        | 7 ano | vocab.pos |   1 | 36.000 |   36.0 |  36 |  36 |       |       |        |  0.00 |
| Controle     |      |        | 8 ano | vocab.pos |   4 | 36.750 |   39.5 |  23 |  45 | 9.605 | 4.802 | 15.283 |  7.75 |
| Controle     |      |        | 9 ano | vocab.pos |   8 | 31.375 |   34.5 |  17 |  41 | 9.516 | 3.364 |  7.956 | 13.50 |
| Experimental |      |        | 7 ano | vocab.pos |   1 | 39.000 |   39.0 |  39 |  39 |       |       |        |  0.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var       |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:----------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| vocab.pos |  14 | -0.7201426 | -0.4991801 | NO       | 0.9337868 | Shapiro-Wilk | 0.3445157 | ns       | YES       |
| vocab.pos |   7 |  0.1286870 | -1.2474712 | YES      | 0.9864769 | Shapiro-Wilk | 0.9848214 | ns       | YES       |
| vocab.pos |  14 | -0.3249547 | -1.1403417 | YES      | 0.9326672 | Shapiro-Wilk | 0.3324417 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var       | method         | formula                 |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------|:---------------|:------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`  |  14 |       2 |      11 | 0.7955168 | 0.4756880 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`  |  14 |       1 |       9 | 0.1140000 | 0.7430000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Zona`  |   7 |       2 |       4 | 2.4973285 | 0.1977656 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`  |   7 |       1 |       2 | 0.2860000 | 0.6460000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Serie` |  14 |       3 |      10 | 1.0719252 | 0.4042946 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Serie` |  14 |       1 |       8 | 0.1780000 | 0.6850000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect    | DFn | DFd |     SSn |     SSd |      F |     p |   ges | p\<.05 |
|:----|:----------|----:|----:|--------:|--------:|-------:|------:|------:|:-------|
| 1   | vocab.pre |   1 |  11 | 325.784 | 669.293 |  5.354 | 0.041 | 0.327 | \*     |
| 2   | grupo     |   1 |  11 |  10.072 | 669.293 |  0.166 | 0.692 | 0.015 |        |
| 4   | Sexo      |   1 |  11 |  48.301 | 631.064 |  0.842 | 0.379 | 0.071 |        |
| 6   | Zona      |   1 |   4 |  41.424 |   9.432 | 17.567 | 0.014 | 0.815 | \*     |
| 8   | Serie     |   2 |  10 |  47.153 | 632.212 |  0.373 | 0.698 | 0.069 |        |

## ANCOVA tests for two factors

|     | Effect      | DFn | DFd |     SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:------------|----:|----:|--------:|--------:|------:|------:|------:|:-------|
| 1   | vocab.pre   |   1 |  10 | 119.054 | 627.994 | 1.896 | 0.199 | 0.159 |        |
| 4   | grupo:Sexo  |   0 |  10 |         | 627.994 |       |       |       |        |
| 8   | grupo:Zona  |   0 |   3 |         |   5.907 |       |       |       |        |
| 12  | grupo:Serie |   0 |   9 |         | 628.056 |       |       |       |        |

## Pairwise comparisons for one factor: **grupo**

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:Serie**
