
library(readxl)
library(stringr)
library(stringi)
library(digest)
library(dplyr)

#### Define Functions ####

which.rows.na <- function(df, cnames = colnames(df), not.na = F) {
  df.na = apply(df[,cnames], 2, is.na)
  if (not.na) df.na = !df.na
  which(apply(df.na, 1, sum) > 0)
}

sum2 <- function(x) {
  if (all(is.na(x))) NA else sum(x, na.rm = T)
}

toASCII <- function(x) {
  toupper(
    str_replace_all(
      stri_trans_general(x, id = "Latin-ASCII"), "[^0-9a-zA-Z]+", " "
    )
  )
}

identifyGrupo <- function(df, monitor = NULL) {

  monitors = c(
    "GEOVANNA RIBEIRO","PAULO ROBERTO","EDSON ALVES","JOSE CLEDSON","MARTA FERREIRA",
    "VITORIA LAIS","MARIA MILENA","CARLOS EDUARDO","MARIA LUCIANA","ALAYANNE CARYNE"
  )

  sapply(1:nrow(df), FUN = function(i) {
    if (df$Escola[i] == "EMEB PROFESSOR RICARDO VIEIRA DE LIMA") {
      # EMEB PROF. RICARDO VIEIRA DE LIMA
      #
      # Monitor: José Clêdson
      # Turmas: 6º A, 6º B, 7º A, 8º A
      #
      # Monitor: Marta Ferreira
      # Turmas: 7º D, 8º D, 9º B, 9º D
      #
      # Monitor: Edson Alves
      # Turmas: 6º F, 7º C, 8º C, 9º E

      if (!is.null(monitor) && !(monitor %in% monitors))
        "Controle"
      else if (df$Turma[i] == "6 ANO A" || df$Turma[i] == "6 ANO B"
               || df$Turma[i] == "7 ANO A" || df$Turma[i] == "8 ANO A")
        "Experimental"
      else if (df$Turma[i] == "7 ANO D" || df$Turma[i] == "8 ANO D"
               || df$Turma[i] == "9 ANO B" || df$Turma[i] == "9 ANO D")
        "Experimental"
      else if (df$Turma[i] == "6 ANO F" || df$Turma[i] == "7 ANO C"
               || df$Turma[i] == "8 ANO C" || df$Turma[i] == "9 ANO E")
        "Experimental"
      else
        "Controle"

    } else if (df$Escola[i] == "EMEB EXPEDITO PORFIRIO DOS SANTOS") {
      # EMEB VER. EXPEDITO PORFÍRIO DOS SANTOS
      #
      # Monitor: Paulo Roberto
      # Turmas: 6º B, 7º B, 8º B, 9º A

      if (!is.null(monitor) && !(monitor %in% monitors))
        "Controle"
      else if (df$Turma[i] == "6 ANO B VESP 2023" || df$Turma[i] == "7 ANO B VESP 2023"
               || df$Turma[i] == "8 ANO B VESP 2023" || df$Turma[i] == "9 ANO A MAT 2023")
        "Experimental"
      else
        "Controle"

    } else if (df$Escola[i] == "EMEB PADRE ANCHIETA") {
      # EMEB PE. ANCHIETA
      #
      # Monitor: Maria Luciana
      # Turmas: 6º B, 7º A, 8º B, 9º B

      if (!is.null(monitor) && !(monitor %in% monitors))
        "Controle"
      else if (df$Turma[i] == "6 ANO B" || df$Turma[i] == "7 ANO A"
               || df$Turma[i] == "8 ANO B" || df$Turma[i] == "9 ANO B")
        "Experimental"
      else
        "Controle"

    } else if (df$Escola[i] == "EMEF PADRE JOSE DOS SANTOS MOUSINHO") {
      # EMEB PE. MOUSINHO
      #
      # Monitor: Carlos Eduardo
      # Turmas: 6º A, 7º A, 8º B, 9º A

      if (!is.null(monitor) && !(monitor %in% monitors))
        "Controle"
      else if (df$Turma[i] == "6 A" || df$Turma[i] == "7 A"
               || df$Turma[i] == "8 B" || df$Turma[i] == "9 A")
        "Experimental"
      else
        "Controle"

    } else if (df$Escola[i] == "EMEB PROFESSORA MARIA QUEIROZ FERRO") {
      # EMEB PROFESSORA MARIA QUEIROZ FERRO
      #
      # Monitor: Maria Milena
      # Turmas: 6º B, 7º E, 8º A, 9º C
      #
      # Monitor: Alayane Caryne
      # Turmas: 6ª A, 7º A, 8º C, 9º B

      if (!is.null(monitor) && !(monitor %in% monitors))
        "Controle"
      else if (df$Turma[i] == "6 ANO B" || df$Turma[i] == "7 ANO E"
               || df$Turma[i] == "8 ANO A" || df$Turma[i] == "9 ANO C")
        "Experimental"
      else if (df$Turma[i] == "6 ANO A" || df$Turma[i] == "7 ANO A"
               || df$Turma[i] == "8 ANO C" || df$Turma[i] == "9 ANO B")
        "Experimental"
      else
        "Controle"

    } else if (df$Escola[i] == "EMEB NATANAEL DA SILVA") {
      # EMEB NATANAEL DA SILVA
      #
      # Monitor: Vitória Laís
      # Turmas: 6º B, 7º B, 8º A, 9º A

      if (!is.null(monitor) && !(monitor %in% monitors))
        "Controle"
      else if (df$Turma[i] == "6 ANO B" || df$Turma[i] == "7 ANO B"
               || df$Turma[i] == "8 ANO" || df$Turma[i] == "9 ANO A")
        "Experimental"
      else
        "Controle"
    } else {
      "Controle"
    }
  })

}

#### DATA TABLE - participants ####

Alunos <- read_excel("data/PPEE - Fase 2/Dados/Base de Dados/RelaçãoCompletaAlunos.xlsx")

Alunos$Escola = toASCII(Alunos$Escola)
Alunos$Turma = toASCII(Alunos$Turma)
Alunos$Nome = toASCII(Alunos$Nome)
Alunos$cod = sapply(paste0(Alunos$Nome, Alunos$Turma, Alunos$Escola), digest)
Alunos$id = paste0("P",1:nrow(Alunos))

df.participants <- Alunos[which(!duplicated(Alunos$cod)),
                          !colnames(Alunos) %in% c("Nome","Responsável Legal","Data Nascimento")]

colnames(df.participants) <- sapply(colnames(df.participants), function(x) {
  str_replace_all(
    stri_trans_general(x, id = "Latin-ASCII"), "[^0-9a-zA-Z]+", "."
  )
})

#### DATA TABLE - Stari (fluencia) ####

path = "data/PPEE - Fase 2/Dados/STARI/STARI_pre-rev.xlsx"
df.stari.pre <- do.call(
  rbind, lapply(excel_sheets(path), FUN = function(x, path) {

    df = read_excel(path = path, sheet = x)

    df$Escola = toASCII(df$Escola)
    df$Turma = toASCII(df$Turma)
    df$Nome = toASCII(df$Nome)
    df$cod = sapply(paste0(df$Nome, df$Turma, df$Escola), digest)

    for (coln in colnames(df)[startsWith(colnames(df),"TFL.")]) {
      df[[coln]] = sapply(df[[coln]], FUN = function(i) {
        if (is.numeric(as.numeric(i))) as.numeric(i) else NA
      })
    }

    for (coln in colnames(df)[startsWith(colnames(df),"leitura.")]) {
      df[[coln]] = sapply(df[[coln]], FUN = function(i) {
        if (is.numeric(as.numeric(i))) as.numeric(i) else NA
      })
    }

    df$leitura.compreensao <- apply(select(df, starts_with("leitura.")) , 1 , sum2)

    select(df, starts_with("cod"), starts_with("Grupo"), starts_with("TFL."), starts_with("leitura"))
  }, path = path))

df.stari.pre <- df.stari.pre[,c(
  "cod","Grupo",
  "TFL.lidas.per.min","TFL.erradas.per.min","TFL.omitidas.per.min","TFL.corretas.per.min",
  "TFL.lidas","TFL.erradas","TFL.omitidas","TFL.corretas","leitura.compreensao")]
df.stari.pre <- df.stari.pre[which.rows.na(df.stari.pre, colnames(df.stari.pre)[c(-1,-2)], T),]

sum(duplicated(df.stari.pre$cod))

path = "data/PPEE - Fase 2/Dados/STARI/STARI_pos-rev.xlsx"
df.stari.pos <- do.call(
  rbind, lapply(excel_sheets(path), FUN = function(x, path) {

    df = read_excel(path = path, sheet = x)

    df$Escola = toASCII(df$Escola)
    df$Turma = toASCII(df$Turma)
    df$Nome = toASCII(df$Nome)
    df$cod = sapply(paste0(df$Nome, df$Turma, df$Escola), digest)

    for (coln in colnames(df)[startsWith(colnames(df),"TFL.")]) {
      df[[coln]] = sapply(df[[coln]], FUN = function(i) {
        if (is.numeric(as.numeric(i))) as.numeric(i) else NA
      })
    }

    for (coln in colnames(df)[startsWith(colnames(df),"leitura.")]) {
      df[[coln]] = sapply(df[[coln]], FUN = function(i) {
        if (is.numeric(as.numeric(i))) as.numeric(i) else NA
      })
    }

    df$leitura.compreensao <- apply(select(df, starts_with("leitura.")) , 1 , sum2)

    select(df, starts_with("cod"), starts_with("Grupo"), starts_with("TFL."), starts_with("leitura."))
  }, path = path))

df.stari.pos <- df.stari.pos[,c(
  "cod","Grupo",
  "TFL.lidas.per.min","TFL.erradas.per.min","TFL.omitidas.per.min","TFL.corretas.per.min",
  "TFL.lidas","TFL.erradas","TFL.omitidas","TFL.corretas","leitura.compreensao")]
df.stari.pos <- df.stari.pos[which.rows.na(df.stari.pos, colnames(df.stari.pos)[c(-1,-2)], T),]


sum(duplicated(df.stari.pos$cod))

cod.stari <- unique(c(df.stari.pre$cod, df.stari.pos$cod))

#### Update DATA TABLE - participants ####

df.tmp <- rbind(df.stari.pre[,c("cod","Grupo")], df.stari.pos[,c("cod","Grupo")])
df.tmp <- df.tmp[!duplicated(df.tmp),]
colnames(df.tmp) <- c("cod","Stari.Grupo")

df.participants <- merge(df.participants, df.tmp, all.x = T, all.y = F)

df.tmp <- data.frame(cod = df.participants$cod,
                     WG.Grupo = identifyGrupo(df.participants))
df.tmp <- df.tmp[!df.tmp$cod %in% cod.stari,]

df.participants <- merge(df.participants, df.tmp, all.x = T, all.y = F)

sum(duplicated(df.participants$cod))

## DATA TABLE - vocabulario

library(readxl)

path = "data/PPEE - Fase 2/Dados/Pré-teste/1 - Avaliação de Vocabulário/Avaliação de vocabulário - RelaçãoCompletaAlunos.xlsx"
df.vocab.pre <- do.call(
  rbind, lapply(excel_sheets(path)[-c(1)], FUN = function(x, path) {

    df = read_excel(path = path, sheet = x)

    df$Escola = toASCII(df$Escola)
    df$Turma = toASCII(df$Turma)
    df$Nome = toASCII(df$Nome)
    df$cod = sapply(paste0(df$Nome, df$Turma, df$Escola), digest)

    for (coln in colnames(df)[startsWith(colnames(df),"Q")]) {
      df[[coln]] = sapply(df[[coln]], FUN = function(i) {
        if (is.numeric(as.numeric(i))) as.numeric(i) else NA
      })
    }

    select(df, starts_with("cod"), starts_with("Q"))
  }, path = path))

df.vocab.pre$vocab <- apply(select(df.vocab.pre, starts_with("Q")) , 1 , sum2)

sum(duplicated(df.vocab.pre))
sum(duplicated(df.vocab.pre$cod))

df.vocab.pre <- df.vocab.pre[!df.vocab.pre$cod %in% df.vocab.pre$cod[duplicated(df.vocab.pre$cod)],]
df.vocab.pre <- df.vocab.pre[which.rows.na(df.vocab.pre, colnames(df.vocab.pre)[-1], T),]




library(readxl)

path = "data/PPEE - Fase 2/Dados/Pós-teste/1 - Avaliação de vocabulário/Avaliação de vocabulário - RelaçãoCompletaAlunos.xlsx"
df.vocab.pos <- do.call(
  rbind, lapply(excel_sheets(path)[-c(1)], FUN = function(x, path) {

    df = read_excel(path = path, sheet = x)

    df$Escola = toASCII(df$Escola)
    df$Turma = toASCII(df$Turma)
    df$Nome = toASCII(df$Nome)
    df$cod = sapply(paste0(df$Nome, df$Turma, df$Escola), digest)

    for (coln in colnames(df)[startsWith(colnames(df),"Q")]) {
      df[[coln]] = sapply(df[[coln]], FUN = function(i) {
        if (is.numeric(as.numeric(i))) as.numeric(i) else NA
      })
    }

    select(df, starts_with("cod"), starts_with("Q"))
  }, path = path))

df.vocab.pos$vocab <- apply(select(df.vocab.pos, starts_with("Q")) , 1 , sum2)

sum(duplicated(df.vocab.pos))
sum(duplicated(df.vocab.pos$cod))

df.vocab.pos <- df.vocab.pos[!df.vocab.pos$cod %in% df.vocab.pos$cod[duplicated(df.vocab.pos$cod)],]
df.vocab.pos <- df.vocab.pos[which.rows.na(df.vocab.pos, colnames(df.vocab.pos)[-1], T),]


#### DATA TABLE - TDE ####

library(readxl)

path = "data/PPEE - Fase 2/Dados/Pré-teste/TDE II - Subteste Escrita/Avaliação TDE II - RelaçãoCompletaAlunos.xlsx"
df.tde.pre <- do.call(
  rbind, lapply(excel_sheets(path)[-c(1)], FUN = function(x, path) {

    df = read_excel(path = path, sheet = x)

    df$Escola = toASCII(df$Escola)
    df$Turma = toASCII(df$Turma)
    df$Nome = toASCII(df$Nome)
    df$cod = sapply(paste0(df$Nome, df$Turma, df$Escola), digest)

    for (coln in colnames(df)[startsWith(colnames(df),"P")]) {
      df[[coln]] = sapply(df[[coln]], FUN = function(i) {
        if (is.numeric(as.numeric(i))) as.numeric(i) else NA
      })
    }

    select(df, starts_with("cod"), starts_with("P"))
  }, path = path))

df.tde.pre$score <- apply(select(df.tde.pre, starts_with("P")) , 1 , sum2)

sum(duplicated(df.tde.pre))
sum(duplicated(df.tde.pre$cod))

df.tde.pre <- df.tde.pre[!df.tde.pre$cod %in% df.tde.pre$cod[duplicated(df.tde.pre$cod)],]
df.tde.pre <- df.tde.pre[which.rows.na(df.tde.pre, colnames(df.tde.pre)[-1], T),]


library(readxl)

path = "data/PPEE - Fase 2/Dados/Pós-teste/TDE II - Subteste de escrita/Avaliação TDE II - RelaçãoCompletaAlunos.xlsx"
df.tde.pos <- do.call(
  rbind, lapply(excel_sheets(path)[-c(1)], FUN = function(x, path) {

    df = read_excel(path = path, sheet = x)

    df$Escola = toASCII(df$Escola)
    df$Turma = toASCII(df$Turma)
    df$Nome = toASCII(df$Nome)
    df$cod = sapply(paste0(df$Nome, df$Turma, df$Escola), digest)

    for (coln in colnames(df)[startsWith(colnames(df),"P")]) {
      df[[coln]] = sapply(df[[coln]], FUN = function(i) {
        if (is.numeric(as.numeric(i))) as.numeric(i) else NA
      })
    }

    select(df, starts_with("cod"), starts_with("P"))
  }, path = path))

df.tde.pos$score <- apply(select(df.tde.pos, starts_with("P")) , 1 , sum2)


sum(duplicated(df.tde.pos))
sum(duplicated(df.tde.pos$cod))

df.tde.pos <- df.tde.pos[!df.tde.pos$cod %in% df.tde.pos$cod[duplicated(df.tde.pos$cod)],]
df.tde.pos <- df.tde.pos[which.rows.na(df.tde.pos, colnames(df.tde.pos)[-1], T),]


#### DATA TABLE - FLOW ####


df.flow <- lapply(
  list(
    read = list(
      sufix = "read",
      path = "data/PPEE - Fase 2/Dados/Pré-teste/2 - DFS e FSS Short BR/1 - Leitura.xlsx"
    ),
    math = list(
      sufix = "math",
      path = "data/PPEE - Fase 2/Dados/Pré-teste/2 - DFS e FSS Short BR/2 - Resolução de Problemas Matemáticos.xlsx"
    ),
    text = list(
      sufix = "text",
      path = "data/PPEE - Fase 2/Dados/Pré-teste/2 - DFS e FSS Short BR/3 - Produção Textual.xlsx"
    ),
    debat = list(
      sufix = "debat",
      path = "data/PPEE - Fase 2/Dados/Pré-teste/2 - DFS e FSS Short BR/4 - Debates.xlsx"
    )
  ), FUN = function(info) {

    pdf <- do.call(
      rbind, lapply(excel_sheets(info$path)[-c(1)], FUN = function(x, path, skip) {

        df = read_excel(path = path, sheet = x, skip = skip)

        df$Escola = toASCII(df$Escola)
        df$Turma = toASCII(df$Turma)
        df$Nome = toASCII(df$Nome)
        df$cod = sapply(paste0(df$Nome, df$Turma, df$Escola), digest)

        cnames.flow = c("dfs1","dfs2","dfs3","dfs4","dfs5","dfs6","dfs7","dfs8","dfs9",
                        "fss1","fss2","fss3","fss4","fss5","fss6","fss7","fss8","fss9")
        for (coln in cnames.flow) {
          df[[coln]] = sapply(df[[coln]], FUN = function(i) {
            if (is.numeric(as.numeric(i))) as.numeric(i) else NA
          })
        }

        df <- select(df, starts_with("cod"), starts_with("Grupo"), starts_with("dfs"), starts_with("fss"))
        df <- df[which.rows.na(df, cnames.flow, T),]
      }, path = info$path, skip = 2))

    pdf$dfs.media <- apply(select(pdf, starts_with("dfs")) , 1 , mean, na.rm = T)
    pdf$fss.media <- apply(select(pdf, starts_with("fss")) , 1 , mean, na.rm = T)

    print(sum(duplicated(pdf)))
    print(sum(duplicated(pdf$cod)))

    pdf <- pdf[!pdf$cod %in% pdf$cod[duplicated(pdf$cod)],]
    pdf <- pdf[which.rows.na(pdf, colnames(pdf)[-1], T),]


    return(pdf)
  })


#### Summary of DF ####

df.summary <- merge(df.participants, df.vocab.pre[,c("cod","vocab")],
                    by="cod", all.x = T, all.y = F)
df.summary <- merge(df.summary, df.vocab.pos[,c("cod","vocab")],
                    by="cod", all.x = T, all.y = F, suffixes = c(".pre",".pos"))

df.summary <- merge(df.summary, df.tde.pre[,c("cod","score")],
                    by="cod", all.x = T, all.y = F)
df.summary <- merge(df.summary, df.tde.pos[,c("cod","score")],
                    by="cod", all.x = T, all.y = F, suffixes = c(".tde.pre",".tde.pos"))

df.summary <- merge(df.summary, select(df.stari.pre, starts_with("cod"), starts_with("TFL."), starts_with("leitura.compreensao")),
                    by="cod", all.x = T, all.y = F)
df.summary <- merge(df.summary, select(df.stari.pos, starts_with("cod"), starts_with("TFL."), starts_with("leitura.compreensao")),
                    by="cod", all.x = T, all.y = F, suffixes = c(".pre",".pos"))

df.summary <- merge(df.summary, df.flow$read[,c("cod","dfs.media","fss.media")],
                    by="cod", all.x = T, all.y = F)
df.summary <- merge(df.summary, df.flow$math[,c("cod","dfs.media","fss.media")],
                    by="cod", all.x = T, all.y = F, suffixes = c(".read",".math"))
df.summary <- merge(df.summary, df.flow$text[,c("cod","dfs.media","fss.media")],
                    by="cod", all.x = T, all.y = F, suffixes = c(".read",".text"))
df.summary <- merge(df.summary, df.flow$debat[,c("cod","dfs.media","fss.media")],
                    by="cod", all.x = T, all.y = F, suffixes = c(".text",".debat"))

print(sum(duplicated(df.summary)))
print(sum(duplicated(df.summary$cod)))


df.summary[["gain.vocab"]] <- df.summary$vocab.pos - df.summary$vocab.pre
df.summary[["gain.score.tde"]] <- df.summary$score.tde.pos - df.summary$score.tde.pre

df.summary[["gain.TFL.lidas.per.min"]] <- df.summary$TFL.lidas.per.min.pos - df.summary$TFL.lidas.per.min.pre
df.summary[["gain.TFL.corretas.per.min"]] <- df.summary$TFL.corretas.per.min.pos - df.summary$TFL.corretas.per.min.pre
df.summary[["gain.TFL.lidas"]] <- df.summary$TFL.lidas.pos - df.summary$TFL.lidas.pre
df.summary[["gain.TFL.corretas"]] <- df.summary$TFL.corretas.pos - df.summary$TFL.corretas.pre

df.summary[["gain.leitura.compreensao"]] <- df.summary$leitura.compreensao.pos - df.summary$leitura.compreensao.pre

df.summary[["gain.flow.read"]] <- df.summary$fss.media.read - df.summary$dfs.media.read
df.summary[["gain.flow.math"]] <- df.summary$fss.media.math - df.summary$dfs.media.math
df.summary[["gain.flow.text"]] <- df.summary$fss.media.text - df.summary$dfs.media.text
df.summary[["gain.flow.debat"]] <- df.summary$fss.media.debat - df.summary$dfs.media.debat

df.summary <- df.summary[which.rows.na(
  df.summary, do.call(c, lapply(
    c("vocab.","score.","TFL.","leitura.","dfs.","fss.","gain."), FUN = function(cname) {
      colnames(df.summary)[startsWith(colnames(df.summary), cname)]
    })), T),]



#### Calculating Quintiles in Summary ####

for (coln in str_replace_all(colnames(df.summary)[endsWith(colnames(df.summary), ".pre")],"\\.pre","")) {
  qtl <- quantile(df.summary[[paste0(coln,'.pre')]], probs = seq(0, 1, 1/5), na.rm = T)
  df.summary[[paste0(coln,'.quintile')]] <- sapply(df.summary[[paste0(coln,'.pre')]], function(v) {
    if (!is.na(v) && is.numeric(v)) {
      if (v < qtl[2]) "1st quintile"
      else if (v < qtl[3]) "2nd quintile"
      else if (v <= qtl[4]) "3rd quintile"
      else if (v <= qtl[5]) "4th quintile"
      else "5th quintile"
    } else NA })
}


#### ------ ####


writexl::write_xlsx(
  list(sumary = df.summary,
       vocab.pre = df.vocab.pre, vocab.pos = df.vocab.pos,
       tde.pre = df.tde.pre, tde.pos = df.tde.pos,
       flow.read = df.flow$read, flow.math = df.flow$math,
       flow.text = df.flow$text, flow.debat = df.flow$debat,
       fluencia.pre = df.stari.pre[,-c(2)], fluencia.pos = df.stari.pos[,-c(2)],
       participants = df.participants), path = "data/data.xlsx")


