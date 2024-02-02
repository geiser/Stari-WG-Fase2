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
| Controle     | F    |        |          | dfs.media.math |  53 | 3.472 |  3.556 | 2.444 | 4.556 | 0.504 | 0.069 | 0.139 | 0.667 |
| Controle     | M    |        |          | dfs.media.math |  65 | 3.474 |  3.556 | 1.444 | 4.667 | 0.621 | 0.077 | 0.154 | 0.667 |
| Experimental | F    |        |          | dfs.media.math |  83 | 3.467 |  3.500 | 2.222 | 4.556 | 0.499 | 0.055 | 0.109 | 0.722 |
| Experimental | M    |        |          | dfs.media.math |  81 | 3.575 |  3.556 | 2.222 | 5.000 | 0.563 | 0.063 | 0.125 | 0.667 |
| Controle     | F    |        |          | fss.media.math |  53 | 3.421 |  3.444 | 1.556 | 4.667 | 0.669 | 0.092 | 0.184 | 0.667 |
| Controle     | M    |        |          | fss.media.math |  65 | 3.612 |  3.667 | 1.333 | 5.000 | 0.685 | 0.085 | 0.170 | 0.778 |
| Experimental | F    |        |          | fss.media.math |  83 | 3.529 |  3.444 | 2.222 | 5.000 | 0.575 | 0.063 | 0.126 | 0.833 |
| Experimental | M    |        |          | fss.media.math |  81 | 3.546 |  3.556 | 2.111 | 5.000 | 0.571 | 0.063 | 0.126 | 0.667 |
| Controle     |      | Rural  |          | dfs.media.math |  39 | 3.786 |  3.778 | 2.667 | 4.667 | 0.477 | 0.076 | 0.155 | 0.611 |
| Controle     |      | Urbana |          | dfs.media.math |  25 | 3.418 |  3.333 | 2.333 | 4.444 | 0.557 | 0.111 | 0.230 | 0.889 |
| Controle     |      |        |          | dfs.media.math |  54 | 3.273 |  3.389 | 1.444 | 4.444 | 0.546 | 0.074 | 0.149 | 0.750 |
| Experimental |      | Rural  |          | dfs.media.math |  53 | 3.354 |  3.333 | 2.333 | 4.444 | 0.504 | 0.069 | 0.139 | 0.778 |
| Experimental |      | Urbana |          | dfs.media.math |  40 | 3.665 |  3.667 | 2.222 | 4.667 | 0.535 | 0.085 | 0.171 | 0.583 |
| Experimental |      |        |          | dfs.media.math |  71 | 3.562 |  3.556 | 2.222 | 5.000 | 0.528 | 0.063 | 0.125 | 0.556 |
| Controle     |      | Rural  |          | fss.media.math |  39 | 3.742 |  3.667 | 2.333 | 5.000 | 0.625 | 0.100 | 0.203 | 0.889 |
| Controle     |      | Urbana |          | fss.media.math |  25 | 3.529 |  3.667 | 2.000 | 5.000 | 0.782 | 0.156 | 0.323 | 0.778 |
| Controle     |      |        |          | fss.media.math |  54 | 3.369 |  3.389 | 1.333 | 4.778 | 0.639 | 0.087 | 0.175 | 0.778 |
| Experimental |      | Rural  |          | fss.media.math |  53 | 3.471 |  3.444 | 2.222 | 4.444 | 0.537 | 0.074 | 0.148 | 0.889 |
| Experimental |      | Urbana |          | fss.media.math |  40 | 3.527 |  3.556 | 2.111 | 4.778 | 0.640 | 0.101 | 0.205 | 0.719 |
| Experimental |      |        |          | fss.media.math |  71 | 3.592 |  3.556 | 2.222 | 5.000 | 0.558 | 0.066 | 0.132 | 0.778 |
| Controle     |      |        | Branca   | dfs.media.math |   7 | 4.127 |  4.111 | 3.444 | 4.667 | 0.403 | 0.152 | 0.373 | 0.444 |
| Controle     |      |        | Indígena | dfs.media.math |   3 | 3.370 |  3.444 | 3.222 | 3.444 | 0.128 | 0.074 | 0.319 | 0.111 |
| Controle     |      |        | Parda    | dfs.media.math |  45 | 3.345 |  3.500 | 1.444 | 4.556 | 0.636 | 0.095 | 0.191 | 0.889 |
| Controle     |      |        |          | dfs.media.math |  63 | 3.497 |  3.556 | 2.444 | 4.667 | 0.497 | 0.063 | 0.125 | 0.667 |
| Experimental |      |        | Branca   | dfs.media.math |  13 | 3.607 |  3.556 | 2.889 | 4.444 | 0.481 | 0.134 | 0.291 | 0.778 |
| Experimental |      |        | Indígena | dfs.media.math |   3 | 3.556 |  3.556 | 3.333 | 3.778 | 0.222 | 0.128 | 0.552 | 0.222 |
| Experimental |      |        | Parda    | dfs.media.math |  44 | 3.447 |  3.444 | 2.222 | 4.333 | 0.519 | 0.078 | 0.158 | 0.583 |
| Experimental |      |        |          | dfs.media.math | 104 | 3.539 |  3.556 | 2.222 | 5.000 | 0.552 | 0.054 | 0.107 | 0.667 |
| Controle     |      |        | Branca   | fss.media.math |   7 | 4.111 |  4.111 | 3.000 | 5.000 | 0.745 | 0.282 | 0.689 | 1.111 |
| Controle     |      |        | Indígena | fss.media.math |   3 | 3.481 |  3.222 | 3.222 | 4.000 | 0.449 | 0.259 | 1.116 | 0.389 |
| Controle     |      |        | Parda    | fss.media.math |  45 | 3.458 |  3.444 | 2.000 | 5.000 | 0.622 | 0.093 | 0.187 | 0.667 |
| Controle     |      |        |          | fss.media.math |  63 | 3.511 |  3.556 | 1.333 | 5.000 | 0.707 | 0.089 | 0.178 | 0.833 |
| Experimental |      |        | Branca   | fss.media.math |  13 | 3.863 |  3.889 | 2.889 | 4.444 | 0.467 | 0.130 | 0.282 | 0.556 |
| Experimental |      |        | Indígena | fss.media.math |   3 | 3.185 |  3.333 | 2.778 | 3.444 | 0.357 | 0.206 | 0.887 | 0.333 |
| Experimental |      |        | Parda    | fss.media.math |  44 | 3.423 |  3.437 | 2.222 | 4.667 | 0.547 | 0.083 | 0.166 | 0.878 |
| Experimental |      |        |          | fss.media.math | 104 | 3.555 |  3.556 | 2.111 | 5.000 | 0.584 | 0.057 | 0.113 | 0.889 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| fss.media.math | 282 | -0.3238130 |  0.5425910 | YES      | 8.2785356 | D’Agostino | 0.0159345 | ns       | \-        |
| fss.media.math | 157 | -0.1142169 | -0.3077559 | YES      | 0.7052853 | D’Agostino | 0.7028283 | ns       | QQ        |
| fss.media.math | 115 | -0.1082031 |  0.0956600 | YES      | 0.6596194 | D’Agostino | 0.7190606 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 282 |       3 |     278 | 0.1387309 | 0.9367865 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 282 |       3 |     274 | 0.5990000 | 0.6160000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Zona`     | 157 |       3 |     153 | 1.6069388 | 0.1900892 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 157 |       3 |     149 | 0.1650000 | 0.9200000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` | 115 |       5 |     109 | 0.9979705 | 0.4225619 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` | 115 |       5 |     103 | 0.5800000 | 0.7150000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.math |   1 | 279 | 15.916 | 91.623 | 48.466 | \<0.001 | 0.148 | \*     |
| 2   | grupo          |   1 | 279 |  0.006 | 91.623 |  0.018 | 0.894   | 0.000 |        |
| 4   | Sexo           |   1 | 279 |  0.272 | 91.358 |  0.829 | 0.363   | 0.003 |        |
| 6   | Zona           |   1 | 154 |  0.212 | 50.163 |  0.652 | 0.421   | 0.004 |        |
| 8   | Cor.Raca       |   2 | 111 |  2.188 | 31.909 |  3.805 | 0.025   | 0.064 | \*     |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.math |   1 | 277 | 15.929 | 90.529 | 48.740 | \<0.001 | 0.150 | \*     |
| 4   | grupo:Sexo     |   1 | 277 |  0.826 | 90.529 |  2.529 | 0.113   | 0.009 |        |
| 8   | grupo:Zona     |   1 | 152 |  0.050 | 49.855 |  0.153 | 0.696   | 0.001 |        |
| 12  | grupo:Cor.Raca |   2 | 108 |  0.128 | 31.573 |  0.219 | 0.804   | 0.004 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | 118 |   3.473 |    0.052 |     3.526 |      0.063 |   3.538 |    0.053 |
| fss.media.math | Experimental | 164 |   3.520 |    0.042 |     3.537 |      0.045 |   3.529 |    0.045 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math | Controle | Experimental |    0.009 |   -0.127 |     0.146 | 0.069 |     0.133 | 0.894 | 0.894 | ns           |
| dfs.media.math | Controle | Experimental |   -0.047 |   -0.177 |     0.083 | 0.066 |    -0.708 | 0.480 | 0.480 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | pre    | pos    |   -0.053 |   -0.203 |     0.097 | 0.076 |    -0.695 | 0.487 | 0.487 | ns           |
| flow.math | Experimental | pre    | pos    |   -0.017 |   -0.144 |     0.110 | 0.065 |    -0.267 | 0.789 | 0.789 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | F    |  53 |   3.472 |    0.069 |     3.421 |      0.092 |   3.433 |    0.079 |
| fss.media.math | Controle     | M    |  65 |   3.474 |    0.077 |     3.612 |      0.085 |   3.623 |    0.071 |
| fss.media.math | Experimental | F    |  83 |   3.467 |    0.055 |     3.529 |      0.063 |   3.543 |    0.063 |
| fss.media.math | Experimental | M    |  81 |   3.575 |    0.063 |     3.546 |      0.063 |   3.513 |    0.064 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math |              | F    | Controle | Experimental |   -0.110 |   -0.308 |     0.087 | 0.101 |    -1.098 | 0.273 | 0.273 | ns           |
| fss.media.math |              | M    | Controle | Experimental |    0.110 |   -0.078 |     0.298 | 0.095 |     1.153 | 0.250 | 0.250 | ns           |
| dfs.media.math |              | F    | Controle | Experimental |    0.005 |   -0.185 |     0.195 | 0.097 |     0.054 | 0.957 | 0.957 | ns           |
| dfs.media.math |              | M    | Controle | Experimental |   -0.100 |   -0.280 |     0.079 | 0.091 |    -1.099 | 0.273 | 0.273 | ns           |
| fss.media.math | Controle     |      | F        | M            |   -0.190 |   -0.399 |     0.018 | 0.106 |    -1.799 | 0.073 | 0.073 | ns           |
| fss.media.math | Experimental |      | F        | M            |    0.030 |   -0.146 |     0.206 | 0.090 |     0.336 | 0.737 | 0.737 | ns           |
| dfs.media.math | Controle     |      | F        | M            |   -0.002 |   -0.202 |     0.198 | 0.102 |    -0.024 | 0.981 | 0.981 | ns           |
| dfs.media.math | Experimental |      | F        | M            |   -0.108 |   -0.277 |     0.061 | 0.086 |    -1.261 | 0.209 | 0.209 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | F    | pre    | pos    |    0.051 |   -0.172 |     0.274 | 0.114 |     0.450 | 0.653 | 0.653 | ns           |
| flow.math | Controle     | M    | pre    | pos    |   -0.138 |   -0.339 |     0.064 | 0.103 |    -1.343 | 0.180 | 0.180 | ns           |
| flow.math | Experimental | F    | pre    | pos    |   -0.062 |   -0.241 |     0.116 | 0.091 |    -0.685 | 0.493 | 0.493 | ns           |
| flow.math | Experimental | M    | pre    | pos    |    0.029 |   -0.152 |     0.209 | 0.092 |     0.313 | 0.754 | 0.754 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | Rural  |  39 |   3.786 |    0.076 |     3.742 |      0.100 |   3.622 |    0.094 |
| fss.media.math | Controle     | Urbana |  25 |   3.418 |    0.111 |     3.529 |      0.156 |   3.597 |    0.115 |
| fss.media.math | Experimental | Rural  |  53 |   3.354 |    0.069 |     3.471 |      0.074 |   3.572 |    0.081 |
| fss.media.math | Experimental | Urbana |  40 |   3.665 |    0.085 |     3.527 |      0.101 |   3.469 |    0.091 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| fss.media.math |              | Rural  | Controle | Experimental |    0.050 |   -0.201 |     0.301 | 0.127 |     0.394 | 0.694   | 0.694   | ns           |
| fss.media.math |              | Urbana | Controle | Experimental |    0.128 |   -0.164 |     0.420 | 0.148 |     0.866 | 0.388   | 0.388   | ns           |
| dfs.media.math |              | Rural  | Controle | Experimental |    0.431 |    0.217 |     0.646 | 0.108 |     3.976 | \<0.001 | \<0.001 | \*\*\*       |
| dfs.media.math |              | Urbana | Controle | Experimental |   -0.247 |   -0.506 |     0.012 | 0.131 |    -1.885 | 0.061   | 0.061   | ns           |
| fss.media.math | Controle     |        | Rural    | Urbana       |    0.025 |   -0.272 |     0.322 | 0.150 |     0.164 | 0.87    | 0.87    | ns           |
| fss.media.math | Experimental |        | Rural    | Urbana       |    0.103 |   -0.141 |     0.346 | 0.123 |     0.834 | 0.406   | 0.406   | ns           |
| dfs.media.math | Controle     |        | Rural    | Urbana       |    0.368 |    0.108 |     0.628 | 0.132 |     2.792 | 0.006   | 0.006   | \*\*         |
| dfs.media.math | Experimental |        | Rural    | Urbana       |   -0.311 |   -0.523 |    -0.098 | 0.108 |    -2.884 | 0.004   | 0.004   | \*\*         |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | Rural  | pre    | pos    |    0.044 |   -0.212 |     0.300 | 0.130 |     0.337 | 0.736 | 0.736 | ns           |
| flow.math | Controle     | Urbana | pre    | pos    |   -0.111 |   -0.431 |     0.208 | 0.162 |    -0.684 | 0.494 | 0.494 | ns           |
| flow.math | Experimental | Rural  | pre    | pos    |   -0.117 |   -0.336 |     0.103 | 0.112 |    -1.048 | 0.296 | 0.296 | ns           |
| flow.math | Experimental | Urbana | pre    | pos    |    0.138 |   -0.115 |     0.390 | 0.128 |     1.071 | 0.285 | 0.285 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | Branca   |   7 |   4.127 |    0.152 |     4.111 |      0.282 |   3.859 |    0.216 |
| fss.media.math | Controle     | Parda    |  45 |   3.345 |    0.095 |     3.458 |      0.093 |   3.505 |    0.082 |
| fss.media.math | Experimental | Branca   |  13 |   3.607 |    0.134 |     3.863 |      0.130 |   3.810 |    0.152 |
| fss.media.math | Experimental | Parda    |  44 |   3.447 |    0.078 |     3.423 |      0.083 |   3.431 |    0.082 |

| .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| fss.media.math |              | Branca   | Controle | Experimental |    0.049 |   -0.468 |     0.566 | 0.261 |     0.188 | 0.851   | 0.851   | ns           |
| fss.media.math |              | Parda    | Controle | Experimental |    0.074 |   -0.156 |     0.305 | 0.116 |     0.641 | 0.523   | 0.523   | ns           |
| dfs.media.math |              | Branca   | Controle | Experimental |    0.520 |   -0.002 |     1.042 | 0.263 |     1.975 | 0.051   | 0.051   | ns           |
| dfs.media.math |              | Parda    | Controle | Experimental |   -0.102 |   -0.338 |     0.134 | 0.119 |    -0.858 | 0.393   | 0.393   | ns           |
| fss.media.math | Controle     |          | Branca   | Parda        |    0.354 |   -0.110 |     0.818 | 0.234 |     1.512 | 0.134   | 0.134   | ns           |
| fss.media.math | Experimental |          | Branca   | Parda        |    0.379 |    0.036 |     0.723 | 0.173 |     2.191 | 0.031   | 0.031   | \*           |
| dfs.media.math | Controle     |          | Branca   | Parda        |    0.782 |    0.330 |     1.235 | 0.228 |     3.427 | \<0.001 | \<0.001 | \*\*\*       |
| dfs.media.math | Experimental |          | Branca   | Parda        |    0.160 |   -0.192 |     0.511 | 0.177 |     0.902 | 0.369   | 0.369   | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | Branca   | pre    | pos    |    0.016 |   -0.588 |     0.620 | 0.306 |     0.052 | 0.959 | 0.959 | ns           |
| flow.math | Controle     | Parda    | pre    | pos    |   -0.114 |   -0.352 |     0.125 | 0.121 |    -0.940 | 0.348 | 0.348 | ns           |
| flow.math | Experimental | Branca   | pre    | pos    |   -0.256 |   -0.700 |     0.187 | 0.225 |    -1.140 | 0.255 | 0.255 | ns           |
| flow.math | Experimental | Parda    | pre    | pos    |    0.024 |   -0.217 |     0.265 | 0.122 |     0.197 | 0.844 | 0.844 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-58-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-9-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
