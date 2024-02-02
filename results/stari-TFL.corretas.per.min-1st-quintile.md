ANCOVA in Palavras Corretas (1 Min) (Palavras Corretas (1 Min))
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
  Palavras Corretas (1 Min) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Palavras Corretas (1 Min) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable                 |   n |    mean | median | min | max |     sd |     se |      ci |   iqr |
|:-------------|:-----|:-------|:---------|:------|:-------------------------|----:|--------:|-------:|----:|----:|-------:|-------:|--------:|------:|
| Controle     | F    |        |          |       | TFL.corretas.per.min.pre |   6 |  52.333 |   52.0 |  39 |  67 |  9.416 |  3.844 |   9.882 |  7.50 |
| Controle     | M    |        |          |       | TFL.corretas.per.min.pre |  11 |  52.000 |   53.0 |  23 |  64 | 11.340 |  3.419 |   7.618 |  8.50 |
| Experimental | F    |        |          |       | TFL.corretas.per.min.pre |   1 |  60.000 |   60.0 |  60 |  60 |        |        |         |  0.00 |
| Experimental | M    |        |          |       | TFL.corretas.per.min.pre |   5 |  57.800 |   57.0 |  50 |  66 |  7.530 |  3.367 |   9.350 | 14.00 |
| Controle     | F    |        |          |       | TFL.corretas.per.min.pos |   6 | 108.500 |  101.0 |  87 | 136 | 21.714 |  8.865 |  22.787 | 34.50 |
| Controle     | M    |        |          |       | TFL.corretas.per.min.pos |  11 |  90.182 |   86.0 |  42 | 148 | 31.877 |  9.611 |  21.415 | 36.50 |
| Experimental | F    |        |          |       | TFL.corretas.per.min.pos |   1 | 150.000 |  150.0 | 150 | 150 |        |        |         |  0.00 |
| Experimental | M    |        |          |       | TFL.corretas.per.min.pos |   5 |  84.600 |   91.0 |  66 |  99 | 14.293 |  6.392 |  17.748 | 21.00 |
| Controle     |      | Rural  |          |       | TFL.corretas.per.min.pre |  12 |  50.333 |   52.5 |  23 |  64 | 11.146 |  3.218 |   7.082 |  8.25 |
| Controle     |      | Urbana |          |       | TFL.corretas.per.min.pre |   1 |  47.000 |   47.0 |  47 |  47 |        |        |         |  0.00 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pre |   4 |  58.750 |   58.0 |  52 |  67 |  6.397 |  3.198 |  10.178 |  6.75 |
| Experimental |      | Rural  |          |       | TFL.corretas.per.min.pre |   5 |  59.800 |   60.0 |  51 |  66 |  6.140 |  2.746 |   7.624 |  8.00 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pre |   1 |  50.000 |   50.0 |  50 |  50 |        |        |         |  0.00 |
| Controle     |      | Rural  |          |       | TFL.corretas.per.min.pos |  12 |  92.750 |   90.5 |  42 | 148 | 30.170 |  8.709 |  19.169 | 34.75 |
| Controle     |      | Urbana |          |       | TFL.corretas.per.min.pos |   1 |  87.000 |   87.0 |  87 |  87 |        |        |         |  0.00 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pos |   4 | 110.750 |  116.5 |  74 | 136 | 30.215 | 15.107 |  48.078 | 43.25 |
| Experimental |      | Rural  |          |       | TFL.corretas.per.min.pos |   5 | 101.400 |   94.0 |  73 | 150 | 28.884 | 12.917 |  35.865 |  8.00 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pos |   1 |  66.000 |   66.0 |  66 |  66 |        |        |         |  0.00 |
| Controle     |      |        | Parda    |       | TFL.corretas.per.min.pre |   7 |  51.286 |   52.0 |  23 |  64 | 14.373 |  5.432 |  13.292 | 14.00 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pre |  10 |  52.700 |   53.0 |  39 |  67 |  7.319 |  2.314 |   5.236 |  6.75 |
| Experimental |      |        | Indígena |       | TFL.corretas.per.min.pre |   1 |  50.000 |   50.0 |  50 |  50 |        |        |         |  0.00 |
| Experimental |      |        | Parda    |       | TFL.corretas.per.min.pre |   3 |  60.667 |   65.0 |  51 |  66 |  8.386 |  4.842 |  20.833 |  7.50 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pre |   2 |  58.500 |   58.5 |  57 |  60 |  2.121 |  1.500 |  19.059 |  1.50 |
| Controle     |      |        | Parda    |       | TFL.corretas.per.min.pos |   7 |  77.429 |   74.0 |  42 | 115 | 23.565 |  8.907 |  21.794 | 25.50 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pos |  10 | 110.100 |  101.0 |  74 | 148 | 26.023 |  8.229 |  18.616 | 45.25 |
| Experimental |      |        | Indígena |       | TFL.corretas.per.min.pos |   1 |  66.000 |   66.0 |  66 |  66 |        |        |         |  0.00 |
| Experimental |      |        | Parda    |       | TFL.corretas.per.min.pos |   3 |  87.667 |   91.0 |  73 |  99 | 13.317 |  7.688 |  33.080 | 13.00 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pos |   2 | 122.000 |  122.0 |  94 | 150 | 39.598 | 28.000 | 355.774 | 28.00 |
| Controle     |      |        |          | 6 ano | TFL.corretas.per.min.pre |   6 |  46.167 |   49.0 |  23 |  64 | 13.977 |  5.706 |  14.668 | 11.50 |
| Controle     |      |        |          | 7 ano | TFL.corretas.per.min.pre |   3 |  57.667 |   57.0 |  52 |  64 |  6.028 |  3.480 |  14.974 |  6.00 |
| Controle     |      |        |          | 8 ano | TFL.corretas.per.min.pre |   3 |  51.667 |   52.0 |  48 |  55 |  3.512 |  2.028 |   8.724 |  3.50 |
| Controle     |      |        |          | 9 ano | TFL.corretas.per.min.pre |   5 |  56.200 |   56.0 |  45 |  67 |  8.167 |  3.652 |  10.141 |  7.00 |
| Experimental |      |        |          | 6 ano | TFL.corretas.per.min.pre |   2 |  58.500 |   58.5 |  57 |  60 |  2.121 |  1.500 |  19.059 |  1.50 |
| Experimental |      |        |          | 7 ano | TFL.corretas.per.min.pre |   1 |  66.000 |   66.0 |  66 |  66 |        |        |         |  0.00 |
| Experimental |      |        |          | 8 ano | TFL.corretas.per.min.pre |   2 |  50.500 |   50.5 |  50 |  51 |  0.707 |  0.500 |   6.353 |  0.50 |
| Experimental |      |        |          | 9 ano | TFL.corretas.per.min.pre |   1 |  65.000 |   65.0 |  65 |  65 |        |        |         |  0.00 |
| Controle     |      |        |          | 6 ano | TFL.corretas.per.min.pos |   6 |  72.833 |   70.0 |  42 | 104 | 21.208 |  8.658 |  22.256 | 19.25 |
| Controle     |      |        |          | 7 ano | TFL.corretas.per.min.pos |   3 |  93.000 |   91.0 |  90 |  98 |  4.359 |  2.517 |  10.828 |  4.00 |
| Controle     |      |        |          | 8 ano | TFL.corretas.per.min.pos |   3 | 118.667 |  135.0 |  86 | 135 | 28.290 | 16.333 |  70.277 | 24.50 |
| Controle     |      |        |          | 9 ano | TFL.corretas.per.min.pos |   5 | 114.200 |  115.0 |  74 | 148 | 29.567 | 13.223 |  36.712 | 38.00 |
| Experimental |      |        |          | 6 ano | TFL.corretas.per.min.pos |   2 | 122.000 |  122.0 |  94 | 150 | 39.598 | 28.000 | 355.774 | 28.00 |
| Experimental |      |        |          | 7 ano | TFL.corretas.per.min.pos |   1 |  91.000 |   91.0 |  91 |  91 |        |        |         |  0.00 |
| Experimental |      |        |          | 8 ano | TFL.corretas.per.min.pos |   2 |  69.500 |   69.5 |  66 |  73 |  4.950 |  3.500 |  44.472 |  3.50 |
| Experimental |      |        |          | 9 ano | TFL.corretas.per.min.pos |   1 |  99.000 |   99.0 |  99 |  99 |        |        |         |  0.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                      |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:-------------------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| TFL.corretas.per.min.pos |  23 |  0.7430200 | -0.0637291 | NO       | 0.9442370 | Shapiro-Wilk | 0.2213815 | ns       | YES       |
| TFL.corretas.per.min.pos |  18 |  0.6103713 | -0.8342079 | NO       | 0.9218546 | Shapiro-Wilk | 0.1394287 | ns       | YES       |
| TFL.corretas.per.min.pos |  11 |  1.0066933 |  0.3972597 | NO       | 0.9040694 | Shapiro-Wilk | 0.2071338 | ns       | YES       |
| TFL.corretas.per.min.pos |  23 | -0.1284846 | -0.6468144 | YES      | 0.9794348 | Shapiro-Wilk | 0.8963203 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var                      | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:-------------------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  23 |       3 |      19 | 1.4925690 | 0.2485552 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  23 |       2 |      16 | 0.1140000 | 0.8930000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  18 |       2 |      15 | 0.7733826 | 0.4790007 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  18 |       1 |      13 | 0.0500000 | 0.8260000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  11 |       2 |       8 | 0.7412663 | 0.5065969 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  11 |       1 |       6 | 0.2030000 | 0.6680000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  23 |       7 |      15 | 0.9945525 | 0.4716040 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  23 |       5 |       9 | 0.8420000 | 0.5520000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                   | DFn | DFd |      SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:-------------------------|----:|----:|---------:|----------:|------:|------:|------:|:-------|
| 1   | TFL.corretas.per.min.pre |   1 |  20 | 2181.720 | 16021.663 | 2.723 | 0.115 | 0.120 |        |
| 2   | grupo                    |   1 |  20 |  232.117 | 16021.663 | 0.290 | 0.596 | 0.014 |        |
| 4   | Sexo                     |   1 |  20 | 3384.644 | 12869.135 | 5.260 | 0.033 | 0.208 | \*     |
| 6   | Zona                     |   1 |  15 |    9.479 | 12341.291 | 0.012 | 0.916 | 0.001 |        |
| 8   | Cor.Raca                 |   1 |   8 |  118.877 |  3063.601 | 0.310 | 0.593 | 0.037 |        |
| 10  | Serie                    |   3 |  18 | 1712.012 | 14541.768 | 0.706 | 0.561 | 0.105 |        |

## ANCOVA tests for two factors

|     | Effect                   | DFn | DFd |      SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:-------------------------|----:|----:|---------:|----------:|------:|------:|------:|:-------|
| 1   | TFL.corretas.per.min.pre |   1 |  18 | 1893.575 | 11442.761 | 2.979 | 0.101 | 0.142 |        |
| 4   | grupo:Sexo               |   1 |  18 | 1402.763 | 11442.761 | 2.207 | 0.155 | 0.109 |        |
| 8   | grupo:Zona               |   0 |  14 |          | 12338.795 |       |       |       |        |
| 12  | grupo:Cor.Raca           |   0 |   7 |          |  3036.826 |       |       |       |        |
| 16  | grupo:Serie              |   3 |  14 | 5620.846 |  8756.014 | 2.996 | 0.067 | 0.391 |        |

## Pairwise comparisons for one factor: **grupo**

| var                      | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     |  17 |  52.118 |    2.522 |    96.647 |      7.129 |  98.312 |    6.938 |
| TFL.corretas.per.min.pos | Experimental |   6 |  58.167 |    2.774 |    95.500 |     12.085 |  90.784 |   11.903 |

| .y.                      | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min.pos | Controle | Experimental |    7.528 |  -21.645 |    36.701 | 13.985 |     0.538 | 0.596 | 0.596 | ns           |
| TFL.corretas.per.min.pre | Controle | Experimental |   -6.049 |  -15.591 |     3.493 |  4.588 |    -1.318 | 0.202 | 0.202 | ns           |

| .y.                  | grupo        | group1 | group2 | estimate | conf.low | conf.high |     se | statistic | p       | p.adj   | p.adj.signif |
|:---------------------|:-------------|:-------|:-------|---------:|---------:|----------:|-------:|----------:|:--------|:--------|:-------------|
| TFL.corretas.per.min | Controle     | pre    | pos    |  -44.529 |  -59.696 |   -29.363 |  7.515 |    -5.925 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min | Experimental | pre    | pos    |  -37.333 |  -62.863 |   -11.804 | 12.650 |    -2.951 | 0.005   | 0.005   | \*\*         |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-1st-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-1st-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-1st-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-1st-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                      | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     | F    |   6 |  52.333 |    3.844 |   108.500 |      8.865 | 109.558 |   10.312 |
| TFL.corretas.per.min.pos | Controle     | M    |  11 |  52.000 |    3.419 |    90.182 |      9.611 |  91.568 |    7.644 |
| TFL.corretas.per.min.pos | Experimental | M    |   5 |  57.800 |    3.367 |    84.600 |      6.392 |  80.280 |   11.550 |

|     | .y.                      | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:----|:-------------------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| 2   | TFL.corretas.per.min.pos |          | M    | Controle | Experimental |   11.288 |  -18.115 |    40.691 | 13.995 |     0.807 | 0.430 | 0.430 | ns           |
| 4   | TFL.corretas.per.min.pre |          | M    | Controle | Experimental |   -5.800 |  -17.254 |     5.654 |  5.473 |    -1.060 | 0.303 | 0.303 | ns           |
| 5   | TFL.corretas.per.min.pos | Controle |      | F        | M            |   17.990 |   -8.897 |    44.877 | 12.798 |     1.406 | 0.177 | 0.177 | ns           |
| 7   | TFL.corretas.per.min.pre | Controle |      | F        | M            |    0.333 |  -10.445 |    11.112 |  5.150 |     0.065 | 0.949 | 0.949 | ns           |

| .y.                  | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |     se | statistic | p       | p.adj   | p.adj.signif |
|:---------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|-------:|----------:|:--------|:--------|:-------------|
| TFL.corretas.per.min | Controle     | F    | pre    | pos    |  -56.167 |  -79.613 |   -32.720 | 11.582 |    -4.849 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min | Controle     | M    | pre    | pos    |  -38.182 |  -55.498 |   -20.865 |  8.554 |    -4.464 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min | Experimental | M    | pre    | pos    |  -26.800 |  -52.485 |    -1.115 | 12.688 |    -2.112 | 0.041   | 0.041   | \*           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-1st-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-1st-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-1st-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-1st-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:Serie**
