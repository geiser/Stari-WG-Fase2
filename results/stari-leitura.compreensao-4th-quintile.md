ANCOVA in Fluencia Leitora (Compreens�o) (Fluencia Leitora
(Compreens�o))
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
  Fluencia Leitora (Compreens�o) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Fluencia Leitora (Compreens�o) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable                |   n |  mean | median | min | max |    sd |    se |     ci |  iqr |
|:-------------|:-----|:-------|:---------|:------|:------------------------|----:|------:|-------:|----:|----:|------:|------:|-------:|-----:|
| Controle     | F    |        |          |       | leitura.compreensao.pre |   9 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     | M    |        |          |       | leitura.compreensao.pre |   9 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Experimental | F    |        |          |       | leitura.compreensao.pre |   6 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Experimental | M    |        |          |       | leitura.compreensao.pre |   7 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     | F    |        |          |       | leitura.compreensao.pos |   9 | 4.556 |    5.0 |   0 |   8 | 2.877 | 0.959 |  2.212 | 3.00 |
| Controle     | M    |        |          |       | leitura.compreensao.pos |   9 | 5.333 |    6.0 |   0 |   7 | 2.291 | 0.764 |  1.761 | 2.00 |
| Experimental | F    |        |          |       | leitura.compreensao.pos |   6 | 3.667 |    3.5 |   0 |   8 | 3.502 | 1.430 |  3.676 | 6.00 |
| Experimental | M    |        |          |       | leitura.compreensao.pos |   7 | 4.143 |    6.0 |   0 |   7 | 3.338 | 1.262 |  3.087 | 6.00 |
| Controle     |      | Rural  |          |       | leitura.compreensao.pre |  14 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      | Urbana |          |       | leitura.compreensao.pre |   3 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      |        |          |       | leitura.compreensao.pre |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |
| Experimental |      | Rural  |          |       | leitura.compreensao.pre |   7 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Experimental |      | Urbana |          |       | leitura.compreensao.pre |   5 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Experimental |      |        |          |       | leitura.compreensao.pre |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |
| Controle     |      | Rural  |          |       | leitura.compreensao.pos |  14 | 5.571 |    5.5 |   0 |   8 | 1.989 | 0.532 |  1.148 | 2.00 |
| Controle     |      | Urbana |          |       | leitura.compreensao.pos |   3 | 2.333 |    0.0 |   0 |   7 | 4.041 | 2.333 | 10.040 | 3.50 |
| Controle     |      |        |          |       | leitura.compreensao.pos |   1 | 4.000 |    4.0 |   4 |   4 |       |       |        | 0.00 |
| Experimental |      | Rural  |          |       | leitura.compreensao.pos |   7 | 6.286 |    7.0 |   2 |   8 | 1.976 | 0.747 |  1.828 | 0.50 |
| Experimental |      | Urbana |          |       | leitura.compreensao.pos |   5 | 1.000 |    0.0 |   0 |   5 | 2.236 | 1.000 |  2.776 | 0.00 |
| Experimental |      |        |          |       | leitura.compreensao.pos |   1 | 2.000 |    2.0 |   2 |   2 |       |       |        | 0.00 |
| Controle     |      |        | Branca   |       | leitura.compreensao.pre |   3 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      |        | Parda    |       | leitura.compreensao.pre |   8 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      |        | Preta    |       | leitura.compreensao.pre |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |
| Controle     |      |        |          |       | leitura.compreensao.pre |   6 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Experimental |      |        | Amarela  |       | leitura.compreensao.pre |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |
| Experimental |      |        | Branca   |       | leitura.compreensao.pre |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |
| Experimental |      |        | Indígena |       | leitura.compreensao.pre |   3 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Experimental |      |        | Parda    |       | leitura.compreensao.pre |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |
| Experimental |      |        |          |       | leitura.compreensao.pre |   7 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      |        | Branca   |       | leitura.compreensao.pos |   3 | 7.000 |    7.0 |   7 |   7 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      |        | Parda    |       | leitura.compreensao.pos |   8 | 5.375 |    5.5 |   0 |   8 | 2.446 | 0.865 |  2.045 | 2.00 |
| Controle     |      |        | Preta    |       | leitura.compreensao.pos |   1 | 5.000 |    5.0 |   5 |   5 |       |       |        | 0.00 |
| Controle     |      |        |          |       | leitura.compreensao.pos |   6 | 3.333 |    4.0 |   0 |   7 | 2.805 | 1.145 |  2.943 | 3.75 |
| Experimental |      |        | Amarela  |       | leitura.compreensao.pos |   1 | 2.000 |    2.0 |   2 |   2 |       |       |        | 0.00 |
| Experimental |      |        | Branca   |       | leitura.compreensao.pos |   1 | 5.000 |    5.0 |   5 |   5 |       |       |        | 0.00 |
| Experimental |      |        | Indígena |       | leitura.compreensao.pos |   3 | 7.000 |    7.0 |   6 |   8 | 1.000 | 0.577 |  2.484 | 1.00 |
| Experimental |      |        | Parda    |       | leitura.compreensao.pos |   1 | 7.000 |    7.0 |   7 |   7 |       |       |        | 0.00 |
| Experimental |      |        |          |       | leitura.compreensao.pos |   7 | 2.286 |    0.0 |   0 |   7 | 3.302 | 1.248 |  3.054 | 4.50 |
| Controle     |      |        |          | 6 ano | leitura.compreensao.pre |   8 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      |        |          | 7 ano | leitura.compreensao.pre |   5 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      |        |          | 9 ano | leitura.compreensao.pre |   5 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Experimental |      |        |          | 6 ano | leitura.compreensao.pre |   5 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Experimental |      |        |          | 7 ano | leitura.compreensao.pre |   4 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Experimental |      |        |          | 8 ano | leitura.compreensao.pre |   3 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Experimental |      |        |          | 9 ano | leitura.compreensao.pre |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |
| Controle     |      |        |          | 6 ano | leitura.compreensao.pos |   8 | 4.125 |    5.0 |   0 |   7 | 2.748 | 0.972 |  2.298 | 2.50 |
| Controle     |      |        |          | 7 ano | leitura.compreensao.pos |   5 | 5.200 |    6.0 |   0 |   8 | 3.114 | 1.393 |  3.867 | 2.00 |
| Controle     |      |        |          | 9 ano | leitura.compreensao.pos |   5 | 6.000 |    7.0 |   4 |   7 | 1.414 | 0.632 |  1.756 | 2.00 |
| Experimental |      |        |          | 6 ano | leitura.compreensao.pos |   5 | 1.800 |    2.0 |   0 |   5 | 2.049 | 0.917 |  2.545 | 2.00 |
| Experimental |      |        |          | 7 ano | leitura.compreensao.pos |   4 | 5.500 |    7.0 |   0 |   8 | 3.697 | 1.848 |  5.883 | 2.00 |
| Experimental |      |        |          | 8 ano | leitura.compreensao.pos |   3 | 4.667 |    7.0 |   0 |   7 | 4.041 | 2.333 | 10.040 | 3.50 |
| Experimental |      |        |          | 9 ano | leitura.compreensao.pos |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                     |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:------------------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| leitura.compreensao.pos |  31 | -0.4554871 | -1.1364450 | YES      | 0.9234682 | Shapiro-Wilk | 0.0292083 | \*       | NO        |
| leitura.compreensao.pos |  29 | -0.3008422 |  0.6014346 | YES      | 0.9557938 | Shapiro-Wilk | 0.2579410 | ns       | YES       |
| leitura.compreensao.pos |  18 | -1.7222013 |  4.4923091 | NO       | 0.7430792 | Shapiro-Wilk | 0.0002649 | \*\*\*   | NO        |
| leitura.compreensao.pos |  31 | -0.8253676 | -0.4587152 | NO       | 0.8917739 | Shapiro-Wilk | 0.0045203 | \*\*     | NO        |

## Assumption: Homogeneity of data distribution

| var                     | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:------------------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  31 |       3 |      27 | 0.8523158 | 0.4776038 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  31 |       0 |      27 |           |           |          |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  29 |       3 |      25 | 0.3884857 | 0.7622689 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  29 |       0 |      25 |           |           |          |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  18 |       6 |      11 | 0.8475177 | 0.5597182 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  18 |       0 |      11 |           |           |          |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  31 |       6 |      24 | 0.2384571 | 0.9593620 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  31 |       0 |      24 |           |           |          |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                  | DFn | DFd |     SSn |     SSd |      F | p       |   ges | p\<.05 |
|:----|:------------------------|----:|----:|--------:|--------:|-------:|:--------|------:|:-------|
| 1   | leitura.compreensao.pre |   0 |  29 |         | 239.868 |        |         |       |        |
| 2   | grupo                   |   1 |  29 |   7.874 | 239.868 |  0.952 | 0.337   | 0.032 |        |
| 4   | Sexo                    |   1 |  29 |   2.904 | 244.838 |  0.344 | 0.562   | 0.012 |        |
| 6   | Zona                    |   1 |  27 | 107.589 | 133.238 | 21.802 | \<0.001 | 0.447 | \*     |
| 8   | Cor.Raca                |   4 |  13 |  21.889 |  49.222 |  1.445 | 0.275   | 0.308 |        |
| 10  | Serie                   |   3 |  27 |  40.768 | 206.974 |  1.773 | 0.176   | 0.165 |        |

## ANCOVA tests for two factors

|     | Effect                  | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:------------------------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| 1   | leitura.compreensao.pre |   0 |  27 |       | 236.413 |       |       |       |        |
| 4   | grupo:Sexo              |   1 |  27 | 0.171 | 236.413 | 0.020 | 0.890 | 0.001 |        |
| 8   | grupo:Zona              |   1 |  25 | 5.608 | 127.524 | 1.099 | 0.304 | 0.042 |        |
| 12  | grupo:Cor.Raca          |   1 |  11 | 5.345 |  43.875 | 1.340 | 0.272 | 0.109 |        |
| 16  | grupo:Serie             |   2 |  24 | 9.970 | 190.142 | 0.629 | 0.542 | 0.050 |        |

## Pairwise comparisons for one factor: **grupo**

| var                     | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     |  18 |       6 |        0 |     4.944 |      0.602 |   4.944 |    0.678 |
| leitura.compreensao.pos | Experimental |  13 |       6 |        0 |     3.923 |      0.909 |   3.923 |    0.798 |

| .y.                     | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao.pos | Controle | Experimental |    1.021 |    -1.12 |     3.162 | 1.047 |     0.976 | 0.337 | 0.337 | ns           |

| .y.                 | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao | Controle     | pre    | pos    |    1.056 |   -0.301 |     2.412 | 0.678 |     1.557 | 0.125 | 0.125 | ns           |
| leitura.compreensao | Experimental | pre    | pos    |    2.077 |    0.480 |     3.674 | 0.798 |     2.604 | 0.012 | 0.012 | \*           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                     | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     | F    |   9 |       6 |        0 |     4.556 |      0.959 |   4.556 |    0.986 |
| leitura.compreensao.pos | Controle     | M    |   9 |       6 |        0 |     5.333 |      0.764 |   5.333 |    0.986 |
| leitura.compreensao.pos | Experimental | F    |   6 |       6 |        0 |     3.667 |      1.430 |   3.667 |    1.208 |
| leitura.compreensao.pos | Experimental | M    |   7 |       6 |        0 |     4.143 |      1.262 |   4.143 |    1.118 |

|     | .y.                     | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:------------------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | leitura.compreensao.pos |              | F    | Controle | Experimental |    0.889 |   -2.311 |     4.089 | 1.560 |     0.570 | 0.573 | 0.573 | ns           |
| 2   | leitura.compreensao.pos |              | M    | Controle | Experimental |    1.190 |   -1.869 |     4.250 | 1.491 |     0.798 | 0.432 | 0.432 | ns           |
| 5   | leitura.compreensao.pos | Controle     |      | F        | M            |   -0.778 |   -3.640 |     2.084 | 1.395 |    -0.558 | 0.582 | 0.582 | ns           |
| 6   | leitura.compreensao.pos | Experimental |      | F        | M            |   -0.476 |   -3.854 |     2.902 | 1.646 |    -0.289 | 0.775 | 0.775 | ns           |

| .y.                 | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao | Controle     | F    | pre    | pos    |    1.444 |   -0.533 |     3.422 | 0.986 |     1.464 | 0.149 | 0.149 | ns           |
| leitura.compreensao | Controle     | M    | pre    | pos    |    0.667 |   -1.311 |     2.644 | 0.986 |     0.676 | 0.502 | 0.502 | ns           |
| leitura.compreensao | Experimental | F    | pre    | pos    |    2.333 |   -0.089 |     4.755 | 1.208 |     1.932 | 0.059 | 0.059 | ns           |
| leitura.compreensao | Experimental | M    | pre    | pos    |    1.857 |   -0.385 |     4.099 | 1.118 |     1.661 | 0.103 | 0.103 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

| var                     | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     | Rural  |  14 |       6 |        0 |     5.571 |      0.532 |   5.571 |    0.543 |
| leitura.compreensao.pos | Experimental | Rural  |   7 |       6 |        0 |     6.286 |      0.747 |   6.286 |    0.768 |
| leitura.compreensao.pos | Experimental | Urbana |   5 |       6 |        0 |     1.000 |      1.000 |   1.000 |    0.908 |

|     | .y.                     | grupo        | Zona  | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----|:------------------------|:-------------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| 1   | leitura.compreensao.pos |              | Rural | Controle | Experimental |   -0.714 |   -2.659 |     1.230 | 0.940 |    -0.760 | 0.455   | 0.455   | ns           |
| 6   | leitura.compreensao.pos | Experimental |       | Rural    | Urbana       |    5.286 |    2.826 |     7.746 | 1.189 |     4.445 | \<0.001 | \<0.001 | \*\*\*       |

| .y.                 | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:--------------------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| leitura.compreensao | Controle     | Rural  | pre    | pos    |    0.429 |   -0.664 |     1.521 | 0.543 |     0.790 | 0.434   | 0.434   | ns           |
| leitura.compreensao | Experimental | Rural  | pre    | pos    |   -0.286 |   -1.831 |     1.259 | 0.768 |    -0.372 | 0.711   | 0.711   | ns           |
| leitura.compreensao | Experimental | Urbana | pre    | pos    |    5.000 |    3.172 |     6.828 | 0.908 |     5.505 | \<0.001 | \<0.001 | \*\*\*\*     |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-52-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-54-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

### factores: **grupo:Serie**

| var                     | grupo        | Serie |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     | 6 ano |   8 |       6 |        0 |     4.125 |      0.972 |   4.125 |    0.875 |
| leitura.compreensao.pos | Controle     | 7 ano |   5 |       6 |        0 |     5.200 |      1.393 |   5.200 |    1.107 |
| leitura.compreensao.pos | Controle     | 9 ano |   5 |       6 |        0 |     6.000 |      0.632 |   6.000 |    1.107 |
| leitura.compreensao.pos | Experimental | 6 ano |   5 |       6 |        0 |     1.800 |      0.917 |   1.800 |    1.107 |

|     | .y.                     | grupo    | Serie | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:------------------------|:---------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | leitura.compreensao.pos |          | 6 ano | Controle | Experimental |    2.325 |   -0.629 |     5.279 | 1.412 |     1.647 | 0.116 | 0.116 | ns           |
| 7   | leitura.compreensao.pos | Controle |       | 6 ano    | 7 ano        |   -1.075 |   -4.029 |     1.879 | 1.412 |    -0.762 | 0.456 | 1.000 | ns           |
| 8   | leitura.compreensao.pos | Controle |       | 6 ano    | 9 ano        |   -1.875 |   -4.829 |     1.079 | 1.412 |    -1.328 | 0.200 | 0.599 | ns           |
| 9   | leitura.compreensao.pos | Controle |       | 7 ano    | 9 ano        |   -0.800 |   -4.078 |     2.478 | 1.566 |    -0.511 | 0.615 | 1.000 | ns           |

| .y.                 | grupo        | Serie | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:--------------------|:-------------|:------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| leitura.compreensao | Controle     | 6 ano | pre    | pos    |    1.875 |    0.103 |     3.647 | 0.875 |     2.142 | 0.039   | 0.039   | \*           |
| leitura.compreensao | Controle     | 7 ano | pre    | pos    |    0.800 |   -1.442 |     3.042 | 1.107 |     0.722 | 0.474   | 0.474   | ns           |
| leitura.compreensao | Controle     | 9 ano | pre    | pos    |    0.000 |   -2.242 |     2.242 | 1.107 |     0.000 | 1       | 1       | ns           |
| leitura.compreensao | Experimental | 6 ano | pre    | pos    |    4.200 |    1.958 |     6.442 | 1.107 |     3.793 | \<0.001 | \<0.001 | \*\*\*       |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-78-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-80-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-4th-quintile_files/figure-gfm/unnamed-chunk-82-1.png)<!-- -->
