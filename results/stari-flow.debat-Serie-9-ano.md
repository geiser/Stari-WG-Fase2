ANCOVA in flow (debate) (flow (debate))
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
  flow (debate) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (debate) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Cor.Raca | variable        |   n |  mean | median |   min |   max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:---------|:----------------|----:|------:|-------:|------:|------:|------:|------:|------:|------:|
| Controle     | F    |          | dfs.media.debat |   6 | 3.685 |  3.611 | 3.444 | 4.000 | 0.257 | 0.105 | 0.270 | 0.444 |
| Controle     | M    |          | dfs.media.debat |  13 | 3.335 |  3.333 | 2.444 | 4.250 | 0.529 | 0.147 | 0.320 | 0.444 |
| Experimental | F    |          | dfs.media.debat |   3 | 2.963 |  2.778 | 2.667 | 3.444 | 0.421 | 0.243 | 1.045 | 0.389 |
| Experimental | M    |          | dfs.media.debat |   5 | 3.208 |  3.375 | 2.222 | 3.889 | 0.618 | 0.276 | 0.768 | 0.333 |
| Controle     | F    |          | fss.media.debat |   6 | 3.556 |  3.500 | 3.111 | 4.333 | 0.471 | 0.192 | 0.495 | 0.583 |
| Controle     | M    |          | fss.media.debat |  13 | 3.487 |  3.556 | 3.000 | 4.000 | 0.322 | 0.089 | 0.195 | 0.444 |
| Experimental | F    |          | fss.media.debat |   3 | 3.630 |  3.556 | 2.889 | 4.444 | 0.780 | 0.451 | 1.939 | 0.778 |
| Experimental | M    |          | fss.media.debat |   5 | 3.133 |  3.111 | 2.444 | 4.000 | 0.621 | 0.278 | 0.771 | 0.778 |
| Controle     |      | Branca   | dfs.media.debat |   1 | 4.111 |  4.111 | 4.111 | 4.111 |       |       |       | 0.000 |
| Controle     |      | Parda    | dfs.media.debat |   7 | 3.417 |  3.444 | 2.444 | 4.250 | 0.597 | 0.226 | 0.552 | 0.667 |
| Controle     |      |          | dfs.media.debat |  11 | 3.404 |  3.444 | 2.667 | 4.000 | 0.398 | 0.120 | 0.268 | 0.222 |
| Experimental |      | Branca   | dfs.media.debat |   2 | 2.833 |  2.833 | 2.222 | 3.444 | 0.864 | 0.611 | 7.765 | 0.611 |
| Experimental |      | Indígena | dfs.media.debat |   2 | 3.410 |  3.410 | 3.375 | 3.444 | 0.049 | 0.035 | 0.441 | 0.035 |
| Experimental |      | Parda    | dfs.media.debat |   2 | 2.944 |  2.944 | 2.778 | 3.111 | 0.236 | 0.167 | 2.118 | 0.167 |
| Experimental |      |          | dfs.media.debat |   2 | 3.278 |  3.278 | 2.667 | 3.889 | 0.864 | 0.611 | 7.765 | 0.611 |
| Controle     |      | Branca   | fss.media.debat |   1 | 3.222 |  3.222 | 3.222 | 3.222 |       |       |       | 0.000 |
| Controle     |      | Parda    | fss.media.debat |   7 | 3.603 |  3.556 | 3.111 | 4.333 | 0.430 | 0.162 | 0.397 | 0.444 |
| Controle     |      |          | fss.media.debat |  11 | 3.475 |  3.556 | 3.000 | 4.000 | 0.334 | 0.101 | 0.224 | 0.556 |
| Experimental |      | Branca   | fss.media.debat |   2 | 2.778 |  2.778 | 2.444 | 3.111 | 0.471 | 0.333 | 4.235 | 0.333 |
| Experimental |      | Indígena | fss.media.debat |   2 | 3.944 |  3.944 | 3.444 | 4.444 | 0.707 | 0.500 | 6.353 | 0.500 |
| Experimental |      | Parda    | fss.media.debat |   2 | 2.778 |  2.778 | 2.667 | 2.889 | 0.157 | 0.111 | 1.412 | 0.111 |
| Experimental |      |          | fss.media.debat |   2 | 3.778 |  3.778 | 3.556 | 4.000 | 0.314 | 0.222 | 2.824 | 0.222 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var             |   n |  skewness |  kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:----------------|----:|----------:|----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| fss.media.debat |  27 | 0.1744276 | -0.987846 | YES      | 0.9724021 | Shapiro-Wilk | 0.6662124 | ns       | YES       |
| fss.media.debat |  14 | 0.1291378 | -1.121017 | YES      | 0.9431953 | Shapiro-Wilk | 0.4607902 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var             | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  27 |       3 |      23 | 0.1968609 | 0.8974496 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  27 |       3 |      19 | 2.8180000 | 0.0670000 | ns       |
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  14 |       4 |       9 | 1.0437270 | 0.4366299 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  14 |       3 |       5 | 0.9690000 | 0.4760000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect          | DFn | DFd |   SSn |   SSd |     F |     p |   ges | p\<.05 |
|:----|:----------------|----:|----:|------:|------:|------:|------:|------:|:-------|
| 1   | dfs.media.debat |   1 |  24 | 1.041 | 4.558 | 5.479 | 0.028 | 0.186 | \*     |
| 2   | grupo           |   1 |  24 | 0.015 | 4.558 | 0.079 | 0.781 | 0.003 |        |
| 4   | Sexo            |   1 |  24 | 0.103 | 4.470 | 0.555 | 0.463 | 0.023 |        |
| 6   | Cor.Raca        |   2 |  10 | 1.120 | 2.331 | 2.402 | 0.141 | 0.325 |        |

## ANCOVA tests for two factors

|     | Effect          | DFn | DFd |   SSn |   SSd |     F |     p |   ges | p\<.05 |
|:----|:----------------|----:|----:|------:|------:|------:|------:|------:|:-------|
| 1   | dfs.media.debat |   1 |  22 | 1.277 | 3.841 | 7.314 | 0.013 | 0.250 | \*     |
| 4   | grupo:Sexo      |   1 |  22 | 0.604 | 3.841 | 3.462 | 0.076 | 0.136 |        |
| 8   | grupo:Cor.Raca  |   1 |   8 | 0.150 | 1.645 | 0.730 | 0.418 | 0.084 |        |

## Pairwise comparisons for one factor: **grupo**

| var             | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     |  19 |   3.446 |    0.111 |     3.509 |      0.083 |   3.469 |    0.101 |
| fss.media.debat | Experimental |   8 |   3.116 |    0.189 |     3.319 |      0.240 |   3.415 |    0.159 |

| .y.             | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat | Controle | Experimental |    0.054 |   -0.343 |     0.452 | 0.193 |     0.281 | 0.781 | 0.781 | ns           |
| dfs.media.debat | Controle | Experimental |    0.330 |   -0.102 |     0.761 | 0.210 |     1.572 | 0.129 | 0.129 | ns           |

| .y.        | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | pre    | pos    |   -0.063 |   -0.379 |     0.254 | 0.158 |    -0.399 | 0.692 | 0.692 | ns           |
| flow.debat | Experimental | pre    | pos    |   -0.203 |   -0.691 |     0.284 | 0.243 |    -0.837 | 0.407 | 0.407 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var             | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | F    |   6 |   3.685 |    0.105 |     3.556 |      0.192 |   3.438 |    0.167 |
| fss.media.debat | Controle     | M    |  13 |   3.335 |    0.147 |     3.487 |      0.089 |   3.512 |    0.109 |
| fss.media.debat | Experimental | M    |   5 |   3.208 |    0.276 |     3.133 |      0.278 |   3.210 |    0.177 |

|     | .y.             | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | fss.media.debat |          | M    | Controle | Experimental |    0.302 |   -0.128 |     0.733 | 0.206 |     1.465 | 0.159 | 0.159 | ns           |
| 4   | dfs.media.debat |          | M    | Controle | Experimental |    0.127 |   -0.418 |     0.673 | 0.262 |     0.485 | 0.633 | 0.633 | ns           |
| 5   | fss.media.debat | Controle |      | F        | M            |   -0.073 |   -0.494 |     0.347 | 0.202 |    -0.364 | 0.719 | 0.719 | ns           |
| 7   | dfs.media.debat | Controle |      | F        | M            |    0.350 |   -0.162 |     0.861 | 0.246 |     1.421 | 0.170 | 0.170 | ns           |

| .y.        | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | F    | pre    | pos    |    0.130 |   -0.413 |     0.673 | 0.269 |     0.482 | 0.632 | 0.632 | ns           |
| flow.debat | Controle     | M    | pre    | pos    |   -0.152 |   -0.521 |     0.217 | 0.183 |    -0.830 | 0.411 | 0.411 | ns           |
| flow.debat | Experimental | M    | pre    | pos    |    0.075 |   -0.520 |     0.670 | 0.295 |     0.255 | 0.800 | 0.800 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
