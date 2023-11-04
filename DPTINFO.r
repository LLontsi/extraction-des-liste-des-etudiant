#liste data science
library(readxl)
library(writexl)
library(dplyr)
cr1=read_excel("liste_l3.xlsx")
cr2=read_excel("LISTE.xlsx")
# Effectuer une jointure interne sur les colonnes de comparaison
result <- inner_join(cr1, cr2, by = c("matricule" = "MATRICULE"))
# Enregistrer les résultats dans un fichier Excel
write_xlsx(result, "resultats.xlsx")
resultats <- read_xlsx("resultats.xlsx")
valeurs_manquantes <- anti_join(variable1, resultats, by = c("colonne1" = "colonne2"))
# Enregistrer le résultat complet dans un nouveau fichier Excel
write_xlsx(resultats_complets, "resultats_complets.xlsx")
#liste administrateur systene
library(readxl)
  data <- read_excel("liste administration systeme (3).xlsx")
  data1 <- read_excel("liste_l3.xlsx")
  library(dplyr)
  library(writexl)
  # Effectuer une jointure interne sur les colonnes de comparaison
  result <- inner_join(data, data1, by = c("Matricule" = "matricule"))
  # Enregistrer les résultats dans un fichier Excel
  write_xlsx(result, "resultats1.xlsx")
  valeurs_manquantes <- anti_join(data, resultats, by = c("Matricule" = "matricule"))
  # Ajouter les valeurs manquantes à la fin du fichier résultat
  resultats_complets <- bind_rows(resultats, valeurs_manquantes)
  # Enregistrer le résultat complet dans un nouveau fichier Excel
  write_xlsx(resultats_complets, "resultats_complets.xlsx")
