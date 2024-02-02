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
| Controle     | F    |        |          | dfs.media.text |  46 | 3.600 |  3.556 | 2.222 | 4.444 | 0.465 | 0.069 | 0.138 | 0.528 |
| Controle     | M    |        |          | dfs.media.text |  54 | 3.502 |  3.444 | 1.111 | 4.556 | 0.652 | 0.089 | 0.178 | 0.889 |
| Experimental | F    |        |          | dfs.media.text |  72 | 3.537 |  3.556 | 2.444 | 4.667 | 0.503 | 0.059 | 0.118 | 0.778 |
| Experimental | M    |        |          | dfs.media.text |  74 | 3.535 |  3.556 | 1.889 | 5.000 | 0.597 | 0.069 | 0.138 | 0.639 |
| Controle     | F    |        |          | fss.media.text |  46 | 3.504 |  3.667 | 2.111 | 4.444 | 0.585 | 0.086 | 0.174 | 0.667 |
| Controle     | M    |        |          | fss.media.text |  54 | 3.559 |  3.590 | 1.333 | 4.889 | 0.681 | 0.093 | 0.186 | 0.851 |
| Experimental | F    |        |          | fss.media.text |  72 | 3.565 |  3.556 | 2.667 | 5.000 | 0.500 | 0.059 | 0.117 | 0.469 |
| Experimental | M    |        |          | fss.media.text |  74 | 3.541 |  3.646 | 2.333 | 5.000 | 0.523 | 0.061 | 0.121 | 0.750 |
| Controle     |      | Rural  |          | dfs.media.text |  37 | 3.679 |  3.778 | 2.333 | 4.556 | 0.546 | 0.090 | 0.182 | 0.667 |
| Controle     |      | Urbana |          | dfs.media.text |  15 | 3.244 |  3.444 | 1.111 | 4.111 | 0.750 | 0.194 | 0.416 | 0.444 |
| Controle     |      |        |          | dfs.media.text |  48 | 3.541 |  3.444 | 2.556 | 4.556 | 0.503 | 0.073 | 0.146 | 0.806 |
| Experimental |      | Rural  |          | dfs.media.text |  50 | 3.451 |  3.333 | 2.333 | 4.667 | 0.527 | 0.075 | 0.150 | 0.750 |
| Experimental |      | Urbana |          | dfs.media.text |  31 | 3.523 |  3.667 | 1.889 | 4.667 | 0.659 | 0.118 | 0.242 | 0.500 |
| Experimental |      |        |          | dfs.media.text |  65 | 3.608 |  3.667 | 2.444 | 5.000 | 0.509 | 0.063 | 0.126 | 0.667 |
| Controle     |      | Rural  |          | fss.media.text |  37 | 3.600 |  3.667 | 2.556 | 4.889 | 0.593 | 0.097 | 0.198 | 0.889 |
| Controle     |      | Urbana |          | fss.media.text |  15 | 3.407 |  3.889 | 2.111 | 4.000 | 0.704 | 0.182 | 0.390 | 1.056 |
| Controle     |      |        |          | fss.media.text |  48 | 3.522 |  3.625 | 1.333 | 4.889 | 0.653 | 0.094 | 0.189 | 0.667 |
| Experimental |      | Rural  |          | fss.media.text |  50 | 3.441 |  3.556 | 2.667 | 4.333 | 0.394 | 0.056 | 0.112 | 0.667 |
| Experimental |      | Urbana |          | fss.media.text |  31 | 3.466 |  3.556 | 2.333 | 4.556 | 0.578 | 0.104 | 0.212 | 0.778 |
| Experimental |      |        |          | fss.media.text |  65 | 3.681 |  3.667 | 2.444 | 5.000 | 0.533 | 0.066 | 0.132 | 0.556 |
| Controle     |      |        | Branca   | dfs.media.text |   7 | 4.048 |  4.222 | 3.444 | 4.556 | 0.488 | 0.184 | 0.451 | 0.833 |
| Controle     |      |        | Indígena | dfs.media.text |   2 | 3.222 |  3.222 | 3.222 | 3.222 | 0.000 | 0.000 | 0.000 | 0.000 |
| Controle     |      |        | Parda    | dfs.media.text |  41 | 3.438 |  3.444 | 1.111 | 4.444 | 0.593 | 0.093 | 0.187 | 0.556 |
| Controle     |      |        |          | dfs.media.text |  50 | 3.580 |  3.556 | 2.222 | 4.556 | 0.544 | 0.077 | 0.154 | 0.861 |
| Experimental |      |        | Branca   | dfs.media.text |  13 | 3.719 |  3.889 | 2.667 | 4.667 | 0.555 | 0.154 | 0.336 | 0.667 |
| Experimental |      |        | Indígena | dfs.media.text |   3 | 3.185 |  3.222 | 3.111 | 3.222 | 0.064 | 0.037 | 0.159 | 0.056 |
| Experimental |      |        | Parda    | dfs.media.text |  44 | 3.476 |  3.556 | 1.889 | 4.778 | 0.577 | 0.087 | 0.175 | 0.583 |
| Experimental |      |        |          | dfs.media.text |  86 | 3.552 |  3.556 | 1.889 | 5.000 | 0.542 | 0.058 | 0.116 | 0.750 |
| Controle     |      |        | Branca   | fss.media.text |   7 | 3.698 |  3.667 | 3.000 | 4.778 | 0.594 | 0.224 | 0.549 | 0.556 |
| Controle     |      |        | Indígena | fss.media.text |   2 | 4.000 |  4.000 | 3.778 | 4.222 | 0.314 | 0.222 | 2.824 | 0.222 |
| Controle     |      |        | Parda    | fss.media.text |  41 | 3.487 |  3.556 | 2.111 | 4.667 | 0.569 | 0.089 | 0.180 | 0.667 |
| Controle     |      |        |          | fss.media.text |  50 | 3.530 |  3.646 | 1.333 | 4.889 | 0.701 | 0.099 | 0.199 | 0.889 |
| Experimental |      |        | Branca   | fss.media.text |  13 | 3.718 |  3.778 | 3.333 | 4.556 | 0.394 | 0.109 | 0.238 | 0.444 |
| Experimental |      |        | Indígena | fss.media.text |   3 | 3.333 |  3.444 | 2.778 | 3.778 | 0.509 | 0.294 | 1.265 | 0.500 |
| Experimental |      |        | Parda    | fss.media.text |  44 | 3.533 |  3.611 | 2.667 | 5.000 | 0.480 | 0.072 | 0.146 | 0.694 |
| Experimental |      |        |          | fss.media.text |  86 | 3.546 |  3.590 | 2.333 | 5.000 | 0.541 | 0.058 | 0.116 | 0.750 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| fss.media.text | 246 | -0.4187100 |  0.4036354 | YES      |  9.164650 | D’Agostino | 0.0102311 | ns       | \-        |
| fss.media.text | 133 | -0.3131035 | -0.5292251 | YES      |  4.023751 | D’Agostino | 0.1337376 | ns       | QQ        |
| fss.media.text | 110 | -0.1699169 |  0.2830489 | YES      |  1.607577 | D’Agostino | 0.4476300 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 246 |       3 |     242 | 1.0485023 | 0.3717651 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 246 |       3 |     238 | 0.2120000 | 0.8880000 | ns       |
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Zona`     | 133 |       3 |     129 | 2.6314774 | 0.0528309 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 133 |       3 |     125 | 0.4120000 | 0.7450000 | ns       |
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` | 110 |       5 |     104 | 0.1747161 | 0.9714826 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` | 110 |       4 |      99 | 0.5420000 | 0.7060000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.text |   1 | 243 | 10.408 | 67.303 | 37.579 | \<0.001 | 0.134 | \*     |
| 2   | grupo          |   1 | 243 |  0.033 | 67.303 |  0.119 | 0.73    | 0.000 |        |
| 4   | Sexo           |   1 | 243 |  0.030 | 67.306 |  0.109 | 0.741   | 0.000 |        |
| 6   | Zona           |   1 | 130 |  0.014 | 32.126 |  0.055 | 0.814   | 0.000 |        |
| 8   | Cor.Raca       |   2 | 106 |  0.213 | 24.350 |  0.464 | 0.63    | 0.009 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.text |   1 | 241 | 10.538 | 67.079 | 37.861 | \<0.001 | 0.136 | \*     |
| 4   | grupo:Sexo     |   1 | 241 |  0.192 | 67.079 |  0.689 | 0.407   | 0.003 |        |
| 8   | grupo:Zona     |   1 | 128 |  0.014 | 31.971 |  0.056 | 0.814   | 0.000 |        |
| 12  | grupo:Cor.Raca |   2 | 103 |  0.603 | 23.738 |  1.308 | 0.275   | 0.025 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     | 100 |   3.547 |    0.057 |     3.534 |      0.064 |   3.531 |    0.053 |
| fss.media.text | Experimental | 146 |   3.536 |    0.046 |     3.553 |      0.042 |   3.555 |    0.044 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.text | Controle | Experimental |   -0.024 |   -0.158 |     0.111 | 0.068 |    -0.345 | 0.730 | 0.730 | ns           |
| dfs.media.text | Controle | Experimental |    0.011 |   -0.132 |     0.154 | 0.073 |     0.150 | 0.881 | 0.881 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | pre    | pos    |    0.014 |   -0.143 |     0.170 | 0.079 |     0.171 | 0.864 | 0.864 | ns           |
| flow.text | Experimental | pre    | pos    |   -0.017 |   -0.146 |     0.112 | 0.066 |    -0.256 | 0.798 | 0.798 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     | F    |  46 |   3.600 |    0.069 |     3.504 |      0.086 |   3.482 |    0.078 |
| fss.media.text | Controle     | M    |  54 |   3.502 |    0.089 |     3.559 |      0.093 |   3.573 |    0.072 |
| fss.media.text | Experimental | F    |  72 |   3.537 |    0.059 |     3.565 |      0.059 |   3.567 |    0.062 |
| fss.media.text | Experimental | M    |  74 |   3.535 |    0.069 |     3.541 |      0.061 |   3.543 |    0.061 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.text |              | F    | Controle | Experimental |   -0.084 |   -0.281 |     0.112 | 0.100 |    -0.847 | 0.398 | 0.398 | ns           |
| fss.media.text |              | M    | Controle | Experimental |    0.030 |   -0.156 |     0.216 | 0.094 |     0.313 | 0.754 | 0.754 | ns           |
| dfs.media.text |              | F    | Controle | Experimental |    0.063 |   -0.146 |     0.272 | 0.106 |     0.595 | 0.553 | 0.553 | ns           |
| dfs.media.text |              | M    | Controle | Experimental |   -0.033 |   -0.231 |     0.164 | 0.100 |    -0.333 | 0.740 | 0.740 | ns           |
| fss.media.text | Controle     |      | F        | M            |   -0.091 |   -0.300 |     0.118 | 0.106 |    -0.858 | 0.392 | 0.392 | ns           |
| fss.media.text | Experimental |      | F        | M            |    0.023 |   -0.149 |     0.195 | 0.087 |     0.264 | 0.792 | 0.792 | ns           |
| dfs.media.text | Controle     |      | F        | M            |    0.098 |   -0.124 |     0.320 | 0.113 |     0.872 | 0.384 | 0.384 | ns           |
| dfs.media.text | Experimental |      | F        | M            |    0.002 |   -0.181 |     0.185 | 0.093 |     0.019 | 0.985 | 0.985 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | F    | pre    | pos    |    0.096 |   -0.135 |     0.327 | 0.118 |     0.817 | 0.414 | 0.414 | ns           |
| flow.text | Controle     | M    | pre    | pos    |   -0.057 |   -0.270 |     0.157 | 0.109 |    -0.521 | 0.602 | 0.602 | ns           |
| flow.text | Experimental | F    | pre    | pos    |   -0.028 |   -0.213 |     0.157 | 0.094 |    -0.298 | 0.766 | 0.766 | ns           |
| flow.text | Experimental | M    | pre    | pos    |   -0.006 |   -0.188 |     0.176 | 0.093 |    -0.065 | 0.948 | 0.948 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     | Rural  |  37 |   3.679 |    0.090 |     3.600 |      0.097 |   3.542 |    0.083 |
| fss.media.text | Controle     | Urbana |  15 |   3.244 |    0.194 |     3.407 |      0.182 |   3.497 |    0.131 |
| fss.media.text | Experimental | Rural  |  50 |   3.451 |    0.075 |     3.441 |      0.056 |   3.460 |    0.071 |
| fss.media.text | Experimental | Urbana |  31 |   3.523 |    0.118 |     3.466 |      0.104 |   3.461 |    0.090 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.text |              | Rural  | Controle | Experimental |    0.082 |   -0.135 |     0.299 | 0.110 |     0.748 | 0.456 | 0.456 | ns           |
| fss.media.text |              | Urbana | Controle | Experimental |    0.036 |   -0.278 |     0.350 | 0.159 |     0.228 | 0.820 | 0.820 | ns           |
| dfs.media.text |              | Rural  | Controle | Experimental |    0.227 |   -0.027 |     0.482 | 0.128 |     1.769 | 0.079 | 0.079 | ns           |
| dfs.media.text |              | Urbana | Controle | Experimental |   -0.279 |   -0.648 |     0.090 | 0.186 |    -1.496 | 0.137 | 0.137 | ns           |
| fss.media.text | Controle     |        | Rural    | Urbana       |    0.045 |   -0.264 |     0.354 | 0.156 |     0.287 | 0.774 | 0.774 | ns           |
| fss.media.text | Experimental |        | Rural    | Urbana       |   -0.001 |   -0.227 |     0.225 | 0.114 |    -0.008 | 0.993 | 0.993 | ns           |
| dfs.media.text | Controle     |        | Rural    | Urbana       |    0.434 |    0.075 |     0.793 | 0.181 |     2.394 | 0.018 | 0.018 | \*           |
| dfs.media.text | Experimental |        | Rural    | Urbana       |   -0.072 |   -0.340 |     0.196 | 0.135 |    -0.531 | 0.596 | 0.596 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | Rural  | pre    | pos    |    0.079 |   -0.180 |     0.338 | 0.131 |     0.600 | 0.549 | 0.549 | ns           |
| flow.text | Controle     | Urbana | pre    | pos    |   -0.163 |   -0.570 |     0.244 | 0.206 |    -0.789 | 0.431 | 0.431 | ns           |
| flow.text | Experimental | Rural  | pre    | pos    |    0.011 |   -0.212 |     0.234 | 0.113 |     0.096 | 0.924 | 0.924 | ns           |
| flow.text | Experimental | Urbana | pre    | pos    |    0.057 |   -0.225 |     0.340 | 0.144 |     0.399 | 0.690 | 0.690 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     | Branca   |   7 |   4.048 |    0.184 |     3.698 |      0.224 |   3.526 |    0.187 |
| fss.media.text | Controle     | Parda    |  41 |   3.438 |    0.093 |     3.487 |      0.089 |   3.518 |    0.075 |
| fss.media.text | Experimental | Branca   |  13 |   3.719 |    0.154 |     3.718 |      0.109 |   3.655 |    0.134 |
| fss.media.text | Experimental | Parda    |  44 |   3.476 |    0.087 |     3.533 |      0.072 |   3.551 |    0.073 |

| .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.text |              | Branca   | Controle | Experimental |   -0.129 |   -0.580 |     0.321 | 0.227 |    -0.569 | 0.571 | 0.571 | ns           |
| fss.media.text |              | Parda    | Controle | Experimental |   -0.033 |   -0.240 |     0.174 | 0.104 |    -0.317 | 0.752 | 0.752 | ns           |
| dfs.media.text |              | Branca   | Controle | Experimental |    0.329 |   -0.207 |     0.864 | 0.270 |     1.217 | 0.227 | 0.227 | ns           |
| dfs.media.text |              | Parda    | Controle | Experimental |   -0.039 |   -0.287 |     0.209 | 0.125 |    -0.309 | 0.758 | 0.758 | ns           |
| fss.media.text | Controle     |          | Branca   | Parda        |    0.008 |   -0.395 |     0.410 | 0.203 |     0.037 | 0.970 | 0.970 | ns           |
| fss.media.text | Experimental |          | Branca   | Parda        |    0.104 |   -0.200 |     0.407 | 0.153 |     0.676 | 0.500 | 0.500 | ns           |
| dfs.media.text | Controle     |          | Branca   | Parda        |    0.610 |    0.143 |     1.077 | 0.236 |     2.589 | 0.011 | 0.011 | \*           |
| dfs.media.text | Experimental |          | Branca   | Parda        |    0.243 |   -0.118 |     0.603 | 0.182 |     1.334 | 0.185 | 0.185 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | Branca   | pre    | pos    |    0.349 |   -0.227 |     0.925 | 0.292 |     1.195 | 0.233 | 0.233 | ns           |
| flow.text | Controle     | Parda    | pre    | pos    |   -0.050 |   -0.288 |     0.188 | 0.121 |    -0.412 | 0.680 | 0.680 | ns           |
| flow.text | Experimental | Branca   | pre    | pos    |    0.001 |   -0.422 |     0.424 | 0.214 |     0.005 | 0.996 | 0.996 | ns           |
| flow.text | Experimental | Parda    | pre    | pos    |   -0.057 |   -0.287 |     0.173 | 0.117 |    -0.490 | 0.625 | 0.625 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-58-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-9-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
