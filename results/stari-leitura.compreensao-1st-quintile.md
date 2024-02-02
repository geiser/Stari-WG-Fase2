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
| Controle     | F    |        |          |       | leitura.compreensao.pre |   9 | 0.667 |    0.0 |   0 |   2 | 0.866 | 0.289 |  0.666 | 1.00 |
| Controle     | M    |        |          |       | leitura.compreensao.pre |  18 | 0.722 |    0.0 |   0 |   2 | 0.895 | 0.211 |  0.445 | 1.75 |
| Experimental | M    |        |          |       | leitura.compreensao.pre |   8 | 1.250 |    1.5 |   0 |   2 | 0.886 | 0.313 |  0.741 | 1.25 |
| Controle     | F    |        |          |       | leitura.compreensao.pos |   9 | 2.778 |    4.0 |   0 |   7 | 2.774 | 0.925 |  2.132 | 5.00 |
| Controle     | M    |        |          |       | leitura.compreensao.pos |  18 | 1.611 |    0.0 |   0 |   6 | 2.118 | 0.499 |  1.053 | 2.75 |
| Experimental | M    |        |          |       | leitura.compreensao.pos |   8 | 3.375 |    2.5 |   0 |  10 | 3.889 | 1.375 |  3.251 | 6.00 |
| Controle     |      | Rural  |          |       | leitura.compreensao.pre |  17 | 0.706 |    0.0 |   0 |   2 | 0.920 | 0.223 |  0.473 | 2.00 |
| Controle     |      | Urbana |          |       | leitura.compreensao.pre |   3 | 0.667 |    0.0 |   0 |   2 | 1.155 | 0.667 |  2.868 | 1.00 |
| Controle     |      |        |          |       | leitura.compreensao.pre |   7 | 0.714 |    1.0 |   0 |   2 | 0.756 | 0.286 |  0.699 | 1.00 |
| Experimental |      | Rural  |          |       | leitura.compreensao.pre |   5 | 0.800 |    1.0 |   0 |   2 | 0.837 | 0.374 |  1.039 | 1.00 |
| Experimental |      | Urbana |          |       | leitura.compreensao.pre |   1 | 2.000 |    2.0 |   2 |   2 |       |       |        | 0.00 |
| Experimental |      |        |          |       | leitura.compreensao.pre |   2 | 2.000 |    2.0 |   2 |   2 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      | Rural  |          |       | leitura.compreensao.pos |  17 | 2.647 |    2.0 |   0 |   7 | 2.422 | 0.587 |  1.245 | 5.00 |
| Controle     |      | Urbana |          |       | leitura.compreensao.pos |   3 | 0.000 |    0.0 |   0 |   0 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      |        |          |       | leitura.compreensao.pos |   7 | 1.286 |    0.0 |   0 |   5 | 2.215 | 0.837 |  2.048 | 2.00 |
| Experimental |      | Rural  |          |       | leitura.compreensao.pos |   5 | 2.400 |    0.0 |   0 |   6 | 3.286 | 1.470 |  4.081 | 6.00 |
| Experimental |      | Urbana |          |       | leitura.compreensao.pos |   1 | 0.000 |    0.0 |   0 |   0 |       |       |        | 0.00 |
| Experimental |      |        |          |       | leitura.compreensao.pos |   2 | 7.500 |    7.5 |   5 |  10 | 3.536 | 2.500 | 31.766 | 2.50 |
| Controle     |      |        | Branca   |       | leitura.compreensao.pre |   3 | 0.333 |    0.0 |   0 |   1 | 0.577 | 0.333 |  1.434 | 0.50 |
| Controle     |      |        | Parda    |       | leitura.compreensao.pre |  19 | 0.737 |    0.0 |   0 |   2 | 0.933 | 0.214 |  0.450 | 2.00 |
| Controle     |      |        |          |       | leitura.compreensao.pre |   5 | 0.800 |    1.0 |   0 |   2 | 0.837 | 0.374 |  1.039 | 1.00 |
| Experimental |      |        | Branca   |       | leitura.compreensao.pre |   1 | 2.000 |    2.0 |   2 |   2 |       |       |        | 0.00 |
| Experimental |      |        | Parda    |       | leitura.compreensao.pre |   4 | 0.750 |    0.5 |   0 |   2 | 0.957 | 0.479 |  1.523 | 1.25 |
| Experimental |      |        |          |       | leitura.compreensao.pre |   3 | 1.667 |    2.0 |   1 |   2 | 0.577 | 0.333 |  1.434 | 0.50 |
| Controle     |      |        | Branca   |       | leitura.compreensao.pos |   3 | 0.667 |    0.0 |   0 |   2 | 1.155 | 0.667 |  2.868 | 1.00 |
| Controle     |      |        | Parda    |       | leitura.compreensao.pos |  19 | 2.526 |    2.0 |   0 |   7 | 2.503 | 0.574 |  1.206 | 5.00 |
| Controle     |      |        |          |       | leitura.compreensao.pos |   5 | 0.800 |    0.0 |   0 |   4 | 1.789 | 0.800 |  2.221 | 0.00 |
| Experimental |      |        | Branca   |       | leitura.compreensao.pos |   1 | 0.000 |    0.0 |   0 |   0 |       |       |        | 0.00 |
| Experimental |      |        | Parda    |       | leitura.compreensao.pos |   4 | 3.000 |    3.0 |   0 |   6 | 3.464 | 1.732 |  5.512 | 6.00 |
| Experimental |      |        |          |       | leitura.compreensao.pos |   3 | 5.000 |    5.0 |   0 |  10 | 5.000 | 2.887 | 12.421 | 5.00 |
| Controle     |      |        |          | 6 ano | leitura.compreensao.pre |   8 | 0.625 |    0.0 |   0 |   2 | 0.916 | 0.324 |  0.766 | 1.25 |
| Controle     |      |        |          | 7 ano | leitura.compreensao.pre |  10 | 0.600 |    0.0 |   0 |   2 | 0.843 | 0.267 |  0.603 | 1.00 |
| Controle     |      |        |          | 8 ano | leitura.compreensao.pre |   4 | 0.750 |    0.5 |   0 |   2 | 0.957 | 0.479 |  1.523 | 1.25 |
| Controle     |      |        |          | 9 ano | leitura.compreensao.pre |   5 | 1.000 |    1.0 |   0 |   2 | 1.000 | 0.447 |  1.242 | 2.00 |
| Experimental |      |        |          | 7 ano | leitura.compreensao.pre |   5 | 1.400 |    2.0 |   0 |   2 | 0.894 | 0.400 |  1.111 | 1.00 |
| Experimental |      |        |          | 8 ano | leitura.compreensao.pre |   2 | 1.500 |    1.5 |   1 |   2 | 0.707 | 0.500 |  6.353 | 0.50 |
| Experimental |      |        |          | 9 ano | leitura.compreensao.pre |   1 | 0.000 |    0.0 |   0 |   0 |       |       |        | 0.00 |
| Controle     |      |        |          | 6 ano | leitura.compreensao.pos |   8 | 1.750 |    1.0 |   0 |   5 | 2.053 | 0.726 |  1.716 | 3.25 |
| Controle     |      |        |          | 7 ano | leitura.compreensao.pos |  10 | 2.200 |    1.0 |   0 |   7 | 2.616 | 0.827 |  1.872 | 4.00 |
| Controle     |      |        |          | 8 ano | leitura.compreensao.pos |   4 | 1.250 |    0.0 |   0 |   5 | 2.500 | 1.250 |  3.978 | 1.25 |
| Controle     |      |        |          | 9 ano | leitura.compreensao.pos |   5 | 2.600 |    2.0 |   0 |   6 | 2.793 | 1.249 |  3.468 | 5.00 |
| Experimental |      |        |          | 7 ano | leitura.compreensao.pos |   5 | 3.200 |    0.0 |   0 |  10 | 4.604 | 2.059 |  5.717 | 6.00 |
| Experimental |      |        |          | 8 ano | leitura.compreensao.pos |   2 | 2.500 |    2.5 |   0 |   5 | 3.536 | 2.500 | 31.766 | 2.50 |
| Experimental |      |        |          | 9 ano | leitura.compreensao.pos |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                     |   n |  skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:------------------------|----:|----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| leitura.compreensao.pos |  35 | 0.6039994 | -0.4343161 | NO       | 0.9323528 | Shapiro-Wilk | 0.0328801 | \*       | NO        |
| leitura.compreensao.pos |  26 | 0.1583246 | -1.1837303 | YES      | 0.9407963 | Shapiro-Wilk | 0.1403235 | ns       | YES       |
| leitura.compreensao.pos |  27 | 0.1137006 | -1.1574120 | YES      | 0.9489169 | Shapiro-Wilk | 0.2017730 | ns       | YES       |
| leitura.compreensao.pos |  35 | 0.6711738 | -0.4312042 | NO       | 0.9168483 | Shapiro-Wilk | 0.0115789 | \*       | NO        |

## Assumption: Homogeneity of data distribution

| var                     | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:------------------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  35 |       2 |      32 |  2.516010 | 0.0966410 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  35 |       2 |      29 |  1.352000 | 0.2750000 | ns       |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  26 |       3 |      22 |  1.108060 | 0.3670225 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  26 |       2 |      19 |  1.978000 | 0.1660000 | ns       |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  27 |       3 |      23 |  1.009391 | 0.4065259 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  27 |       2 |      20 |  1.861000 | 0.1810000 | ns       |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  35 |       6 |      28 |  0.479422 | 0.8178513 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  35 |       5 |      22 |  0.561000 | 0.7290000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                  | DFn | DFd |    SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:------------------------|----:|----:|-------:|--------:|------:|------:|------:|:-------|
| 1   | leitura.compreensao.pre |   1 |  32 |  9.871 | 242.004 | 1.305 | 0.262 | 0.039 |        |
| 2   | grupo                   |   1 |  32 | 16.959 | 242.004 | 2.243 | 0.144 | 0.065 |        |
| 4   | Sexo                    |   1 |  32 |  1.930 | 257.033 | 0.240 | 0.627 | 0.007 |        |
| 6   | Zona                    |   1 |  23 | 18.156 | 118.732 | 3.517 | 0.073 | 0.133 |        |
| 8   | Cor.Raca                |   1 |  24 | 14.976 | 125.633 | 2.861 | 0.104 | 0.107 |        |
| 10  | Serie                   |   3 |  30 | 10.579 | 248.384 | 0.426 | 0.736 | 0.041 |        |

## ANCOVA tests for two factors

|     | Effect                  | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:------------------------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| 1   | leitura.compreensao.pre |   1 |  31 | 9.397 | 234.312 | 1.243 | 0.273 | 0.039 |        |
| 4   | grupo:Sexo              |   0 |  31 |       | 234.312 |       |       |       |        |
| 8   | grupo:Zona              |   1 |  21 | 1.363 | 117.342 | 0.244 | 0.626 | 0.011 |        |
| 12  | grupo:Cor.Raca          |   1 |  22 | 0.410 | 123.624 | 0.073 | 0.790 | 0.003 |        |
| 16  | grupo:Serie             |   2 |  27 | 1.198 | 231.364 | 0.070 | 0.933 | 0.005 |        |

## Pairwise comparisons for one factor: **grupo**

| var                     | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     |  27 |   0.704 |    0.167 |     2.000 |      0.456 |   1.922 |    0.534 |
| leitura.compreensao.pos | Experimental |   8 |   1.250 |    0.313 |     3.375 |      1.375 |   3.639 |    0.999 |

| .y.                     | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao.pos | Controle | Experimental |   -1.717 |   -4.053 |     0.619 | 1.147 |    -1.498 | 0.144 | 0.144 | ns           |
| leitura.compreensao.pre | Controle | Experimental |   -0.546 |   -1.261 |     0.168 | 0.351 |    -1.555 | 0.129 | 0.129 | ns           |

| .y.                 | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao | Controle     | pre    | pos    |   -1.296 |    -2.41 |    -0.183 | 0.558 |    -2.325 | 0.023 | 0.023 | \*           |
| leitura.compreensao | Experimental | pre    | pos    |   -2.125 |    -4.17 |    -0.080 | 1.024 |    -2.075 | 0.042 | 0.042 | \*           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-1st-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-1st-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-1st-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-1st-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                     | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     | F    |   9 |   0.667 |    0.289 |     2.778 |      0.925 |   2.679 |    0.921 |
| leitura.compreensao.pos | Controle     | M    |  18 |   0.722 |    0.211 |     1.611 |      0.499 |   1.546 |    0.651 |
| leitura.compreensao.pos | Experimental | M    |   8 |   1.250 |    0.313 |     3.375 |      1.375 |   3.633 |    0.999 |

|     | .y.                     | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:------------------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | leitura.compreensao.pos |          | M    | Controle | Experimental |   -2.087 |   -4.541 |     0.368 | 1.204 |    -1.734 | 0.093 | 0.093 | ns           |
| 4   | leitura.compreensao.pre |          | M    | Controle | Experimental |   -0.528 |   -1.295 |     0.239 | 0.376 |    -1.402 | 0.171 | 0.171 | ns           |
| 5   | leitura.compreensao.pos | Controle |      | F        | M            |    1.133 |   -1.157 |     3.423 | 1.123 |     1.009 | 0.321 | 0.321 | ns           |
| 7   | leitura.compreensao.pre | Controle |      | F        | M            |   -0.056 |   -0.792 |     0.681 | 0.362 |    -0.154 | 0.879 | 0.879 | ns           |

| .y.                 | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao | Controle     | F    | pre    | pos    |   -2.111 |   -4.041 |    -0.181 | 0.966 |    -2.185 | 0.033 | 0.033 | \*           |
| leitura.compreensao | Controle     | M    | pre    | pos    |   -0.889 |   -2.254 |     0.476 | 0.683 |    -1.301 | 0.198 | 0.198 | ns           |
| leitura.compreensao | Experimental | M    | pre    | pos    |   -2.125 |   -4.172 |    -0.078 | 1.025 |    -2.074 | 0.042 | 0.042 | \*           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-1st-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-1st-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-1st-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-1st-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:Serie**

| var                     | grupo        | Serie |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     | 6 ano |   8 |   0.625 |    0.324 |      1.75 |      0.726 |   1.636 |    1.052 |
| leitura.compreensao.pos | Controle     | 7 ano |  10 |   0.600 |    0.267 |      2.20 |      0.827 |   2.071 |    0.945 |
| leitura.compreensao.pos | Controle     | 9 ano |   5 |   1.000 |    0.447 |      2.60 |      1.249 |   2.704 |    1.326 |
| leitura.compreensao.pos | Experimental | 7 ano |   5 |   1.400 |    0.400 |      3.20 |      2.059 |   3.537 |    1.376 |

|     | .y.                     | grupo    | Serie | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:------------------------|:---------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | leitura.compreensao.pos |          | 7 ano | Controle | Experimental |   -1.466 |   -4.990 |     2.057 | 1.703 |    -0.861 | 0.398 | 0.398 | ns           |
| 5   | leitura.compreensao.pre |          | 7 ano | Controle | Experimental |   -0.800 |   -1.818 |     0.218 | 0.493 |    -1.621 | 0.118 | 0.118 | ns           |
| 7   | leitura.compreensao.pos | Controle |       | 6 ano    | 7 ano        |   -0.435 |   -3.333 |     2.462 | 1.401 |    -0.311 | 0.759 | 1.000 | ns           |
| 8   | leitura.compreensao.pos | Controle |       | 6 ano    | 9 ano        |   -1.069 |   -4.589 |     2.452 | 1.702 |    -0.628 | 0.536 | 1.000 | ns           |
| 9   | leitura.compreensao.pos | Controle |       | 7 ano    | 9 ano        |   -0.633 |   -4.024 |     2.758 | 1.639 |    -0.386 | 0.703 | 1.000 | ns           |
| 13  | leitura.compreensao.pre | Controle |       | 6 ano    | 7 ano        |    0.025 |   -0.857 |     0.907 | 0.427 |     0.059 | 0.954 | 1.000 | ns           |
| 14  | leitura.compreensao.pre | Controle |       | 6 ano    | 9 ano        |   -0.375 |   -1.435 |     0.685 | 0.514 |    -0.730 | 0.472 | 1.000 | ns           |
| 15  | leitura.compreensao.pre | Controle |       | 7 ano    | 9 ano        |   -0.400 |   -1.418 |     0.618 | 0.493 |    -0.811 | 0.425 | 1.000 | ns           |

| .y.                 | grupo        | Serie | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------|:-------------|:------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao | Controle     | 6 ano | pre    | pos    |   -1.125 |   -3.309 |     1.059 | 1.086 |    -1.036 | 0.306 | 0.306 | ns           |
| leitura.compreensao | Controle     | 7 ano | pre    | pos    |   -1.600 |   -3.554 |     0.354 | 0.972 |    -1.647 | 0.106 | 0.106 | ns           |
| leitura.compreensao | Controle     | 9 ano | pre    | pos    |   -1.600 |   -4.363 |     1.163 | 1.374 |    -1.164 | 0.250 | 0.250 | ns           |
| leitura.compreensao | Experimental | 7 ano | pre    | pos    |   -1.800 |   -4.563 |     0.963 | 1.374 |    -1.310 | 0.196 | 0.196 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-1st-quintile_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-1st-quintile_files/figure-gfm/unnamed-chunk-78-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-1st-quintile_files/figure-gfm/unnamed-chunk-80-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-1st-quintile_files/figure-gfm/unnamed-chunk-82-1.png)<!-- -->
