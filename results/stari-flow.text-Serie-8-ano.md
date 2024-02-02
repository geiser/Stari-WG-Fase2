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
| Controle     | F    |        |          | dfs.media.text |   6 | 3.389 |  3.222 | 3.111 | 4.222 | 0.432 | 0.176 | 0.453 | 0.306 |
| Controle     | M    |        |          | dfs.media.text |   9 | 3.105 |  3.111 | 1.333 | 4.111 | 0.819 | 0.273 | 0.629 | 0.500 |
| Experimental | F    |        |          | dfs.media.text |   1 | 2.444 |  2.444 | 2.444 | 2.444 |       |       |       | 0.000 |
| Experimental | M    |        |          | dfs.media.text |   8 | 3.514 |  3.444 | 2.778 | 4.333 | 0.504 | 0.178 | 0.421 | 0.417 |
| Controle     | F    |        |          | fss.media.text |   6 | 3.500 |  3.556 | 3.000 | 3.889 | 0.342 | 0.140 | 0.359 | 0.472 |
| Controle     | M    |        |          | fss.media.text |   9 | 3.173 |  3.111 | 2.333 | 4.000 | 0.530 | 0.177 | 0.408 | 0.556 |
| Experimental | F    |        |          | fss.media.text |   1 | 3.000 |  3.000 | 3.000 | 3.000 |       |       |       | 0.000 |
| Experimental | M    |        |          | fss.media.text |   8 | 2.969 |  2.764 | 2.333 | 4.111 | 0.589 | 0.208 | 0.492 | 0.722 |
| Controle     |      | Rural  |          | dfs.media.text |   6 | 3.481 |  3.500 | 2.556 | 4.222 | 0.684 | 0.279 | 0.718 | 1.028 |
| Controle     |      | Urbana |          | dfs.media.text |   3 | 2.593 |  3.000 | 1.333 | 3.444 | 1.113 | 0.643 | 2.765 | 1.056 |
| Controle     |      |        |          | dfs.media.text |   6 | 3.269 |  3.222 | 3.111 | 3.500 | 0.181 | 0.074 | 0.190 | 0.306 |
| Experimental |      | Rural  |          | dfs.media.text |   6 | 3.241 |  3.278 | 2.444 | 4.111 | 0.594 | 0.242 | 0.623 | 0.667 |
| Experimental |      |        |          | dfs.media.text |   3 | 3.704 |  3.444 | 3.333 | 4.333 | 0.548 | 0.316 | 1.362 | 0.500 |
| Controle     |      | Rural  |          | fss.media.text |   6 | 3.241 |  3.278 | 2.556 | 3.667 | 0.394 | 0.161 | 0.413 | 0.361 |
| Controle     |      | Urbana |          | fss.media.text |   3 | 3.000 |  3.000 | 3.000 | 3.000 | 0.000 | 0.000 | 0.000 | 0.000 |
| Controle     |      |        |          | fss.media.text |   6 | 3.519 |  3.722 | 2.333 | 4.000 | 0.611 | 0.250 | 0.641 | 0.361 |
| Experimental |      | Rural  |          | fss.media.text |   6 | 2.889 |  2.889 | 2.333 | 3.444 | 0.416 | 0.170 | 0.436 | 0.556 |
| Experimental |      |        |          | fss.media.text |   3 | 3.139 |  2.750 | 2.556 | 4.111 | 0.848 | 0.489 | 2.105 | 0.778 |
| Controle     |      |        | Parda    | dfs.media.text |   8 | 3.292 |  3.111 | 2.556 | 4.111 | 0.504 | 0.178 | 0.421 | 0.472 |
| Controle     |      |        |          | dfs.media.text |   7 | 3.135 |  3.333 | 1.333 | 4.222 | 0.886 | 0.335 | 0.820 | 0.417 |
| Experimental |      |        | Branca   | dfs.media.text |   1 | 3.444 |  3.444 | 3.444 | 3.444 |       |       |       | 0.000 |
| Experimental |      |        | Indígena | dfs.media.text |   1 | 4.333 |  4.333 | 4.333 | 4.333 |       |       |       | 0.000 |
| Experimental |      |        | Parda    | dfs.media.text |   3 | 3.222 |  3.111 | 2.444 | 4.111 | 0.839 | 0.484 | 2.084 | 0.833 |
| Experimental |      |        |          | dfs.media.text |   4 | 3.278 |  3.389 | 2.778 | 3.556 | 0.345 | 0.173 | 0.550 | 0.278 |
| Controle     |      |        | Parda    | fss.media.text |   8 | 3.458 |  3.611 | 2.556 | 4.000 | 0.454 | 0.161 | 0.380 | 0.417 |
| Controle     |      |        |          | fss.media.text |   7 | 3.127 |  3.000 | 2.333 | 3.889 | 0.478 | 0.181 | 0.442 | 0.333 |
| Experimental |      |        | Branca   | fss.media.text |   1 | 3.222 |  3.222 | 3.222 | 3.222 |       |       |       | 0.000 |
| Experimental |      |        | Indígena | fss.media.text |   1 | 4.111 |  4.111 | 4.111 | 4.111 |       |       |       | 0.000 |
| Experimental |      |        | Parda    | fss.media.text |   3 | 3.000 |  3.000 | 2.556 | 3.444 | 0.444 | 0.257 | 1.104 | 0.444 |
| Experimental |      |        |          | fss.media.text |   4 | 2.604 |  2.653 | 2.333 | 2.778 | 0.206 | 0.103 | 0.328 | 0.257 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| fss.media.text |  24 |  0.2087258 | -0.6621484 | YES      | 0.9878337 | Shapiro-Wilk | 0.9884516 | ns       | YES       |
| fss.media.text |  15 | -0.3612835 | -0.6675674 | YES      | 0.9572771 | Shapiro-Wilk | 0.6452043 | ns       | YES       |
| fss.media.text |  13 | -0.7732940 |  0.0764313 | NO       | 0.9379503 | Shapiro-Wilk | 0.4309144 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  24 |       3 |      20 | 0.4703907 | 0.7062814 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  24 |       2 |      17 | 1.2280000 | 0.3180000 | ns       |
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Zona`     |  15 |       2 |      12 | 2.6494208 | 0.1114257 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  15 |       2 |       9 | 0.0650000 | 0.9370000 | ns       |
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  13 |       3 |       9 | 0.4320917 | 0.7351732 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  13 |       1 |       7 | 0.4550000 | 0.5220000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |   SSn |   SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|------:|------:|------:|------:|:-------|
| 1   | dfs.media.text |   1 |  21 | 0.228 | 5.420 | 0.883 | 0.358 | 0.040 |        |
| 2   | grupo          |   1 |  21 | 0.712 | 5.420 | 2.757 | 0.112 | 0.116 |        |
| 4   | Sexo           |   1 |  21 | 0.632 | 5.499 | 2.415 | 0.135 | 0.103 |        |
| 6   | Zona           |   1 |  12 | 0.003 | 2.003 | 0.017 | 0.899 | 0.001 |        |
| 8   | Cor.Raca       |   2 |   9 | 0.554 | 2.273 | 1.096 | 0.375 | 0.196 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |   SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|------:|------:|------:|------:|:-------|
| 1   | dfs.media.text |   1 |  19 | 0.166 | 5.095 | 0.618 | 0.441 | 0.032 |        |
| 4   | grupo:Sexo     |   1 |  19 | 0.006 | 5.095 | 0.024 | 0.879 | 0.001 |        |
| 8   | grupo:Zona     |   0 |  11 |       | 1.640 |       |       |       |        |
| 12  | grupo:Cor.Raca |   0 |   8 |       | 1.801 |       |       |       |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     |  15 |   3.219 |    0.177 |     3.304 |      0.124 |   3.314 |    0.132 |
| fss.media.text | Experimental |   9 |   3.395 |    0.197 |     2.972 |      0.184 |   2.955 |    0.170 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.text | Controle | Experimental |    0.359 |   -0.091 |     0.809 | 0.216 |     1.661 | 0.112 | 0.112 | ns           |
| dfs.media.text | Controle | Experimental |   -0.177 |   -0.747 |     0.394 | 0.275 |    -0.641 | 0.528 | 0.528 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | pre    | pos    |   -0.085 |   -0.515 |     0.345 | 0.213 |    -0.399 | 0.692 | 0.692 | ns           |
| flow.text | Experimental | pre    | pos    |    0.423 |   -0.132 |     0.978 | 0.275 |     1.535 | 0.132 | 0.132 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     | F    |   6 |   3.389 |    0.176 |     3.500 |      0.140 |   3.490 |    0.212 |
| fss.media.text | Controle     | M    |   9 |   3.105 |    0.273 |     3.173 |      0.177 |   3.204 |    0.177 |
| fss.media.text | Experimental | M    |   8 |   3.514 |    0.178 |     2.969 |      0.208 |   2.941 |    0.186 |

|     | .y.            | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | fss.media.text |          | M    | Controle | Experimental |    0.263 |   -0.287 |     0.812 | 0.262 |     1.001 | 0.329 | 0.329 | ns           |
| 4   | dfs.media.text |          | M    | Controle | Experimental |   -0.409 |   -1.053 |     0.235 | 0.309 |    -1.325 | 0.200 | 0.200 | ns           |
| 5   | fss.media.text | Controle |      | F        | M            |    0.286 |   -0.295 |     0.868 | 0.278 |     1.031 | 0.315 | 0.315 | ns           |
| 7   | dfs.media.text | Controle |      | F        | M            |    0.284 |   -0.414 |     0.982 | 0.335 |     0.848 | 0.406 | 0.406 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | F    | pre    | pos    |   -0.111 |   -0.785 |     0.563 | 0.333 |    -0.333 | 0.741 | 0.741 | ns           |
| flow.text | Controle     | M    | pre    | pos    |   -0.068 |   -0.618 |     0.482 | 0.272 |    -0.250 | 0.804 | 0.804 | ns           |
| flow.text | Experimental | M    | pre    | pos    |    0.545 |   -0.038 |     1.129 | 0.289 |     1.889 | 0.066 | 0.066 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
