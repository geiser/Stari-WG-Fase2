ANCOVA in flow (ativ. leitura) (flow (ativ. leitura))
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
  flow (ativ. leitura) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (ativ. leitura) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |  mean | median |   min |   max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|------:|-------:|------:|------:|------:|------:|------:|------:|
| Controle     | F    |        |          | dfs.media.read |   7 | 3.032 |  3.000 | 2.556 | 3.444 | 0.278 | 0.105 | 0.257 | 0.222 |
| Controle     | M    |        |          | dfs.media.read |  10 | 3.433 |  3.444 | 2.778 | 4.333 | 0.476 | 0.150 | 0.340 | 0.556 |
| Experimental | F    |        |          | dfs.media.read |   3 | 2.370 |  2.444 | 2.111 | 2.556 | 0.231 | 0.134 | 0.575 | 0.222 |
| Experimental | M    |        |          | dfs.media.read |   8 | 3.403 |  3.444 | 2.333 | 4.000 | 0.518 | 0.183 | 0.433 | 0.500 |
| Controle     | F    |        |          | fss.media.read |   7 | 3.385 |  3.444 | 2.875 | 4.000 | 0.370 | 0.140 | 0.342 | 0.312 |
| Controle     | M    |        |          | fss.media.read |  10 | 3.194 |  3.167 | 2.500 | 4.000 | 0.544 | 0.172 | 0.389 | 0.750 |
| Experimental | F    |        |          | fss.media.read |   3 | 2.963 |  2.889 | 2.778 | 3.222 | 0.231 | 0.134 | 0.575 | 0.222 |
| Experimental | M    |        |          | fss.media.read |   8 | 3.319 |  3.167 | 2.778 | 4.222 | 0.502 | 0.177 | 0.420 | 0.639 |
| Controle     |      | Rural  |          | dfs.media.read |   6 | 3.407 |  3.278 | 2.778 | 4.333 | 0.623 | 0.254 | 0.654 | 0.889 |
| Controle     |      | Urbana |          | dfs.media.read |   5 | 3.178 |  3.333 | 2.556 | 3.556 | 0.405 | 0.181 | 0.503 | 0.444 |
| Controle     |      |        |          | dfs.media.read |   6 | 3.204 |  3.167 | 2.889 | 3.667 | 0.276 | 0.113 | 0.290 | 0.278 |
| Experimental |      | Rural  |          | dfs.media.read |   6 | 3.093 |  3.278 | 2.333 | 3.778 | 0.585 | 0.239 | 0.614 | 0.833 |
| Experimental |      | Urbana |          | dfs.media.read |   2 | 2.333 |  2.333 | 2.111 | 2.556 | 0.314 | 0.222 | 2.824 | 0.222 |
| Experimental |      |        |          | dfs.media.read |   3 | 3.704 |  3.778 | 3.333 | 4.000 | 0.339 | 0.196 | 0.843 | 0.333 |
| Controle     |      | Rural  |          | fss.media.read |   6 | 3.322 |  3.354 | 2.556 | 4.000 | 0.479 | 0.196 | 0.503 | 0.344 |
| Controle     |      | Urbana |          | fss.media.read |   5 | 2.953 |  3.000 | 2.667 | 3.222 | 0.203 | 0.091 | 0.252 | 0.125 |
| Controle     |      |        |          | fss.media.read |   6 | 3.491 |  3.500 | 2.500 | 4.000 | 0.549 | 0.224 | 0.576 | 0.444 |
| Experimental |      | Rural  |          | fss.media.read |   6 | 3.259 |  3.278 | 2.778 | 3.778 | 0.383 | 0.156 | 0.402 | 0.528 |
| Experimental |      | Urbana |          | fss.media.read |   2 | 2.833 |  2.833 | 2.778 | 2.889 | 0.079 | 0.056 | 0.706 | 0.056 |
| Experimental |      |        |          | fss.media.read |   3 | 3.407 |  3.000 | 3.000 | 4.222 | 0.706 | 0.407 | 1.753 | 0.611 |
| Controle     |      |        | Parda    | dfs.media.read |   9 | 3.321 |  3.222 | 2.556 | 4.333 | 0.581 | 0.194 | 0.447 | 0.778 |
| Controle     |      |        |          | dfs.media.read |   8 | 3.208 |  3.222 | 2.889 | 3.556 | 0.241 | 0.085 | 0.201 | 0.361 |
| Experimental |      |        | Branca   | dfs.media.read |   1 | 3.778 |  3.778 | 3.778 | 3.778 |       |       |       | 0.000 |
| Experimental |      |        | Indígena | dfs.media.read |   1 | 4.000 |  4.000 | 4.000 | 4.000 |       |       |       | 0.000 |
| Experimental |      |        | Parda    | dfs.media.read |   3 | 3.000 |  3.111 | 2.444 | 3.444 | 0.509 | 0.294 | 1.265 | 0.500 |
| Experimental |      |        |          | dfs.media.read |   6 | 2.926 |  2.944 | 2.111 | 3.778 | 0.680 | 0.278 | 0.714 | 1.028 |
| Controle     |      |        | Parda    | fss.media.read |   9 | 3.381 |  3.444 | 2.556 | 4.000 | 0.480 | 0.160 | 0.369 | 0.444 |
| Controle     |      |        |          | fss.media.read |   8 | 3.151 |  3.111 | 2.500 | 4.000 | 0.473 | 0.167 | 0.395 | 0.476 |
| Experimental |      |        | Branca   | fss.media.read |   1 | 3.333 |  3.333 | 3.333 | 3.333 |       |       |       | 0.000 |
| Experimental |      |        | Indígena | fss.media.read |   1 | 4.222 |  4.222 | 4.222 | 4.222 |       |       |       | 0.000 |
| Experimental |      |        | Parda    | fss.media.read |   3 | 3.222 |  3.222 | 2.889 | 3.556 | 0.333 | 0.192 | 0.828 | 0.333 |
| Experimental |      |        |          | fss.media.read |   6 | 3.037 |  2.944 | 2.778 | 3.778 | 0.376 | 0.154 | 0.395 | 0.194 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| fss.media.read |  28 |  0.3497296 | -0.9669095 | YES      | 0.9527703 | Shapiro-Wilk | 0.2324001 | ns       | YES       |
| fss.media.read |  19 | -0.1458089 | -0.4336277 | YES      | 0.9632572 | Shapiro-Wilk | 0.6379739 | ns       | YES       |
| fss.media.read |  14 | -0.2670950 | -1.3399193 | YES      | 0.9470396 | Shapiro-Wilk | 0.5157589 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  28 |       3 |      24 | 0.8833253 | 0.4637213 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  28 |       3 |      20 | 0.5090000 | 0.6800000 | ns       |
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Zona`     |  19 |       3 |      15 | 1.4798858 | 0.2601355 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  19 |       3 |      11 | 1.1750000 | 0.3640000 | ns       |
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  14 |       3 |      10 | 0.9690409 | 0.4450438 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  14 |       1 |       8 | 0.2840000 | 0.6080000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |   SSn |   SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|------:|------:|------:|------:|:-------|
| 1   | dfs.media.read |   1 |  25 | 0.544 | 5.238 | 2.597 | 0.120 | 0.094 |        |
| 2   | grupo          |   1 |  25 | 0.001 | 5.238 | 0.004 | 0.951 | 0.000 |        |
| 4   | Sexo           |   1 |  25 | 0.254 | 4.985 | 1.274 | 0.270 | 0.048 |        |
| 6   | Zona           |   1 |  16 | 0.447 | 1.983 | 3.611 | 0.076 | 0.184 |        |
| 8   | Cor.Raca       |   2 |  10 | 0.319 | 1.311 | 1.216 | 0.337 | 0.196 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |   SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|------:|------:|------:|------:|:-------|
| 1   | dfs.media.read |   1 |  23 | 0.521 | 4.834 | 2.480 | 0.129 | 0.097 |        |
| 4   | grupo:Sexo     |   1 |  23 | 0.139 | 4.834 | 0.663 | 0.424 | 0.028 |        |
| 8   | grupo:Zona     |   1 |  14 | 0.000 | 1.981 | 0.001 | 0.979 | 0.000 |        |
| 12  | grupo:Cor.Raca |   0 |   9 |       | 1.311 |       |       |       |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     |  17 |   3.268 |    0.108 |     3.273 |      0.116 |   3.257 |    0.111 |
| fss.media.read | Experimental |  11 |   3.121 |    0.198 |     3.222 |      0.140 |   3.246 |    0.139 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.read | Controle | Experimental |    0.011 |   -0.357 |     0.379 | 0.179 |     0.062 | 0.951 | 0.951 | ns           |
| dfs.media.read | Controle | Experimental |    0.147 |   -0.280 |     0.573 | 0.207 |     0.708 | 0.485 | 0.485 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | pre    | pos    |   -0.005 |   -0.352 |     0.343 | 0.173 |    -0.028 | 0.978 | 0.978 | ns           |
| flow.read | Experimental | pre    | pos    |   -0.101 |   -0.533 |     0.331 | 0.215 |    -0.469 | 0.641 | 0.641 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | F    |   7 |   3.032 |    0.105 |     3.385 |      0.140 |   3.479 |    0.191 |
| fss.media.read | Controle     | M    |  10 |   3.433 |    0.150 |     3.194 |      0.172 |   3.153 |    0.153 |
| fss.media.read | Experimental | M    |   8 |   3.403 |    0.183 |     3.319 |      0.177 |   3.289 |    0.169 |

|     | .y.            | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | fss.media.read |          | M    | Controle | Experimental |   -0.135 |   -0.605 |     0.334 | 0.226 |    -0.599 | 0.555 | 0.555 | ns           |
| 4   | dfs.media.read |          | M    | Controle | Experimental |    0.031 |   -0.408 |     0.469 | 0.211 |     0.144 | 0.886 | 0.886 | ns           |
| 5   | fss.media.read | Controle |      | F        | M            |    0.326 |   -0.197 |     0.849 | 0.252 |     1.295 | 0.209 | 0.209 | ns           |
| 7   | dfs.media.read | Controle |      | F        | M            |   -0.402 |   -0.857 |     0.054 | 0.220 |    -1.828 | 0.081 | 0.081 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | F    | pre    | pos    |   -0.353 |   -0.857 |     0.151 | 0.250 |    -1.413 | 0.165 | 0.165 | ns           |
| flow.read | Controle     | M    | pre    | pos    |    0.239 |   -0.183 |     0.660 | 0.209 |     1.142 | 0.260 | 0.260 | ns           |
| flow.read | Experimental | M    | pre    | pos    |    0.083 |   -0.388 |     0.555 | 0.234 |     0.356 | 0.723 | 0.723 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | Rural  |   6 |   3.407 |    0.254 |     3.322 |      0.196 |   3.300 |    0.163 |
| fss.media.read | Controle     | Urbana |   5 |   3.178 |    0.181 |     2.953 |      0.091 |   2.959 |    0.175 |
| fss.media.read | Experimental | Rural  |   6 |   3.093 |    0.239 |     3.259 |      0.156 |   3.276 |    0.161 |

|     | .y.            | grupo    | Zona  | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | fss.media.read |          | Rural | Controle | Experimental |    0.023 |   -0.480 |     0.527 | 0.233 |     0.100 | 0.922 | 0.922 | ns           |
| 3   | dfs.media.read |          | Rural | Controle | Experimental |    0.315 |   -0.373 |     1.002 | 0.320 |     0.982 | 0.343 | 0.343 | ns           |
| 5   | fss.media.read | Controle |       | Rural    | Urbana       |    0.340 |   -0.179 |     0.859 | 0.240 |     1.417 | 0.180 | 0.180 | ns           |
| 7   | dfs.media.read | Controle |       | Rural    | Urbana       |    0.230 |   -0.491 |     0.950 | 0.336 |     0.683 | 0.506 | 0.506 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | Rural  | pre    | pos    |    0.086 |   -0.478 |     0.649 | 0.275 |     0.311 | 0.758 | 0.758 | ns           |
| flow.read | Controle     | Urbana | pre    | pos    |    0.225 |   -0.392 |     0.842 | 0.301 |     0.746 | 0.462 | 0.462 | ns           |
| flow.read | Experimental | Rural  | pre    | pos    |   -0.167 |   -0.730 |     0.397 | 0.275 |    -0.606 | 0.550 | 0.550 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**
