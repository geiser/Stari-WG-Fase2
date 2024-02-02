ANCOVA in flow (prod. textual) (flow (prod. textual))
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
  flow (prod. textual) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (prod. textual) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |  mean | median |   min |   max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|------:|-------:|------:|------:|------:|------:|------:|------:|
| Controle     | F    |        |          | dfs.media.text |   6 | 3.593 |  3.556 | 3.222 | 4.000 | 0.376 | 0.154 | 0.395 | 0.694 |
| Controle     | M    |        |          | dfs.media.text |  13 | 3.471 |  3.556 | 2.444 | 4.222 | 0.517 | 0.143 | 0.312 | 0.556 |
| Experimental | F    |        |          | dfs.media.text |   4 | 3.167 |  3.167 | 2.667 | 3.667 | 0.430 | 0.215 | 0.685 | 0.500 |
| Experimental | M    |        |          | dfs.media.text |   5 | 3.400 |  3.333 | 3.222 | 3.556 | 0.149 | 0.067 | 0.185 | 0.222 |
| Controle     | F    |        |          | fss.media.text |   6 | 3.648 |  3.778 | 2.889 | 4.222 | 0.518 | 0.212 | 0.544 | 0.694 |
| Controle     | M    |        |          | fss.media.text |  13 | 3.427 |  3.556 | 2.556 | 4.222 | 0.535 | 0.148 | 0.323 | 0.889 |
| Experimental | F    |        |          | fss.media.text |   4 | 3.278 |  3.278 | 2.333 | 4.222 | 0.834 | 0.417 | 1.327 | 1.056 |
| Experimental | M    |        |          | fss.media.text |   5 | 3.244 |  3.222 | 2.667 | 4.000 | 0.518 | 0.231 | 0.643 | 0.556 |
| Controle     |      | Rural  |          | dfs.media.text |   8 | 3.405 |  3.333 | 2.444 | 4.222 | 0.658 | 0.233 | 0.550 | 1.087 |
| Controle     |      |        |          | dfs.media.text |  11 | 3.586 |  3.556 | 3.222 | 4.000 | 0.281 | 0.085 | 0.189 | 0.444 |
| Experimental |      | Rural  |          | dfs.media.text |   5 | 3.467 |  3.556 | 3.222 | 3.667 | 0.183 | 0.082 | 0.227 | 0.222 |
| Experimental |      | Urbana |          | dfs.media.text |   1 | 3.333 |  3.333 | 3.333 | 3.333 |       |       |       | 0.000 |
| Experimental |      |        |          | dfs.media.text |   3 | 3.000 |  3.000 | 2.667 | 3.333 | 0.333 | 0.192 | 0.828 | 0.333 |
| Controle     |      | Rural  |          | fss.media.text |   8 | 3.361 |  3.333 | 2.556 | 4.222 | 0.563 | 0.199 | 0.470 | 0.750 |
| Controle     |      |        |          | fss.media.text |  11 | 3.596 |  3.667 | 2.667 | 4.222 | 0.500 | 0.151 | 0.336 | 0.667 |
| Experimental |      | Rural  |          | fss.media.text |   5 | 3.289 |  3.222 | 2.667 | 4.222 | 0.601 | 0.269 | 0.747 | 0.556 |
| Experimental |      | Urbana |          | fss.media.text |   1 | 2.889 |  2.889 | 2.889 | 2.889 |       |       |       | 0.000 |
| Experimental |      |        |          | fss.media.text |   3 | 3.333 |  3.667 | 2.333 | 4.000 | 0.882 | 0.509 | 2.191 | 0.833 |
| Controle     |      |        | Branca   | dfs.media.text |   1 | 4.222 |  4.222 | 4.222 | 4.222 |       |       |       | 0.000 |
| Controle     |      |        | Parda    | dfs.media.text |   7 | 3.478 |  3.556 | 2.444 | 4.125 | 0.603 | 0.228 | 0.558 | 0.778 |
| Controle     |      |        |          | dfs.media.text |  11 | 3.465 |  3.444 | 2.778 | 4.000 | 0.354 | 0.107 | 0.238 | 0.556 |
| Experimental |      |        | Branca   | dfs.media.text |   2 | 3.444 |  3.444 | 3.333 | 3.556 | 0.157 | 0.111 | 1.412 | 0.111 |
| Experimental |      |        | Indígena | dfs.media.text |   2 | 3.611 |  3.611 | 3.556 | 3.667 | 0.079 | 0.056 | 0.706 | 0.056 |
| Experimental |      |        | Parda    | dfs.media.text |   3 | 3.185 |  3.222 | 3.000 | 3.333 | 0.170 | 0.098 | 0.422 | 0.167 |
| Experimental |      |        |          | dfs.media.text |   2 | 3.000 |  3.000 | 2.667 | 3.333 | 0.471 | 0.333 | 4.235 | 0.333 |
| Controle     |      |        | Branca   | fss.media.text |   1 | 3.889 |  3.889 | 3.889 | 3.889 |       |       |       | 0.000 |
| Controle     |      |        | Parda    | fss.media.text |   7 | 3.667 |  3.667 | 3.000 | 4.222 | 0.489 | 0.185 | 0.452 | 0.722 |
| Controle     |      |        |          | fss.media.text |  11 | 3.354 |  3.444 | 2.556 | 4.000 | 0.544 | 0.164 | 0.365 | 0.944 |
| Experimental |      |        | Branca   | fss.media.text |   2 | 3.056 |  3.056 | 2.889 | 3.222 | 0.236 | 0.167 | 2.118 | 0.167 |
| Experimental |      |        | Indígena | fss.media.text |   2 | 3.833 |  3.833 | 3.444 | 4.222 | 0.550 | 0.389 | 4.941 | 0.389 |
| Experimental |      |        | Parda    | fss.media.text |   3 | 2.630 |  2.667 | 2.333 | 2.889 | 0.280 | 0.161 | 0.695 | 0.278 |
| Experimental |      |        |          | fss.media.text |   2 | 3.833 |  3.833 | 3.667 | 4.000 | 0.236 | 0.167 | 2.118 | 0.167 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| fss.media.text |  28 |  0.0738528 | -1.2869112 | YES      | 0.9520707 | Shapiro-Wilk | 0.2232565 | ns       | YES       |
| fss.media.text |  14 |  0.8526345 | -0.6633331 | NO       | 0.8657599 | Shapiro-Wilk | 0.0366016 | \*       | NO        |
| fss.media.text |  15 | -0.0421079 | -1.4541500 | YES      | 0.9479255 | Shapiro-Wilk | 0.4923910 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  28 |       3 |      24 | 1.3542040 | 0.2805230 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  28 |       3 |      20 | 0.0610000 | 0.9800000 | ns       |
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Zona`     |  14 |       2 |      11 | 0.4126825 | 0.6717067 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  14 |       1 |       9 | 4.1840000 | 0.0710000 | ns       |
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  15 |       4 |      10 | 2.6958942 | 0.0926845 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  15 |       3 |       6 | 0.6720000 | 0.6000000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |   SSn |   SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|------:|------:|------:|------:|:-------|
| 1   | dfs.media.text |   1 |  25 | 1.271 | 6.861 | 4.632 | 0.041 | 0.156 | \*     |
| 2   | grupo          |   1 |  25 | 0.094 | 6.861 | 0.341 | 0.564 | 0.013 |        |
| 4   | Sexo           |   1 |  25 | 0.125 | 6.830 | 0.459 | 0.504 | 0.018 |        |
| 6   | Zona           |   1 |  11 | 0.140 | 2.567 | 0.598 | 0.456 | 0.052 |        |
| 8   | Cor.Raca       |   2 |  11 | 0.382 | 3.272 | 0.641 | 0.545 | 0.104 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |   SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|------:|------:|------:|------:|:-------|
| 1   | dfs.media.text |   1 |  23 | 1.224 | 6.706 | 4.198 | 0.052 | 0.154 |        |
| 4   | grupo:Sexo     |   1 |  23 | 0.000 | 6.706 | 0.000 | 0.994 | 0.000 |        |
| 8   | grupo:Zona     |   0 |  10 |       | 2.530 |       |       |       |        |
| 12  | grupo:Cor.Raca |   1 |   9 | 0.077 | 1.569 | 0.444 | 0.522 | 0.047 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     |  19 |   3.510 |    0.108 |     3.497 |      0.121 |   3.462 |    0.121 |
| fss.media.text | Experimental |   9 |   3.296 |    0.103 |     3.259 |      0.210 |   3.334 |    0.178 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.text | Controle | Experimental |    0.127 |   -0.322 |     0.577 | 0.218 |     0.584 | 0.564 | 0.564 | ns           |
| dfs.media.text | Controle | Experimental |    0.213 |   -0.142 |     0.568 | 0.173 |     1.234 | 0.228 | 0.228 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | pre    | pos    |    0.012 |   -0.312 |     0.336 | 0.161 |     0.077 | 0.939 | 0.939 | ns           |
| flow.text | Experimental | pre    | pos    |    0.037 |   -0.434 |     0.508 | 0.235 |     0.158 | 0.875 | 0.875 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     | F    |   6 |   3.593 |    0.154 |     3.648 |      0.212 |   3.595 |    0.203 |
| fss.media.text | Controle     | M    |  13 |   3.471 |    0.143 |     3.427 |      0.148 |   3.435 |    0.137 |
| fss.media.text | Experimental | M    |   5 |   3.400 |    0.067 |     3.244 |      0.231 |   3.288 |    0.221 |

|     | .y.            | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | fss.media.text |          | M    | Controle | Experimental |    0.148 |   -0.394 |     0.689 | 0.260 |     0.568 | 0.577 | 0.577 | ns           |
| 4   | dfs.media.text |          | M    | Controle | Experimental |    0.071 |   -0.407 |     0.549 | 0.230 |     0.310 | 0.760 | 0.760 | ns           |
| 5   | fss.media.text | Controle |      | F        | M            |    0.160 |   -0.351 |     0.671 | 0.245 |     0.655 | 0.520 | 0.520 | ns           |
| 7   | dfs.media.text | Controle |      | F        | M            |    0.121 |   -0.327 |     0.570 | 0.216 |     0.564 | 0.579 | 0.579 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | F    | pre    | pos    |   -0.056 |   -0.620 |     0.509 | 0.280 |    -0.199 | 0.843 | 0.843 | ns           |
| flow.text | Controle     | M    | pre    | pos    |    0.044 |   -0.339 |     0.427 | 0.190 |     0.231 | 0.819 | 0.819 | ns           |
| flow.text | Experimental | M    | pre    | pos    |    0.156 |   -0.462 |     0.774 | 0.306 |     0.508 | 0.614 | 0.614 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
