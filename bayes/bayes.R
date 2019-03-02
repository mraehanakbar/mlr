data_train <- read.csv(file = "TrainsetTugas1ML.csv", header = T, sep = ",")

bayes.income.high <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$income == ">50K") {
    bayes.income.high <- c(bayes.income.high, index)
  }
}

bayes.income.low <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$income == "<=50K") {
    bayes.income.low <- c(bayes.income.low, index)
  }
}

bayes.age.adult <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$age == "adult") {
    bayes.age.adult <- c(bayes.age.adult, index)
  }
}

bayes.age.old <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$age == "old") {
    bayes.age.old <- c(bayes.age.old, index)
  }
}

bayes.age.young <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$age == "young") {
    bayes.age.young <- c(bayes.age.young, index)
  }
}

bayes.workclass.local <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$workclass == "Local-gov") {
    bayes.workclass.local <- c(bayes.workclass.local, index)
  }
}

bayes.workclass.private <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$workclass == "Private") {
    bayes.workclass.private <- c(bayes.workclass.private, index)
  }
}

bayes.workclass.self <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$workclass == "Self-emp-not-inc") {
    bayes.workclass.self <- c(bayes.workclass.self, index)
  }
}

bayes.education.bachelor <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$education == "Bachelors") {
    bayes.education.bachelor <- c(bayes.education.bachelor, index)
  }
}

bayes.education.highschool <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$education == "HS-grad") {
    bayes.education.highschool <- c(bayes.education.highschool, index)
  }
}

bayes.education.college <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$education == "Some-college") {
    bayes.education.college <- c(bayes.education.college, index)
  }
}

bayes.marital.divorced <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$marital.status == "Divorced") {
    bayes.marital.divorced <- c(bayes.marital.divorced, index)
  }
}

bayes.marital.married <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$marital.status == "Married-civ-spouse") {
    bayes.marital.married <- c(bayes.marital.married, index)
  }
}

bayes.marital.single <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$marital.status == "Never-married") {
    bayes.marital.single <- c(bayes.marital.single, index)
  }
}

bayes.occupation.repair <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$occupation == "Craft-repair") {
    bayes.occupation.repair <- c(bayes.occupation.repair, index)
  }
}

bayes.occupation.managerial <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$occupation == "Exec-managerial") {
    bayes.occupation.managerial <- c(bayes.occupation.managerial, index)
  }
}

bayes.occupation.specialty <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$occupation == "Prof-specialty") {
    bayes.occupation.specialty <- c(bayes.occupation.specialty, index)
  }
}

bayes.relationship.husband <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$relationship == "Husband") {
    bayes.relationship.husband <- c(bayes.relationship.husband, index)
  }
}

bayes.relationship.alone <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$relationship == "Not-in-family") {
    bayes.relationship.alone <- c(bayes.relationship.alone, index)
  }
}

bayes.relationship.own_child <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$relationship == "Own-child") {
    bayes.relationship.own_child <- c(bayes.relationship.own_child, index)
  }
}

bayes.hpw.low <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$hours.per.week == "low") {
    bayes.hpw.low <- c(bayes.hpw.low, index)
  }
}

bayes.hpw.many <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$hours.per.week == "many") {
    bayes.hpw.many <- c(bayes.hpw.many, index)
  }
}

bayes.hpw.normal <- c()
for (index in 1:nrow(data_train)) {
  if (data_train[index, ]$hours.per.week == "normal") {
    bayes.hpw.normal <- c(bayes.hpw.normal, index)
  }
}

