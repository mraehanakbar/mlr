# Read the data train
data_train <- read.csv(file = "TrainsetTugas1ML.csv", header = T, sep = ",")

# Collect all indexes of high income
bayes.income.high <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$income == ">50K") {
    bayes.income.high <- c(bayes.income.high, index)
  }
}

# Collect all indexes of low income
bayes.income.low <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$income == "<=50K") {
    bayes.income.low <- c(bayes.income.low, index)
  }
}

# Collect all indexes of adult age
bayes.age.adult <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$age == "adult") {
    bayes.age.adult <- c(bayes.age.adult, index)
  }
}

# Collect all indexes of old age
bayes.age.old <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$age == "old") {
    bayes.age.old <- c(bayes.age.old, index)
  }
}

# Collect all indexes of young age
bayes.age.young <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$age == "young") {
    bayes.age.young <- c(bayes.age.young, index)
  }
}

# Collect all indexes of local workclass
bayes.workclass.local <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$workclass == "Local-gov") {
    bayes.workclass.local <- c(bayes.workclass.local, index)
  }
}

# Collect all indexes of private workclass
bayes.workclass.private <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$workclass == "Private") {
    bayes.workclass.private <- c(bayes.workclass.private, index)
  }
}

# Collect all indexes of self workclass
bayes.workclass.self <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$workclass == "Self-emp-not-inc") {
    bayes.workclass.self <- c(bayes.workclass.self, index)
  }
}

# Collect all indexes of bachelor education
bayes.education.bachelor <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$education == "Bachelors") {
    bayes.education.bachelor <- c(bayes.education.bachelor, index)
  }
}

# Collect all indexes of highschool education
bayes.education.highschool <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$education == "HS-grad") {
    bayes.education.highschool <- c(bayes.education.highschool, index)
  }
}

# Collect all indexes of college education
bayes.education.college <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$education == "Some-college") {
    bayes.education.college <- c(bayes.education.college, index)
  }
}

# Collect all indexes of divorced marital status
bayes.marital.divorced <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$marital.status == "Divorced") {
    bayes.marital.divorced <- c(bayes.marital.divorced, index)
  }
}

# Collect all indexes of married marital status
bayes.marital.married <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$marital.status == "Married-civ-spouse") {
    bayes.marital.married <- c(bayes.marital.married, index)
  }
}

# Collect all indexes of single marital status
bayes.marital.single <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$marital.status == "Never-married") {
    bayes.marital.single <- c(bayes.marital.single, index)
  }
}

# Collect all indexes of repair occupation
bayes.occupation.repair <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$occupation == "Craft-repair") {
    bayes.occupation.repair <- c(bayes.occupation.repair, index)
  }
}

# Collect all indexes of managerial occupation
bayes.occupation.managerial <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$occupation == "Exec-managerial") {
    bayes.occupation.managerial <- c(bayes.occupation.managerial, index)
  }
}

# Collect all indexes of specialty occupation
bayes.occupation.specialty <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$occupation == "Prof-specialty") {
    bayes.occupation.specialty <- c(bayes.occupation.specialty, index)
  }
}

# Collect all indexes of husband relationship
bayes.relationship.husband <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$relationship == "Husband") {
    bayes.relationship.husband <- c(bayes.relationship.husband, index)
  }
}

# Collect all indexes of alone relationship
bayes.relationship.alone <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$relationship == "Not-in-family") {
    bayes.relationship.alone <- c(bayes.relationship.alone, index)
  }
}

# Collect all indexes of own child relationship
bayes.relationship.own_child <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$relationship == "Own-child") {
    bayes.relationship.own_child <- c(bayes.relationship.own_child, index)
  }
}

# Collect all indexes of low hours per week
bayes.hpw.low <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$hours.per.week == "low") {
    bayes.hpw.low <- c(bayes.hpw.low, index)
  }
}

# Collect all indexes of many hours per week
bayes.hpw.many <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$hours.per.week == "many") {
    bayes.hpw.many <- c(bayes.hpw.many, index)
  }
}

# Collect all indexes of normal hours per week
bayes.hpw.normal <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$hours.per.week == "normal") {
    bayes.hpw.normal <- c(bayes.hpw.normal, index)
  }
}

# A function to calculates the probability of age with certain income
probability_of_age <- function(income, age) {
  data_income <-
    switch (income,
            "high" = bayes.income.high,
            "low" = bayes.income.low
    )
  
  data_age <-
    switch (as.character(age),
            "adult" = bayes.age.adult,
            "old" = bayes.age.old,
            "young" = bayes.age.young
    )
  
  n_data_total <- length(data_income)
  n_data_matched <- length(intersect(data_income, data_age))
  
  return(n_data_matched / n_data_total)
}

# A function to calculates the probability of workclass with certain income
probability_of_workclass <- function(income, workclass) {
  data_income <-
    switch (income,
            "high" = bayes.income.high,
            "low" = bayes.income.low
    )
  
  data_workclass <-
    switch (as.character(workclass),
            "Local-gov" = bayes.workclass.local,
            "Private" = bayes.workclass.private,
            "Self-emp-not-inc" = bayes.workclass.self
    )
  
  n_data_total <- length(data_income)
  n_data_matched <- length(intersect(data_income, data_workclass))
  
  return(n_data_matched / n_data_total)
}

# A function to calculates the probability of education with certain income
probability_of_education <- function(income, education) {
  data_income <-
    switch (income,
            "high" = bayes.income.high,
            "low" = bayes.income.low
    )
  
  data_education <-
    switch (as.character(education),
            "Bachelors" = bayes.education.bachelor,
            "HS-grad" = bayes.education.highschool,
            "Some-college" = bayes.education.college
    )
  
  n_data_total <- length(data_income)
  n_data_matched <- length(intersect(data_income, data_education))
  
  return(n_data_matched / n_data_total)
}

# A function to calculates the probability of marital status with certain income
probability_of_marital <- function(income, marital) {
  data_income <-
    switch (income,
            "high" = bayes.income.high,
            "low" = bayes.income.low
    )
  
  data_marital <-
    switch (as.character(marital),
            "Divorced" = bayes.marital.divorced,
            "Married-civ-spouse" = bayes.marital.married,
            "Never-married" = bayes.marital.single
    )
  
  n_data_total <- length(data_income)
  n_data_matched <- length(intersect(data_income, data_marital))
  
  return(n_data_matched / n_data_total)
}

# A function to calculates the probability of occupation with certain income
probability_of_occupation <- function(income, occupation) {
  data_income <-
    switch (income,
            "high" = bayes.income.high,
            "low" = bayes.income.low
    )
  
  data_occupation <-
    switch (as.character(occupation),
            "Craft-repair" = bayes.occupation.repair,
            "Exec-managerial" = bayes.occupation.managerial,
            "Prof-specialty" = bayes.occupation.specialty
    )
  
  n_data_total <- length(data_income)
  n_data_matched <- length(intersect(data_income, data_occupation))
  
  return(n_data_matched / n_data_total)
}

# A function to calculates the probability of relationship with certain income
probability_of_relationship <- function(income, relationship) {
  data_income <-
    switch (income,
            "high" = bayes.income.high,
            "low" = bayes.income.low
    )
  
  data_relationship <-
    switch (as.character(relationship),
            "Husband" = bayes.relationship.husband,
            "Not-in-family" = bayes.relationship.alone,
            "Own-child" = bayes.relationship.own_child
    )
  
  n_data_total <- length(data_income)
  n_data_matched <- length(intersect(data_income, data_relationship))
  
  return(n_data_matched / n_data_total)
}

# A function to calculates the probability of hours per week with certain income
probability_of_hpw <- function(income, hpw) {
  data_income <-
    switch (income,
            "high" = bayes.income.high,
            "low" = bayes.income.low
    )
  
  data_hpw <-
    switch (as.character(hpw),
            "low" = bayes.hpw.low,
            "many" = bayes.hpw.many,
            "normal" = bayes.hpw.normal
    )
  
  n_data_total <- length(data_income)
  n_data_matched <- length(intersect(data_income, data_hpw))
  
  return(n_data_matched / n_data_total)
}

predicts_label_with_bayes <- function(data) {
  n_income_low <- length(bayes.income.low)
  n_income_high <- length(bayes.income.high)
  n_income_total <- n_income_low + n_income_high
  
  probability_of_low_income <- 1
  probability_of_low_income <- probability_of_low_income * probability_of_age("low", data$age)
  probability_of_low_income <- probability_of_low_income * probability_of_workclass("low", data$workclass)
  probability_of_low_income <- probability_of_low_income * probability_of_education("low", data$education)
  probability_of_low_income <- probability_of_low_income * probability_of_marital("low", data$marital.status)
  probability_of_low_income <- probability_of_low_income * probability_of_occupation("low", data$occupation)
  probability_of_low_income <- probability_of_low_income * probability_of_relationship("low", data$relationship)
  probability_of_low_income <- probability_of_low_income * probability_of_hpw("low", data$hours.per.week)
  probability_of_low_income <- probability_of_low_income * (n_income_low / n_income_total)
  
  probability_of_high_income <- 1
  probability_of_high_income <- probability_of_high_income * probability_of_age("high", data$age)
  probability_of_high_income <- probability_of_high_income * probability_of_workclass("high", data$workclass)
  probability_of_high_income <- probability_of_high_income * probability_of_education("high", data$education)
  probability_of_high_income <- probability_of_high_income * probability_of_marital("high", data$marital.status)
  probability_of_high_income <- probability_of_high_income * probability_of_occupation("high", data$occupation)
  probability_of_high_income <- probability_of_high_income * probability_of_relationship("high", data$relationship)
  probability_of_high_income <- probability_of_high_income * probability_of_hpw("high", data$hours.per.week)
  probability_of_high_income <- probability_of_high_income * (n_income_high / n_income_total)
  
  result <- if (probability_of_low_income >= probability_of_high_income) {
    "<=50K"
  } else {
    ">50K"
  }
  
  return(result)
}

# Read data test
data_test <- read.csv(file = "TestsetTugas1ML.csv")

# Attachs the predicted label
for (index in 1:nrow(data_test)) {
  predicted_label <- predicts_label_with_bayes(data_test[index, ])
  data_test[index, "income"] <- predicted_label
}

# Write the result
write.csv(data_test, file = "TebakanTugas1ML.csv", row.names = F)
