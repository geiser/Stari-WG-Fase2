wants <- c('ggplot2','ggpubr','templates','PerformanceAnalytics','utils','randomcoloR')
has <- wants %in% rownames(installed.packages())
if (any(!has)) install.packages(wants[!has])

library(knitr)
library(templates)
library(markdown)


generate_md <- function(
    info, params, factors = c("Sexo","Zona","Cor.Raca","Serie"),
    other.factors = c(), dat.filter = "", suffix = "", fig.size = list()) {

  tfile = "templates/outcome.Rmd"
  params = c(params, list(
    grupo = info$grupo,
    fatores = factors,
    label.en = paste0(params$ylab),
    label.pt = paste0(params$ylab),
    exp.color = info$color,
    dat.filter = dat.filter
  ))

  if (is.list(other.factors) && !is.null(other.factors[[params$dv]]))
    params$fatores = c(params$fatores, other.factors[[params$dv]])

  txt <- do.call(tmpl, c(list(".t" = paste(readLines(tfile), collapse="\n")), params))

  txt <- do.call(paste0, c(
    collapse = "\n", txt, lapply(c("grupo"), FUN = function(f) {
      do.call(
        tmpl,
        c(list(".t"=paste(readLines("templates/pwc-one-factor.Rmd"),collapse="\n")),
          list(
            title = paste0("# Pairwise comparisons for one factor: **",f,"**"),
            dv = params$dv.pos, covar = params$dv.pre, iv = f,
            pivot.key = "time", pivot.value = params$dv,
            aov = "aov1", ylab = params$ylab,
            fig.width = 7, fig.height = 7,
            fig.width.bar = 8, fig.height.bar = 6,
            fig.width.pbar = 10, fig.height.pbar = 6
          )))
    })))

  txt <- paste0(txt,"\n\n## Pairwise comparisons for two factors\n\n")
  txt <- do.call(paste0, c(collapse = "\n", txt, lapply(params$fatores, FUN = function(f) {
    if (f %in% info$skip) return(NULL)

    fig.width.pbar = 14
    fig.height.pbar = 6
    if (!is.null(fig.size[[paste0("grupo:",f)]])) {
      fig.params = fig.size[[paste0("grupo:",f)]]
      if (!is.null(fig.params[["fig.width.pbar"]]))
        fig.width.pbar = fig.params$fig.width.pbar
      if (!is.null(fig.params[["fig.height.pbar"]]))
        fig.height.pbar = fig.params$fig.height.pbar
    }

    do.call(tmpl, c(list(".t" = paste(readLines("templates/pwc-two-factor.Rmd"), collapse="\n")), list(
      title = paste0("## factores: **grupo:",f,"**"),
      dv = params$dv.pos, covar = params$dv.pre, iv1 = "grupo", iv2 = f,
      pivot.key = "time", pivot.value = params$dv,
      aov = "aov2", ylab = params$ylab,
      fig.width = 7, fig.height = 7,
      fig.width.bar = 8, fig.height.bar = 6,
      fig.width.pbar = fig.width.pbar, fig.height.pbar = 6
    )))
  })))

  file.input = paste0(info$prefix,'-',params$dv,suffix,'.Rmd')

  if (!file.exists(file.input)) {
    writeLines(txt, file.input, useBytes=T)
    rmarkdown::render(file.input, output_dir = './results',
                      clean = T, output_format = "github_document")
  }
}



generate_wg <- function(
    factors = c("Sexo","Zona","Cor.Raca"),
    info = list(color = "#008000", grupo = "WG.Grupo",
                prefix=paste0(getwd(),'/code/wordgen')),
    only.dvs = c(),
    other.factors = c(), dat.filter = "", suffix = "", fig.size = list()) {

  dvs.flow = list(
    list(ylab="flow (debate)",
         dv.pre = "dfs.media.debat", dv.pos = "fss.media.debat", dv = "flow.debat"),
    list(ylab="flow (prod. textual)",
         dv.pre = "dfs.media.text", dv.pos = "fss.media.text", dv = "flow.text"),
    list(ylab="flow (ativ. leitura)",
         dv.pre = "dfs.media.read", dv.pos = "fss.media.read", dv = "flow.read"),
    list(ylab="flow (prob. matemática)",
         dv.pre = "dfs.media.math", dv.pos = "fss.media.math", dv = "flow.math")
  )

  dvs = c(list(
    list(ylab = "Vocabulario (acertos)",
         dv.pre = "vocab.pre", dv.pos = "vocab.pos", dv = "vocab"),
    list(ylab = "TDE - Escrita (Acertos)",
         dv.pre = "score.tde.pre", dv.pos = "score.tde.pos", dv = "score.tde")
  ), dvs.flow)

  for (dv in dvs) {
    if (length(only.dvs) > 0 && !(dv$dv %in% only.dvs)) next
    generate_md(info, dv, factors, other.factors, dat.filter, suffix, fig.size)
  }
}


generate_stari <- function(
    factors = c("Sexo","Zona","Cor.Raca"),
    info = list(color = "#fd7f6f", grupo = "Stari.Grupo",
                prefix=paste0(getwd(),'/code/stari')),
    only.dvs = c(),
    other.factors = c(), dat.filter = "", suffix = "", fig.size = list()) {

  dvs.flow = list(
    list(ylab="flow (debate)",
         dv.pre = "dfs.media.debat", dv.pos = "fss.media.debat", dv = "flow.debat"),
    list(ylab="flow (prod. textual)",
         dv.pre = "dfs.media.text", dv.pos = "fss.media.text", dv = "flow.text"),
    list(ylab="flow (ativ. leitura)",
         dv.pre = "dfs.media.read", dv.pos = "fss.media.read", dv = "flow.read"),
    list(ylab="flow (prob. matemática)",
         dv.pre = "dfs.media.math", dv.pos = "fss.media.math", dv = "flow.math")
  )

  dvs = c(list(
    list(ylab = "Vocabulario (acertos)",
         dv.pre = "vocab.pre", dv.pos = "vocab.pos", dv = "vocab"),
    list(ylab = "TDE - Escrita (Acertos)",
         dv.pre = "score.tde.pre", dv.pos = "score.tde.pos", dv = "score.tde"),
    list(ylab = "Palavras Lidas (1 Min)",
         dv.pre = "TFL.lidas.per.min.pre", dv.pos = "TFL.lidas.per.min.pos", dv = "TFL.lidas.per.min"),
    list(ylab = "Palavras Corretas (1 Min)",
         dv.pre = "TFL.corretas.per.min.pre", dv.pos = "TFL.corretas.per.min.pos", dv = "TFL.corretas.per.min"),
    list(ylab = "Fluencia Leitora (Compreensão)",
         dv.pre = "leitura.compreensao.pre", dv.pos = "leitura.compreensao.pos", dv = "leitura.compreensao")
    ), dvs.flow)


  for (dv in dvs) {
    if (length(only.dvs) > 0 && !(dv$dv %in% only.dvs)) next
    generate_md(info, dv, factors, other.factors, dat.filter, suffix, fig.size)
  }
}



other.factors = list(
  vocab = "vocab.quintile",
  score.tde = "score.tde.quintile",
  TFL.lidas.per.min = "TFL.lidas.per.min.quintile",
  TFL.corretas.per.min = "TFL.corretas.per.min.quintile",
  leitura.compreensao = "leitura.compreensao.quintile"
)

fig.size = list(
  "grupo:vocab.quintile" = list(fig.width.pbar = 21, fig.height.pbar = 6),
  "grupo:score.tde.quintile" = list(fig.width.pbar = 21, fig.height.pbar = 6),
  "grupo:TFL.lidas.per.min.quintile" = list(fig.width.pbar = 21, fig.height.pbar = 6),
  "grupo:TFL.corretas.per.min.quintile" = list(fig.width.pbar = 21, fig.height.pbar = 6),
  "grupo:leitura.compreensao.quintile" = list(fig.width.pbar = 21, fig.height.pbar = 6)
)





library(readxl)
data <- read_excel("data/data.xlsx")

generate_wg(other.factors = other.factors, fig.size = fig.size)
generate_stari(other.factors = other.factors, fig.size = fig.size)

for (filter.val in unique(data$Serie)[!is.na(unique(data$Serie))]){
  #if (filter.val %in% c("anos iniciais")) next
  suffix = paste0('-Serie-',filter.val)
  dat.filter = paste0('gdat <- gdat[which(gdat$Serie == "',filter.val,'"),]')
  generate_wg(dat.filter = dat.filter, suffix = suffix,
              factors = c("Sexo","Zona","Cor.Raca"),
              other.factors = other.factors, fig.size = fig.size)
}

for (filter.val in unique(data$Serie)[!is.na(unique(data$Serie))]){
  #if (filter.val %in% c("anos iniciais")) next
  suffix = paste0('-Serie-',filter.val)
  dat.filter = paste0('gdat <- gdat[which(gdat$Serie == "',filter.val,'"),]')
  generate_stari(dat.filter = dat.filter, suffix = suffix,
                 factors = c("Sexo","Zona","Cor.Raca"),
                 other.factors = other.factors, fig.size = fig.size)
}


# quintile analysis ####

for(dv in names(other.factors)) {
  f = other.factors[[dv]]
  for (val in unique(data[[f]][which(!is.na(data[[paste0(dv,".pos")]]))])) {
    if (is.na(val)) next
    suffix = paste0('-',val)
    dat.filter = paste0('gdat <- gdat[which(gdat[["',f,'"]] == "',val,'"),]')
    generate_wg(dat.filter = dat.filter, suffix = suffix, only.dvs = dv)
  }
}

for(dv in names(other.factors)) {
  f = other.factors[[dv]]
  for (val in unique(data[[f]][which(!is.na(data[[paste0(dv,".pos")]]))])) {
    if (is.na(val)) next
    suffix = paste0('-',val)
    dat.filter = paste0('gdat <- gdat[which(gdat[["',f,'"]] == "',val,'"),]')
    generate_stari(dat.filter = dat.filter, suffix = suffix, only.dvs = dv)
  }
}


