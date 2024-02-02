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

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable                |   n |  mean | median | min | max |    sd |    se |    ci |  iqr |
|:-------------|:-----|:-------|:---------|:------|:------------------------|----:|------:|-------:|----:|----:|------:|------:|------:|-----:|
| Controle     | F    |        |          |       | leitura.compreensao.pre |  23 | 4.609 |    5.0 |   4 |   5 | 0.499 | 0.104 | 0.216 | 1.00 |
| Controle     | M    |        |          |       | leitura.compreensao.pre |  31 | 4.548 |    5.0 |   4 |   5 | 0.506 | 0.091 | 0.186 | 1.00 |
| Experimental | F    |        |          |       | leitura.compreensao.pre |  15 | 4.733 |    5.0 |   4 |   5 | 0.458 | 0.118 | 0.253 | 0.50 |
| Experimental | M    |        |          |       | leitura.compreensao.pre |  19 | 4.526 |    5.0 |   4 |   5 | 0.513 | 0.118 | 0.247 | 1.00 |
| Controle     | F    |        |          |       | leitura.compreensao.pos |  23 | 2.957 |    4.0 |   0 |   7 | 2.602 | 0.543 | 1.125 | 5.00 |
| Controle     | M    |        |          |       | leitura.compreensao.pos |  31 | 3.742 |    5.0 |   0 |   8 | 2.886 | 0.518 | 1.059 | 6.00 |
| Experimental | F    |        |          |       | leitura.compreensao.pos |  15 | 5.133 |    6.0 |   0 |   9 | 3.441 | 0.888 | 1.905 | 5.50 |
| Experimental | M    |        |          |       | leitura.compreensao.pos |  19 | 4.737 |    6.0 |   0 |   9 | 3.263 | 0.749 | 1.573 | 6.00 |
| Controle     |      | Rural  |          |       | leitura.compreensao.pre |  24 | 4.667 |    5.0 |   4 |   5 | 0.482 | 0.098 | 0.203 | 1.00 |
| Controle     |      | Urbana |          |       | leitura.compreensao.pre |  12 | 4.583 |    5.0 |   4 |   5 | 0.515 | 0.149 | 0.327 | 1.00 |
| Controle     |      |        |          |       | leitura.compreensao.pre |  18 | 4.444 |    4.0 |   4 |   5 | 0.511 | 0.121 | 0.254 | 1.00 |
| Experimental |      | Rural  |          |       | leitura.compreensao.pre |  20 | 4.700 |    5.0 |   4 |   5 | 0.470 | 0.105 | 0.220 | 1.00 |
| Experimental |      | Urbana |          |       | leitura.compreensao.pre |   6 | 4.833 |    5.0 |   4 |   5 | 0.408 | 0.167 | 0.428 | 0.00 |
| Experimental |      |        |          |       | leitura.compreensao.pre |   8 | 4.250 |    4.0 |   4 |   5 | 0.463 | 0.164 | 0.387 | 0.25 |
| Controle     |      | Rural  |          |       | leitura.compreensao.pos |  24 | 4.083 |    5.0 |   0 |   8 | 2.765 | 0.564 | 1.168 | 4.00 |
| Controle     |      | Urbana |          |       | leitura.compreensao.pos |  12 | 0.750 |    0.0 |   0 |   5 | 1.765 | 0.509 | 1.121 | 0.00 |
| Controle     |      |        |          |       | leitura.compreensao.pos |  18 | 4.278 |    5.0 |   0 |   8 | 2.270 | 0.535 | 1.129 | 2.00 |
| Experimental |      | Rural  |          |       | leitura.compreensao.pos |  20 | 6.000 |    7.0 |   0 |   9 | 2.920 | 0.653 | 1.367 | 3.00 |
| Experimental |      | Urbana |          |       | leitura.compreensao.pos |   6 | 2.000 |    0.0 |   0 |   7 | 3.162 | 1.291 | 3.319 | 3.75 |
| Experimental |      |        |          |       | leitura.compreensao.pos |   8 | 4.375 |    5.0 |   0 |   8 | 3.159 | 1.117 | 2.641 | 4.25 |
| Controle     |      |        | Branca   |       | leitura.compreensao.pre |   1 | 5.000 |    5.0 |   5 |   5 |       |       |       | 0.00 |
| Controle     |      |        | Indígena |       | leitura.compreensao.pre |   3 | 4.333 |    4.0 |   4 |   5 | 0.577 | 0.333 | 1.434 | 0.50 |
| Controle     |      |        | Parda    |       | leitura.compreensao.pre |  26 | 4.692 |    5.0 |   4 |   5 | 0.471 | 0.092 | 0.190 | 1.00 |
| Controle     |      |        |          |       | leitura.compreensao.pre |  24 | 4.458 |    4.0 |   4 |   5 | 0.509 | 0.104 | 0.215 | 1.00 |
| Experimental |      |        | Branca   |       | leitura.compreensao.pre |   6 | 4.833 |    5.0 |   4 |   5 | 0.408 | 0.167 | 0.428 | 0.00 |
| Experimental |      |        | Indígena |       | leitura.compreensao.pre |   2 | 5.000 |    5.0 |   5 |   5 | 0.000 | 0.000 | 0.000 | 0.00 |
| Experimental |      |        | Parda    |       | leitura.compreensao.pre |  11 | 4.455 |    4.0 |   4 |   5 | 0.522 | 0.157 | 0.351 | 1.00 |
| Experimental |      |        |          |       | leitura.compreensao.pre |  15 | 4.600 |    5.0 |   4 |   5 | 0.507 | 0.131 | 0.281 | 1.00 |
| Controle     |      |        | Branca   |       | leitura.compreensao.pos |   1 | 6.000 |    6.0 |   6 |   6 |       |       |       | 0.00 |
| Controle     |      |        | Indígena |       | leitura.compreensao.pos |   3 | 5.000 |    5.0 |   5 |   5 | 0.000 | 0.000 | 0.000 | 0.00 |
| Controle     |      |        | Parda    |       | leitura.compreensao.pos |  26 | 3.538 |    4.0 |   0 |   8 | 2.901 | 0.569 | 1.172 | 6.00 |
| Controle     |      |        |          |       | leitura.compreensao.pos |  24 | 2.958 |    3.5 |   0 |   8 | 2.774 | 0.566 | 1.171 | 5.00 |
| Experimental |      |        | Branca   |       | leitura.compreensao.pos |   6 | 5.500 |    8.0 |   0 |   9 | 4.278 | 1.746 | 4.489 | 6.00 |
| Experimental |      |        | Indígena |       | leitura.compreensao.pos |   2 | 8.000 |    8.0 |   8 |   8 | 0.000 | 0.000 | 0.000 | 0.00 |
| Experimental |      |        | Parda    |       | leitura.compreensao.pos |  11 | 5.455 |    6.0 |   0 |   8 | 3.012 | 0.908 | 2.024 | 3.50 |
| Experimental |      |        |          |       | leitura.compreensao.pos |  15 | 3.867 |    5.0 |   0 |   9 | 3.114 | 0.804 | 1.724 | 6.00 |
| Controle     |      |        |          | 6 ano | leitura.compreensao.pre |  16 | 4.688 |    5.0 |   4 |   5 | 0.479 | 0.120 | 0.255 | 1.00 |
| Controle     |      |        |          | 7 ano | leitura.compreensao.pre |  13 | 4.538 |    5.0 |   4 |   5 | 0.519 | 0.144 | 0.314 | 1.00 |
| Controle     |      |        |          | 8 ano | leitura.compreensao.pre |  13 | 4.615 |    5.0 |   4 |   5 | 0.506 | 0.140 | 0.306 | 1.00 |
| Controle     |      |        |          | 9 ano | leitura.compreensao.pre |  12 | 4.417 |    4.0 |   4 |   5 | 0.515 | 0.149 | 0.327 | 1.00 |
| Experimental |      |        |          | 6 ano | leitura.compreensao.pre |   9 | 4.667 |    5.0 |   4 |   5 | 0.500 | 0.167 | 0.384 | 1.00 |
| Experimental |      |        |          | 7 ano | leitura.compreensao.pre |   8 | 4.625 |    5.0 |   4 |   5 | 0.518 | 0.183 | 0.433 | 1.00 |
| Experimental |      |        |          | 8 ano | leitura.compreensao.pre |   8 | 4.875 |    5.0 |   4 |   5 | 0.354 | 0.125 | 0.296 | 0.00 |
| Experimental |      |        |          | 9 ano | leitura.compreensao.pre |   9 | 4.333 |    4.0 |   4 |   5 | 0.500 | 0.167 | 0.384 | 1.00 |
| Controle     |      |        |          | 6 ano | leitura.compreensao.pos |  16 | 4.125 |    4.5 |   0 |   8 | 2.849 | 0.712 | 1.518 | 4.00 |
| Controle     |      |        |          | 7 ano | leitura.compreensao.pos |  13 | 1.923 |    0.0 |   0 |   8 | 2.753 | 0.763 | 1.663 | 4.00 |
| Controle     |      |        |          | 8 ano | leitura.compreensao.pos |  13 | 3.154 |    4.0 |   0 |   7 | 2.764 | 0.767 | 1.670 | 5.00 |
| Controle     |      |        |          | 9 ano | leitura.compreensao.pos |  12 | 4.333 |    5.0 |   0 |   7 | 2.229 | 0.644 | 1.416 | 2.00 |
| Experimental |      |        |          | 6 ano | leitura.compreensao.pos |   9 | 6.556 |    7.0 |   4 |   9 | 1.667 | 0.556 | 1.281 | 3.00 |
| Experimental |      |        |          | 7 ano | leitura.compreensao.pos |   8 | 4.625 |    6.5 |   0 |   8 | 3.889 | 1.375 | 3.251 | 8.00 |
| Experimental |      |        |          | 8 ano | leitura.compreensao.pos |   8 | 4.125 |    5.5 |   0 |   8 | 3.563 | 1.260 | 2.979 | 6.50 |
| Experimental |      |        |          | 9 ano | leitura.compreensao.pos |   9 | 4.222 |    5.0 |   0 |   9 | 3.667 | 1.222 | 2.818 | 8.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                     |   n |   skewness |   kurtosis | symmetry |  statistic | method       |         p | p.signif | normality |
|:------------------------|----:|-----------:|-----------:|:---------|-----------:|:-------------|----------:|:---------|:----------|
| leitura.compreensao.pos |  88 | -0.3871445 | -1.2910103 | YES      | 37.5926884 | D’Agostino   | 0.0000000 | \*\*\*\* | NO        |
| leitura.compreensao.pos |  62 | -0.4677409 | -0.4151413 | YES      |  2.7306707 | D’Agostino   | 0.2552951 | ns       | YES       |
| leitura.compreensao.pos |  49 | -0.4857213 | -1.0083120 | YES      |  0.9190836 | Shapiro-Wilk | 0.0024551 | \*\*     | NO        |
| leitura.compreensao.pos |  88 | -0.1774691 | -1.1571751 | YES      | 19.6255408 | D’Agostino   | 0.0000547 | \*\*\*\* | NO        |

## Assumption: Homogeneity of data distribution

| var                     | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:------------------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  88 |       3 |      84 | 0.2173265 | 0.8841278 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  88 |       3 |      80 | 0.0820000 | 0.9700000 | ns       |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  62 |       3 |      58 | 1.4103608 | 0.2489369 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  62 |       3 |      54 | 0.1930000 | 0.9010000 | ns       |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  49 |       5 |      43 | 1.6451040 | 0.1686717 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  49 |       3 |      39 | 0.8050000 | 0.4990000 | ns       |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  88 |       7 |      80 | 1.0292058 | 0.4174813 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  88 |       7 |      72 | 0.1600000 | 0.9920000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                  | DFn | DFd |     SSn |     SSd |      F | p       |   ges | p\<.05 |
|:----|:------------------------|----:|----:|--------:|--------:|-------:|:--------|------:|:-------|
| 1   | leitura.compreensao.pre |   1 |  85 |   2.457 | 763.315 |  0.274 | 0.602   | 0.003 |        |
| 2   | grupo                   |   1 |  85 |  46.204 | 763.315 |  5.145 | 0.026   | 0.057 | \*     |
| 4   | Sexo                    |   1 |  85 |   2.711 | 806.808 |  0.286 | 0.594   | 0.003 |        |
| 6   | Zona                    |   1 |  59 | 182.773 | 467.003 | 23.091 | \<0.001 | 0.281 | \*     |
| 8   | Cor.Raca                |   2 |  45 |  26.981 | 430.953 |  1.409 | 0.255   | 0.059 |        |
| 10  | Serie                   |   3 |  83 |  54.627 | 754.892 |  2.002 | 0.12    | 0.067 |        |

## ANCOVA tests for two factors

|     | Effect                  | DFn | DFd |    SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:------------------------|----:|----:|-------:|--------:|------:|------:|------:|:-------|
| 1   | leitura.compreensao.pre |   1 |  83 |  2.462 | 753.847 | 0.271 | 0.604 | 0.003 |        |
| 4   | grupo:Sexo              |   1 |  83 |  6.529 | 753.847 | 0.719 | 0.399 | 0.009 |        |
| 8   | grupo:Zona              |   1 |  57 |  1.444 | 421.644 | 0.195 | 0.660 | 0.003 |        |
| 12  | grupo:Cor.Raca          |   2 |  42 |  5.447 | 390.583 | 0.293 | 0.748 | 0.014 |        |
| 16  | grupo:Serie             |   3 |  79 | 26.648 | 681.537 | 1.030 | 0.384 | 0.038 |        |

## Pairwise comparisons for one factor: **grupo**

| var                     | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     |  54 |   4.574 |    0.068 |     3.407 |      0.377 |   4.574 |    0.068 |
| leitura.compreensao.pos | Experimental |  34 |   4.618 |    0.085 |     4.912 |      0.565 |   4.618 |    0.085 |

| .y.                     | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |    p | p.adj | p.adj.signif |
|:------------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|-----:|------:|:-------------|
| leitura.compreensao.pre | Controle | Experimental |   -0.044 |    -0.26 |     0.173 | 0.109 |    -0.401 | 0.69 |  0.69 | ns           |

| .y.                 | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao | Controle     | pre    | pos    |    1.167 |    0.354 |     1.979 | 0.412 |     2.834 | 0.005 | 0.005 | \*\*         |
| leitura.compreensao | Experimental | pre    | pos    |   -0.294 |   -1.318 |     0.730 | 0.519 |    -0.567 | 0.572 | 0.572 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                     | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     | F    |  23 |   4.609 |    0.104 |     2.957 |      0.543 |   4.609 |    0.104 |
| leitura.compreensao.pos | Controle     | M    |  31 |   4.548 |    0.091 |     3.742 |      0.518 |   4.548 |    0.089 |
| leitura.compreensao.pos | Experimental | F    |  15 |   4.733 |    0.118 |     5.133 |      0.888 |   4.733 |    0.129 |
| leitura.compreensao.pos | Experimental | M    |  19 |   4.526 |    0.118 |     4.737 |      0.749 |   4.526 |    0.114 |

| .y.                     | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------------------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao.pre |              | F    | Controle | Experimental |   -0.125 |   -0.453 |     0.204 | 0.165 |    -0.754 | 0.453 | 0.453 | ns           |
| leitura.compreensao.pre |              | M    | Controle | Experimental |    0.022 |   -0.266 |     0.311 | 0.145 |     0.152 | 0.879 | 0.879 | ns           |
| leitura.compreensao.pre | Controle     |      | F        | M            |    0.060 |   -0.212 |     0.333 | 0.137 |     0.440 | 0.661 | 0.661 | ns           |
| leitura.compreensao.pre | Experimental |      | F        | M            |    0.207 |   -0.135 |     0.549 | 0.172 |     1.204 | 0.232 | 0.232 | ns           |

| .y.                 | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao | Controle     | F    | pre    | pos    |    1.652 |    0.400 |     2.904 | 0.634 |     2.605 | 0.010 | 0.010 | \*           |
| leitura.compreensao | Controle     | M    | pre    | pos    |    0.806 |   -0.272 |     1.885 | 0.546 |     1.476 | 0.142 | 0.142 | ns           |
| leitura.compreensao | Experimental | F    | pre    | pos    |   -0.400 |   -1.950 |     1.150 | 0.785 |    -0.509 | 0.611 | 0.611 | ns           |
| leitura.compreensao | Experimental | M    | pre    | pos    |   -0.211 |   -1.588 |     1.167 | 0.698 |    -0.302 | 0.763 | 0.763 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

| var                     | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     | Rural  |  24 |   4.667 |    0.098 |     4.083 |      0.564 |   4.667 |    0.098 |
| leitura.compreensao.pos | Controle     | Urbana |  12 |   4.583 |    0.149 |     0.750 |      0.509 |   4.583 |    0.138 |
| leitura.compreensao.pos | Experimental | Rural  |  20 |   4.700 |    0.105 |     6.000 |      0.653 |   4.700 |    0.107 |
| leitura.compreensao.pos | Experimental | Urbana |   6 |   4.833 |    0.167 |     2.000 |      1.291 |   4.833 |    0.195 |

| .y.                     | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------------------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao.pre |              | Rural  | Controle | Experimental |   -0.033 |   -0.323 |     0.257 | 0.145 |    -0.230 | 0.819 | 0.819 | ns           |
| leitura.compreensao.pre |              | Urbana | Controle | Experimental |   -0.250 |   -0.729 |     0.229 | 0.239 |    -1.045 | 0.300 | 0.300 | ns           |
| leitura.compreensao.pre | Controle     |        | Rural    | Urbana       |    0.083 |   -0.255 |     0.422 | 0.169 |     0.493 | 0.624 | 0.624 | ns           |
| leitura.compreensao.pre | Experimental |        | Rural    | Urbana       |   -0.133 |   -0.579 |     0.313 | 0.223 |    -0.599 | 0.552 | 0.552 | ns           |

| .y.                 | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:--------------------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| leitura.compreensao | Controle     | Rural  | pre    | pos    |    0.583 |   -0.524 |     1.691 | 0.559 |     1.043 | 0.299   | 0.299   | ns           |
| leitura.compreensao | Controle     | Urbana | pre    | pos    |    3.833 |    2.267 |     5.400 | 0.791 |     4.847 | \<0.001 | \<0.001 | \*\*\*\*     |
| leitura.compreensao | Experimental | Rural  | pre    | pos    |   -1.300 |   -2.513 |    -0.087 | 0.613 |    -2.122 | 0.036   | 0.036   | \*           |
| leitura.compreensao | Experimental | Urbana | pre    | pos    |    2.833 |    0.618 |     5.049 | 1.119 |     2.533 | 0.013   | 0.013   | \*           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-52-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-54-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var                     | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     | Parda    |  26 |   4.692 |    0.092 |     3.538 |      0.569 |   4.692 |    0.094 |
| leitura.compreensao.pos | Experimental | Branca   |   6 |   4.833 |    0.167 |     5.500 |      1.746 |   4.833 |    0.195 |
| leitura.compreensao.pos | Experimental | Parda    |  11 |   4.455 |    0.157 |     5.455 |      0.908 |   4.455 |    0.144 |

|     | .y.                     | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:------------------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | leitura.compreensao.pre |              | Parda    | Controle | Experimental |    0.238 |   -0.109 |     0.584 | 0.172 |     1.386 | 0.173 | 0.173 | ns           |
| 4   | leitura.compreensao.pre | Experimental |          | Branca   | Parda        |    0.379 |   -0.110 |     0.868 | 0.242 |     1.565 | 0.125 | 0.125 | ns           |

| .y.                 | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao | Controle     | Parda    | pre    | pos    |    1.154 |   -0.083 |     2.391 | 0.622 |     1.856 | 0.067 | 0.067 | ns           |
| leitura.compreensao | Experimental | Branca   | pre    | pos    |   -0.667 |   -3.242 |     1.908 | 1.294 |    -0.515 | 0.608 | 0.608 | ns           |
| leitura.compreensao | Experimental | Parda    | pre    | pos    |   -1.000 |   -2.902 |     0.902 | 0.956 |    -1.046 | 0.298 | 0.298 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-62-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-64-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-68-1.png)<!-- -->

### factores: **grupo:Serie**

| var                     | grupo        | Serie |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     | 6 ano |  16 |   4.688 |    0.120 |     4.125 |      0.712 |   4.687 |    0.123 |
| leitura.compreensao.pos | Controle     | 7 ano |  13 |   4.538 |    0.144 |     1.923 |      0.763 |   4.538 |    0.137 |
| leitura.compreensao.pos | Controle     | 8 ano |  13 |   4.615 |    0.140 |     3.154 |      0.767 |   4.615 |    0.137 |
| leitura.compreensao.pos | Controle     | 9 ano |  12 |   4.417 |    0.149 |     4.333 |      0.644 |   4.417 |    0.142 |
| leitura.compreensao.pos | Experimental | 6 ano |   9 |   4.667 |    0.167 |     6.556 |      0.556 |   4.667 |    0.164 |
| leitura.compreensao.pos | Experimental | 7 ano |   8 |   4.625 |    0.183 |     4.625 |      1.375 |   4.625 |    0.174 |
| leitura.compreensao.pos | Experimental | 8 ano |   8 |   4.875 |    0.125 |     4.125 |      1.260 |   4.875 |    0.174 |
| leitura.compreensao.pos | Experimental | 9 ano |   9 |   4.333 |    0.167 |     4.222 |      1.222 |   4.333 |    0.164 |

| .y.                     | grupo        | Serie | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------------------------|:-------------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao.pre |              | 6 ano | Controle | Experimental |    0.021 |   -0.388 |     0.429 | 0.205 |     0.102 | 0.919 | 0.919 | ns           |
| leitura.compreensao.pre |              | 7 ano | Controle | Experimental |   -0.087 |   -0.527 |     0.354 | 0.221 |    -0.391 | 0.697 | 0.697 | ns           |
| leitura.compreensao.pre |              | 8 ano | Controle | Experimental |   -0.260 |   -0.700 |     0.181 | 0.221 |    -1.173 | 0.244 | 0.244 | ns           |
| leitura.compreensao.pre |              | 9 ano | Controle | Experimental |    0.083 |   -0.349 |     0.516 | 0.217 |     0.384 | 0.702 | 0.702 | ns           |
| leitura.compreensao.pre | Controle     |       | 6 ano    | 7 ano        |    0.149 |   -0.217 |     0.515 | 0.184 |     0.810 | 0.420 | 1.000 | ns           |
| leitura.compreensao.pre | Controle     |       | 6 ano    | 8 ano        |    0.072 |   -0.294 |     0.438 | 0.184 |     0.392 | 0.696 | 1.000 | ns           |
| leitura.compreensao.pre | Controle     |       | 6 ano    | 9 ano        |    0.271 |   -0.104 |     0.645 | 0.188 |     1.440 | 0.154 | 0.923 | ns           |
| leitura.compreensao.pre | Controle     |       | 7 ano    | 8 ano        |   -0.077 |   -0.461 |     0.308 | 0.193 |    -0.398 | 0.692 | 1.000 | ns           |
| leitura.compreensao.pre | Controle     |       | 7 ano    | 9 ano        |    0.122 |   -0.271 |     0.514 | 0.197 |     0.618 | 0.539 | 1.000 | ns           |
| leitura.compreensao.pre | Controle     |       | 8 ano    | 9 ano        |    0.199 |   -0.194 |     0.591 | 0.197 |     1.008 | 0.317 | 1.000 | ns           |
| leitura.compreensao.pre | Experimental |       | 6 ano    | 7 ano        |    0.042 |   -0.435 |     0.518 | 0.239 |     0.174 | 0.862 | 1.000 | ns           |
| leitura.compreensao.pre | Experimental |       | 6 ano    | 8 ano        |   -0.208 |   -0.685 |     0.268 | 0.239 |    -0.870 | 0.387 | 1.000 | ns           |
| leitura.compreensao.pre | Experimental |       | 6 ano    | 9 ano        |    0.333 |   -0.129 |     0.795 | 0.232 |     1.435 | 0.155 | 0.930 | ns           |
| leitura.compreensao.pre | Experimental |       | 7 ano    | 8 ano        |   -0.250 |   -0.740 |     0.240 | 0.246 |    -1.015 | 0.313 | 1.000 | ns           |
| leitura.compreensao.pre | Experimental |       | 7 ano    | 9 ano        |    0.292 |   -0.185 |     0.768 | 0.239 |     1.219 | 0.227 | 1.000 | ns           |
| leitura.compreensao.pre | Experimental |       | 8 ano    | 9 ano        |    0.542 |    0.065 |     1.018 | 0.239 |     2.263 | 0.026 | 0.158 | ns           |

| .y.                 | grupo        | Serie | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------|:-------------|:------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao | Controle     | 6 ano | pre    | pos    |    0.562 |   -0.901 |     2.026 | 0.741 |     0.759 | 0.449 | 0.449 | ns           |
| leitura.compreensao | Controle     | 7 ano | pre    | pos    |    2.615 |    0.992 |     4.239 | 0.822 |     3.181 | 0.002 | 0.002 | \*\*         |
| leitura.compreensao | Controle     | 8 ano | pre    | pos    |    1.462 |   -0.162 |     3.085 | 0.822 |     1.778 | 0.077 | 0.077 | ns           |
| leitura.compreensao | Controle     | 9 ano | pre    | pos    |    0.083 |   -1.607 |     1.773 | 0.856 |     0.097 | 0.923 | 0.923 | ns           |
| leitura.compreensao | Experimental | 6 ano | pre    | pos    |   -1.889 |   -3.840 |     0.063 | 0.988 |    -1.912 | 0.058 | 0.058 | ns           |
| leitura.compreensao | Experimental | 7 ano | pre    | pos    |    0.000 |   -2.070 |     2.070 | 1.048 |     0.000 | 1.000 | 1.000 | ns           |
| leitura.compreensao | Experimental | 8 ano | pre    | pos    |    0.750 |   -1.320 |     2.820 | 1.048 |     0.716 | 0.475 | 0.475 | ns           |
| leitura.compreensao | Experimental | 9 ano | pre    | pos    |    0.111 |   -1.840 |     2.063 | 0.988 |     0.112 | 0.911 | 0.911 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-78-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-80-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-3rd-quintile_files/figure-gfm/unnamed-chunk-82-1.png)<!-- -->
