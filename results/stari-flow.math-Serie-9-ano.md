ANCOVA in flow (prob. matemática) (flow (prob. matemática))
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

**NOTE**

- Teste ANCOVA para determinar se houve diferenças significativas no
  flow (prob. matemática) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (prob. matemática) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |  mean | median |   min |   max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|------:|-------:|------:|------:|------:|------:|------:|------:|
| Controle     | F    |        |          | dfs.media.math |   6 | 3.352 |  3.444 | 2.667 | 3.778 | 0.412 | 0.168 | 0.433 | 0.472 |
| Controle     | M    |        |          | dfs.media.math |  13 | 3.350 |  3.222 | 2.444 | 4.444 | 0.495 | 0.137 | 0.299 | 0.333 |
| Experimental | F    |        |          | dfs.media.math |   4 | 2.944 |  2.833 | 2.444 | 3.667 | 0.533 | 0.266 | 0.848 | 0.556 |
| Experimental | M    |        |          | dfs.media.math |   5 | 3.289 |  3.556 | 2.222 | 3.778 | 0.631 | 0.282 | 0.784 | 0.444 |
| Controle     | F    |        |          | fss.media.math |   6 | 3.347 |  3.167 | 2.778 | 4.333 | 0.607 | 0.248 | 0.637 | 0.774 |
| Controle     | M    |        |          | fss.media.math |  13 | 3.444 |  3.556 | 2.889 | 4.000 | 0.330 | 0.092 | 0.200 | 0.444 |
| Experimental | F    |        |          | fss.media.math |   4 | 3.083 |  3.056 | 2.111 | 4.111 | 0.848 | 0.424 | 1.349 | 0.917 |
| Experimental | M    |        |          | fss.media.math |   5 | 3.222 |  3.222 | 2.667 | 4.000 | 0.539 | 0.241 | 0.669 | 0.667 |
| Controle     |      | Rural  |          | dfs.media.math |   8 | 3.500 |  3.444 | 2.444 | 4.444 | 0.623 | 0.220 | 0.521 | 0.667 |
| Controle     |      |        |          | dfs.media.math |  11 | 3.242 |  3.222 | 2.667 | 3.667 | 0.276 | 0.083 | 0.185 | 0.278 |
| Experimental |      | Rural  |          | dfs.media.math |   5 | 3.267 |  3.556 | 2.222 | 3.667 | 0.612 | 0.274 | 0.759 | 0.444 |
| Experimental |      | Urbana |          | dfs.media.math |   1 | 3.000 |  3.000 | 3.000 | 3.000 |       |       |       | 0.000 |
| Experimental |      |        |          | dfs.media.math |   3 | 2.963 |  2.667 | 2.444 | 3.778 | 0.714 | 0.412 | 1.775 | 0.667 |
| Controle     |      | Rural  |          | fss.media.math |   8 | 3.583 |  3.556 | 3.000 | 4.333 | 0.393 | 0.139 | 0.328 | 0.222 |
| Controle     |      |        |          | fss.media.math |  11 | 3.290 |  3.222 | 2.778 | 4.000 | 0.414 | 0.125 | 0.278 | 0.556 |
| Experimental |      | Rural  |          | fss.media.math |   5 | 3.244 |  3.222 | 2.667 | 4.111 | 0.579 | 0.259 | 0.720 | 0.667 |
| Experimental |      | Urbana |          | fss.media.math |   1 | 2.778 |  2.778 | 2.778 | 2.778 |       |       |       | 0.000 |
| Experimental |      |        |          | fss.media.math |   3 | 3.148 |  3.333 | 2.111 | 4.000 | 0.958 | 0.553 | 2.380 | 0.944 |
| Controle     |      |        | Branca   | dfs.media.math |   1 | 4.444 |  4.444 | 4.444 | 4.444 |       |       |       | 0.000 |
| Controle     |      |        | Parda    | dfs.media.math |   7 | 3.302 |  3.333 | 2.444 | 4.111 | 0.539 | 0.204 | 0.499 | 0.500 |
| Controle     |      |        |          | dfs.media.math |  11 | 3.283 |  3.222 | 2.667 | 3.667 | 0.278 | 0.084 | 0.187 | 0.333 |
| Experimental |      |        | Branca   | dfs.media.math |   2 | 2.944 |  2.944 | 2.222 | 3.667 | 1.021 | 0.722 | 9.177 | 0.722 |
| Experimental |      |        | Indígena | dfs.media.math |   2 | 3.611 |  3.611 | 3.556 | 3.667 | 0.079 | 0.056 | 0.706 | 0.056 |
| Experimental |      |        | Parda    | dfs.media.math |   3 | 2.889 |  3.000 | 2.444 | 3.222 | 0.401 | 0.231 | 0.995 | 0.389 |
| Experimental |      |        |          | dfs.media.math |   2 | 3.222 |  3.222 | 2.667 | 3.778 | 0.786 | 0.556 | 7.059 | 0.556 |
| Controle     |      |        | Branca   | fss.media.math |   1 | 3.667 |  3.667 | 3.667 | 3.667 |       |       |       | 0.000 |
| Controle     |      |        | Parda    | fss.media.math |   7 | 3.603 |  3.556 | 3.000 | 4.333 | 0.420 | 0.159 | 0.388 | 0.278 |
| Controle     |      |        |          | fss.media.math |  11 | 3.270 |  3.222 | 2.778 | 4.000 | 0.399 | 0.120 | 0.268 | 0.556 |
| Experimental |      |        | Branca   | fss.media.math |   2 | 3.000 |  3.000 | 2.778 | 3.222 | 0.314 | 0.222 | 2.824 | 0.222 |
| Experimental |      |        | Indígena | fss.media.math |   2 | 3.778 |  3.778 | 3.444 | 4.111 | 0.471 | 0.333 | 4.235 | 0.333 |
| Experimental |      |        | Parda    | fss.media.math |   3 | 2.519 |  2.667 | 2.111 | 2.778 | 0.357 | 0.206 | 0.887 | 0.333 |
| Experimental |      |        |          | fss.media.math |   2 | 3.667 |  3.667 | 3.333 | 4.000 | 0.471 | 0.333 | 4.235 | 0.333 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| fss.media.math |  28 |  0.1666071 | -1.3185178 | YES      | 0.9527544 | Shapiro-Wilk | 0.2321880 | ns       | YES       |
| fss.media.math |  14 |  0.4231105 | -0.8405786 | YES      | 0.9487112 | Shapiro-Wilk | 0.5408817 | ns       | YES       |
| fss.media.math |  15 | -0.1322397 | -0.6600314 | YES      | 0.9763955 | Shapiro-Wilk | 0.9389246 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  28 |       3 |      24 | 1.0449949 | 0.3906711 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  28 |       3 |      20 | 2.3700000 | 0.1010000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Zona`     |  14 |       2 |      11 | 0.6689311 | 0.5319126 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  14 |       1 |       9 | 0.8490000 | 0.3810000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  15 |       4 |      10 | 1.6472564 | 0.2376728 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  15 |       3 |       6 | 0.5700000 | 0.6550000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |   SSn |   SSd |      F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|------:|-------:|------:|------:|:-------|
| 1   | dfs.media.math |   1 |  25 | 1.932 | 4.619 | 10.457 | 0.003 | 0.295 | \*     |
| 2   | grupo          |   1 |  25 | 0.108 | 4.619 |  0.584 | 0.452 | 0.023 |        |
| 4   | Sexo           |   1 |  25 | 0.023 | 4.705 |  0.121 | 0.731 | 0.005 |        |
| 6   | Zona           |   1 |  11 | 0.241 | 2.140 |  1.240 | 0.289 | 0.101 |        |
| 8   | Cor.Raca       |   2 |  11 | 0.260 | 2.985 |  0.480 | 0.631 | 0.080 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |   SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|------:|------:|------:|------:|:-------|
| 1   | dfs.media.math |   1 |  23 | 1.896 | 4.574 | 9.532 | 0.005 | 0.293 | \*     |
| 4   | grupo:Sexo     |   1 |  23 | 0.031 | 4.574 | 0.158 | 0.694 | 0.007 |        |
| 8   | grupo:Zona     |   0 |  10 |       | 1.940 |       |       |       |        |
| 12  | grupo:Cor.Raca |   1 |   9 | 0.261 | 1.282 | 1.829 | 0.209 | 0.169 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     |  19 |   3.351 |    0.105 |     3.414 |      0.097 |   3.376 |    0.099 |
| fss.media.math | Experimental |   9 |   3.136 |    0.194 |     3.160 |      0.216 |   3.240 |    0.145 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math | Controle | Experimental |    0.136 |   -0.230 |     0.502 | 0.178 |     0.764 | 0.452 | 0.452 | ns           |
| dfs.media.math | Controle | Experimental |    0.215 |   -0.201 |     0.631 | 0.202 |     1.063 | 0.297 | 0.297 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | pre    | pos    |   -0.063 |   -0.389 |     0.263 | 0.163 |    -0.386 | 0.701 | 0.701 | ns           |
| flow.math | Experimental | pre    | pos    |   -0.025 |   -0.499 |     0.449 | 0.236 |    -0.105 | 0.917 | 0.917 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | F    |   6 |   3.352 |    0.168 |     3.347 |      0.248 |   3.341 |    0.167 |
| fss.media.math | Controle     | M    |  13 |   3.350 |    0.137 |     3.444 |      0.092 |   3.439 |    0.113 |
| fss.media.math | Experimental | M    |   5 |   3.289 |    0.282 |     3.222 |      0.241 |   3.243 |    0.183 |

|     | .y.            | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | fss.media.math |          | M    | Controle | Experimental |    0.196 |   -0.253 |     0.645 | 0.215 |     0.911 | 0.373 | 0.373 | ns           |
| 4   | dfs.media.math |          | M    | Controle | Experimental |    0.062 |   -0.492 |     0.615 | 0.266 |     0.231 | 0.820 | 0.820 | ns           |
| 5   | fss.media.math | Controle |      | F        | M            |   -0.098 |   -0.519 |     0.322 | 0.201 |    -0.489 | 0.630 | 0.630 | ns           |
| 7   | dfs.media.math | Controle |      | F        | M            |    0.001 |   -0.518 |     0.521 | 0.250 |     0.006 | 0.996 | 0.996 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | F    | pre    | pos    |    0.005 |   -0.554 |     0.565 | 0.277 |     0.019 | 0.985 | 0.985 | ns           |
| flow.math | Controle     | M    | pre    | pos    |   -0.094 |   -0.474 |     0.286 | 0.188 |    -0.499 | 0.620 | 0.620 | ns           |
| flow.math | Experimental | M    | pre    | pos    |    0.067 |   -0.546 |     0.680 | 0.304 |     0.219 | 0.827 | 0.827 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
