
library(readxl)
library(stringr)
library(stringi)
library(digest)
library(dplyr)

#### Create legend table ####

fname = "data/data.xlsx"

if (!"legend" %in% excel_sheets(fname)) {

  db <- list()
  for (sheet in excel_sheets(fname)) {
    db[[sheet]] <- read_excel(fname, sheet = sheet)
  }


  legend <- do.call(rbind, lapply(names(db), FUN = function(tbl.name) {
    tbl = db[[tbl.name]]
    cols = colnames(tbl)

    tbl.description = ""
    if (startsWith(tbl.name,"sumary")) tbl.description = "Table with a summary of all information"
    if (startsWith(tbl.name,"vocab.pre")) tbl.description = "Table with results from vocabulary test applied in pre-test phase"
    if (startsWith(tbl.name,"vocab.pos")) tbl.description = "Table with results from vocabulary test applied in post-test phase"
    if (startsWith(tbl.name,"tde.pre")) tbl.description = "Table with writing test (TDE) applied in pre-test phase"
    if (startsWith(tbl.name,"tde.pos")) tbl.description = "Table with writing test (TDE) applied in post-test phase"
    if (startsWith(tbl.name,"fluencia.pre")) tbl.description = "Table with fluency reading test applied in pre-test phase"
    if (startsWith(tbl.name,"fluencia.pos")) tbl.description = "Table with fluency reading test applied in post-test phase"

    if (endsWith(tbl.name,"flow.read")) tbl.description = "Table with information of participants' flow states regarding reading activities applied durint pre-test and post-test phases"
    if (endsWith(tbl.name,"flow.math")) tbl.description = "Table with information of participants' flow states regarding solving math problems applied durint pre-test and post-test phases"
    if (endsWith(tbl.name,"flow.text")) tbl.description = "Table with information of participants' flow states regarding textual production activities applied durint pre-test and post-test phases"
    if (endsWith(tbl.name,"flow.debat")) tbl.description = "Table with information of participants' flow states regarding debate activities applied durint pre-test and post-test phases"

    if (startsWith(tbl.name,"participants")) tbl.description = "Table with all participants information"

    return(cbind(
      Sheet = tbl.name,
      Table = tbl.description,
      as.data.frame(list(
        name = cols,
        label = as.vector(sapply(cols, FUN = function(col) {
          if (col == "id") return("Participant Identifier")
          if (col == "cod") return("Participant Identifier")
          if (col == "Cor.Raca") return("Participant ethnicity")
          if (col == "Escola") return("School")
          if (col == "Idade") return("Age")
          if (col == "Sexo") return("Participant Gender")
          if (col == "Nivel") return("Education Level")
          if (col == "Necessidade.Deficiencia") return("Participant disability")
          if (col == "Serie") return("School Year")
          if (col == "Turma") return("Class of School Year")
          if (col == "Zona") return("The areas and regions the students came from")

          if (col == "Stari.Grupo") return("Division for the application of Stari")
          if (col == "WG.Grupo") return("Division for the application of WordGen")

          if (endsWith(col,"score")) return("Score")
          if (endsWith(col,"vocab")) return("Vocabulary score")
          if (endsWith(col,"vocab.teach")) return("Vocabulary taught score")
          if (endsWith(col,"vocab.non.teach")) return("Vocabulary not taught score")
          if (endsWith(col,"TFL.omitidas")) return("Omitted-reading words")
          if (endsWith(col,"TFL.omitidas.per.min")) return("Omitted-reading words per minute")
          if (endsWith(col,"TFL.lidas")) return("Reading words")
          if (endsWith(col,"TFL.lidas.per.min")) return("Reading words per minute")
          if (endsWith(col,"TFL.erradas")) return("Wrong reading words")
          if (endsWith(col,"TFL.erradas.per.min")) return("Wrong reading words per minute")
          if (endsWith(col,"TFL.corretas")) return("Correct reading words")
          if (endsWith(col,"TFL.corretas.per.min")) return("Correct reading words per minute")
          if (endsWith(col,"leitura.compreensao")) return("Reading comprehension")


          if (endsWith(col,"dfs.media")) return("Disposition of flow score")
          if (endsWith(col,"fss.media")) return("Flow state score")

          if (endsWith(col, ".pre") || endsWith(col, ".pos") || endsWith(col,".quintile")) {
            pos = ""
            if (endsWith(col,".pre")) pos = "(result from pre-test)"
            if (endsWith(col,".pos")) pos = "(result from post-test)"

            pre = ""
            if (startsWith(col,"leitura.compreensao")) pre = "Reading comprehension"
            if (startsWith(col,"leitura.compreensao.quintile")) pre = "Quintile according to reading comprehension"

            if (startsWith(col,"score")) pre = "Score"
            if (startsWith(col,"score.tde")) pre = "TDE (Writing Test) Score"
            if (startsWith(col,"score.tde.quintile")) pre = "Quintile according to TDE (Writing Test) score"

            if (startsWith(col,"TFL")) pre = "from TFL (Reading fluency test)"

            if (startsWith(col,"TFL.corretas")) pre = paste0("Correct reading words ", pre)
            if (startsWith(col,"TFL.corretas.quintile")) pre = paste0("Quintile reading according to correct words ", pre)
            if (startsWith(col,"TFL.corretas.per.min")) pre = paste0("Correct reading words per minute ", pre)
            if (startsWith(col,"TFL.corretas.per.min.quintile")) pre = paste0("Quintile according to correct reading words per minute ", pre)

            if (startsWith(col,"TFL.erradas")) pre = paste0("Wrong reading words ", pre)
            if (startsWith(col,"TFL.erradas.quintile")) pre = paste0("Quintile according to correct words ", pre)
            if (startsWith(col,"TFL.erradas.per.min")) pre = paste0("Wrong reading words per minute ", pre)
            if (startsWith(col,"TFL.erradas.per.min.quintile")) pre = paste0("Quintile according to wrong reading words per minute ", pre)

            if (startsWith(col,"TFL.lidas")) pre = paste0("Reading words ", pre)
            if (startsWith(col,"TFL.lidas.quintile")) pre = paste0("Quintile according to reading words ", pre)
            if (startsWith(col,"TFL.lidas.per.min")) pre = paste0("Reading words per minute ", pre)
            if (startsWith(col,"TFL.lidas.per.min.quintile")) pre = paste0("Quintile according to reading words per minute ", pre)

            if (startsWith(col,"TFL.omitidas")) pre = paste0("Omitted-reading words ", pre)
            if (startsWith(col,"TFL.omitidas.quintile")) pre = paste0("Quintile according to omitted-reading words ", pre)
            if (startsWith(col,"TFL.omitidas.per.min")) pre = paste0("Omitted-reading words per minute ", pre)
            if (startsWith(col,"TFL.omitidas.per.min.quintile")) pre = paste0("Quintile according to omitted-reading words per minute ", pre)

            if (startsWith(col,"vocab")) pre = paste0("Vocabulary ", pre)
            if (startsWith(col,"vocab.quintile")) pre = paste0("Quintile according to vocabulary taught ", pre)
            if (startsWith(col,"vocab.non.teach")) pre = paste0("Vocabulary not taught ", pre)
            if (startsWith(col,"vocab.non.teach.quintile")) pre = paste0("Quintile according to vocabulary not taught ", pre)
            if (startsWith(col,"vocab.teach")) pre = paste0("Vocabulary taught ", pre)
            if (startsWith(col,"vocab.teach.quintile")) pre = paste0("Quintile according to vocabulary taught ", pre)

            return(ifelse(pos == "", pre, paste0(pre," ",pos)))
          }

          if (startsWith(col, "gain.")) {
            pre = ""
            if (startsWith(col, "gain.leitura.compreensao")) pre = "Gain of reading comprehension (posttest - pretest)"

            if (startsWith(col, "gain.flow.")) pre = "Gain of Flow State (posttest - pretest)"
            if (startsWith(col, "gain.score.tde")) pre = "Gain of TDE (Writing Test) Score (posttest - pretest)"

            if (startsWith(col, "gain.TFL.corretas")) pre = "Gain of Correct Reading Words score (posttest - pretest) in fluency reading test"
            if (startsWith(col, "gain.TFL.corretas.per.min")) pre = "Gain of Correct Reading Words per Minute score (posttest - pretest) in fluency reading test"

            if (startsWith(col, "gain.TFL.lidas")) pre = "Gain of Reading Words score (posttest - pretest) in fluency reading test"
            if (startsWith(col, "gain.TFL.lidas.per.min")) pre = "Gain of Reading Words per Minute score (posttest - pretest) in fluency reading test"

            if (startsWith(col, "gain.vocab")) pre = "Gain (posttest - pretest) in vocabulary test"
            if (startsWith(col, "gain.vocab.non.teach")) pre = "Gain (posttest - pretest) in reference to non-teaching vocabulary"
            if (startsWith(col, "gain.vocab.teach")) pre = "Gain (posttest - pretest) in reference to teaching vocabulary"

            pos = ""
            if (endsWith(col, ".debat")) pos = " in relation to Debate"
            if (endsWith(col, ".text")) pos = " in relation to Textual Production"
            if (endsWith(col, ".read")) pos = " in relation to Reading"
            if (endsWith(col, ".math")) pos = " in the context of Math Problem Solving"
            return(ifelse(pos =="", pre, paste0(pre," ",pos)))
          }

          if (startsWith(col, "dfs")) {
            pre = ""
            if (startsWith(col, "dfs.")) pre = "Disposition Flow Score"

            pos = ""
            if (endsWith(col, ".debat")) pos = " in relation to Debate"
            if (endsWith(col, ".text")) pos = " in relation to Textual Production"
            if (endsWith(col, ".read")) pos = " in relation to Reading"
            if (endsWith(col, ".math")) pos = " in the context of Math Problem Solving"
            return(paste0(ifelse(
              pos != "", pre,
              paste0("Item ", gsub("[^0-9]", "",col), " of Disposition Flow Questionnaire")), pos))
          }
          if (startsWith(col, "fss")) {
            pre = ""
            if (startsWith(col, "fss.")) pre = "Flow State Score"

            pos = ""
            if (endsWith(col, ".debat")) pos = " in relation to Debate"
            if (endsWith(col, ".text")) pos = " in relation to Textual Production"
            if (endsWith(col, ".read")) pos = " in relation to Reading"
            if (endsWith(col, ".math")) pos = " in the context of Math Problem Solving"
            return(paste0(ifelse(
              pos != "", pre,
              paste0("Item ", gsub("[^0-9]", "",col), " of Flow State Questionnaire")), pos))
          }

          if (startsWith(col, "P") || startsWith(col, "Q")) {
            return(paste0("Item ", gsub("[^0-9]", "",col), " of Questionnaire or Test"))
          }

          else return(col)
        })),
        type = as.vector(sapply(cols, FUN = function(col) {
          if ((startsWith(col,"dfs") && !(startsWith(col,"dfs."))) || (startsWith(col,"fss") && !(startsWith(col,"fss.")))) {
            if (!is.na(is.numeric(gsub("[^0-9]", "",col)))) return("Ordinal")
          }
          if (is.character(tbl[[col]])) return("Categorical")
          if (is.numeric(tbl[[col]]) && is.integer(tbl[[col]])) return("Ordinal")
          if (is.numeric(tbl[[col]])) return("Continuous")
        }))))))
  }))

  writexl::write_xlsx(append(db, list(legend = legend)), "data/data.xlsx")

}

#### Load data ####

sum2 <- function(x) {
  if (all(is.na(x))) NA else sum(x, na.rm = T)
}

tde.pre <- read_excel("data/data.xlsx", sheet = "tde.pre")
tde.pre[tde.pre == 2] <- 1
tde.pre$score <- apply(select(tde.pre, starts_with("P")), 1, sum2)

tde.pos <- read_excel("data/data.xlsx", sheet = "tde.pos")
tde.pos[tde.pos == 2] <- 1
tde.pos$score <- apply(select(tde.pos, starts_with("P")), 1, sum2)


dat <- read_excel("data/data.xlsx", sheet = "sumary")

tde <- tde.pre[,c("cod","score")]
colnames(tde) <- c("cod","score.tde.norm.pre")
dat <- merge(dat, tde, by="cod", all.x = T, all.y = F)

tde <- tde.pos[,c("cod","score")]
colnames(tde) <- c("cod","score.tde.norm.pos")
dat <- merge(dat, tde, by="cod", all.x = T, all.y = F)

#### Estimate quintiles based on tde.norm.pre ####

qtl <- quantile(dat$score.tde.norm.pre, probs = seq(0, 1, 1/5), na.rm = T)

dat$score.tde.norm.quintile <- sapply(
  dat$score.tde.norm.pre, function(v) {
    if (!is.na(v) && is.numeric(v)) {
      if (v < qtl[2]) "1st quintile"
      else if (v < qtl[3]) "2nd quintile"
      else if (v <= qtl[4]) "3rd quintile"
      else if (v <= qtl[5]) "4th quintile"
      else "5th quintile"
      } else NA })


#### - writing database - ####

writexl::write_xlsx(
  list(summary = dat,
       tde.pre.norm = tde.pre,
       tde.pos.norm = tde.pos),
  path = "data/data-tde-norm.xlsx"
)

