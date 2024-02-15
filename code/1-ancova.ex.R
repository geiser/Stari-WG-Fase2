wants <- c('ggplot2','ggpubr','templates','PerformanceAnalytics','utils','randomcoloR')
has <- wants %in% rownames(installed.packages())
if (any(!has)) install.packages(wants[!has])

library(knitr)
library(templates)
library(markdown)


generate_md <- function(
    info, params, factors = c("Sexo","Zona","Cor.Raca","Serie"),
    other.factors = c(), dat.filter = "", suffix = "", fig.size = list()) {

  tfile = "templates/ancova.Rmd"
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
        c(list(".t"=paste(readLines("templates/ancova-one-factor.Rmd"),collapse="\n")),
          list(
            title = paste0("# ANCOVA and Pairwise for one factor: **",f,"**"),
            dv.pos = params$dv.pos, dv.pre = params$dv.pre, iv = f, ylab = params$ylab,
            pivot.key = "time", pivot.value = params$dv,
            fig.width = 7, fig.height = 7,
            fig.width.bar = 8, fig.height.bar = 6,
            fig.width.pbar = 10, fig.height.pbar = 6
          )))
    })))


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

    do.call(tmpl, c(
      list(".t" = paste(readLines("templates/ancova-two-factor.Rmd"), collapse="\n")),
      list(
        title = paste0("# ANCOVA and Pairwise for two factors **grupo:",f,"**"),
        dv.pos = params$dv.pos, dv.pre = params$dv.pre, iv1 = "grupo", iv2 = f,
        pivot.key = "time", pivot.value = params$dv, ylab = params$ylab,
        fig.width = 7, fig.height = 7,
        fig.width.bar = 8, fig.height.bar = 6,
        fig.width.pbar = fig.width.pbar, fig.height.pbar = 6
      )))
  })))


  txt <- paste0(collapse = "\n", c(txt, do.call(tmpl, c(
    list(".t" = paste(readLines("templates/aov-summary.Rmd"), collapse="\n")),
    list(
      title = "# Summary of Results"
    )))))


  file.input = paste0(info$prefix,'-',params$dv,suffix,'.Rmd')

  if (!file.exists(file.input)) {
    writeLines(txt, file.input, useBytes=T)
    rmarkdown::render(file.input, output_dir = './results',
                      clean = T, output_format = "github_document")
  }
}



generate_wg <- function(
    factors = c("Sexo","Zona","Cor.Raca","Serie"),
    info = list(color = "#008000", grupo = "WG.Grupo",
                prefix=paste0(getwd(),'/code/aov-wordgen')),
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
    list(ylab = "Vocabulario",dv.pre = "vocab.pre", dv.pos = "vocab.pos", dv = "vocab"),
    list(ylab = "Vocabulario Ensinado",dv.pre = "vocab.teach.pre", dv.pos = "vocab.teach.pos", dv = "vocab.teach"),
    list(ylab = "Vocabulario Não Ensinado",dv.pre = "vocab.non.teach.pre", dv.pos = "vocab.non.teach.pos", dv = "vocab.non.teach"),
    list(ylab = "TDE - Escrita",dv.pre = "score.tde.pre", dv.pos = "score.tde.pos", dv = "score.tde")
  ), dvs.flow)

  for (dv in dvs) {
    if (length(only.dvs) > 0 && !(dv$dv %in% only.dvs)) next
    generate_md(info, dv, factors, other.factors, dat.filter, suffix, fig.size)
  }
}


generate_stari <- function(
    factors = c("Sexo","Zona","Cor.Raca","Serie"),
    info = list(color = "#fd7f6f", grupo = "Stari.Grupo",
                prefix=paste0(getwd(),'/code/aov-stari')),
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
    list(ylab = "Vocabulario",dv.pre = "vocab.pre", dv.pos = "vocab.pos", dv = "vocab"),
    list(ylab = "Vocabulario Ensinado",dv.pre = "vocab.teach.pre", dv.pos = "vocab.teach.pos", dv = "vocab.teach"),
    list(ylab = "Vocabulario Não Ensinado",dv.pre = "vocab.non.teach.pre", dv.pos = "vocab.non.teach.pos", dv = "vocab.non.teach"),
    list(ylab = "TDE - Escrita",dv.pre = "score.tde.pre", dv.pos = "score.tde.pos", dv = "score.tde"),

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
  vocab.teach = "vocab.teach.quintile",
  vocab.non.teach = "vocab.non.teach.quintile",
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


## ... generate wordgen

generate_wg(other.factors = other.factors, fig.size = fig.size)

for (filter.val in unique(data$Serie)[!is.na(unique(data$Serie))]){
  #if (filter.val %in% c("anos iniciais")) next
  suffix = paste0('-Serie-',filter.val)
  dat.filter = paste0('gdat <- gdat[which(gdat$Serie == "',filter.val,'"),]')
  generate_wg(dat.filter = dat.filter, suffix = suffix,
              factors = c("Sexo","Zona","Cor.Raca"),
              other.factors = other.factors, fig.size = fig.size)
}


for(dv in names(other.factors)) {
  f = other.factors[[dv]]
  for (val in unique(data[[f]][which(!is.na(data[[paste0(dv,".pos")]]))])) {
    if (is.na(val)) next
    suffix = paste0('-',val)
    dat.filter = paste0('gdat <- gdat[which(gdat[["',f,'"]] == "',val,'"),]')
    generate_wg(dat.filter = dat.filter, suffix = suffix, only.dvs = dv)
  }
}


## ... generate stari

generate_stari(other.factors = other.factors, fig.size = fig.size)


for (filter.val in unique(data$Serie)[!is.na(unique(data$Serie))]){
  if (filter.val %in% c("8 ano","6 ano", "9 ano", "7 ano")) next
  suffix = paste0('-Serie-',filter.val)
  dat.filter = paste0('gdat <- gdat[which(gdat$Serie == "',filter.val,'"),]')
  generate_stari(dat.filter = dat.filter, suffix = suffix,
                 factors = c("Sexo","Zona","Cor.Raca"),
                 other.factors = other.factors, fig.size = fig.size)
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


