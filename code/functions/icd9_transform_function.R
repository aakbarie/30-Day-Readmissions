# Diagnostic codes for readmission function

diag_mutation <- function(diag) {
    Diag = case_when(
        startsWith(diag, "250") ~ 'Diabetes',
        diag %in% c("390":"459", "785") ~ 'Circulatory',
        diag %in% c("460":"519", "786") ~ 'Respiratory',
        diag %in% c("520":"579", "787") ~ 'Digestive',
        diag %in% c("800":"999") ~ 'Injury',
        diag %in% c("710":"739") ~ 'Musculoskeletal',
        diag %in% c("580":"629", "788") ~ 'Genitourinary',
        diag %in% c("140":"239") ~ "Neoplasms",
        diag %in% c(
            "001":"139", "240":"249", "251":"389", "630":"709", "780":"782", "784", "790":"799", "740":"759"
        ) ~ "Other", 
        startsWith(diag, "E") ~ 'Other',
        startsWith(diag, "V") ~ 'Other',
        T ~ "Other"
    )
    return(Diag)
}