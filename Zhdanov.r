carone <- list(
  name="Renault",
  price=550000,
  petrol=T,
  print("I'm driving"),
  print("biiip-biiip!!")
)

class(carone) <- "autopark"

attributes(carone)

carone

print.autopark <- function(auto){
  cat(auto$name, "\n")
  cat("Цена", auto$price, "\n")
  cat("Машина на бензиновом двигателе?", auto$petrol, "\n")
}

methods(, "autopark")
print.autopark

cartwo <- list(
  name = "Audi",
  price = 680000,
  diesel = T,
  mileage = 1500 # новый класс содержит одну доп переменную по сравнению с родительским
)
class(cartwo) <- "miautopark"

class(cartwo) <- c("miautopark", "autopark") # эта доп переменная указывается первой

cartwo

print.miautopark <- function(auto){
  cat(auto$name, "\n")
  cat("Цена", auto$price, "\n")
  cat("Машина на дизельном двигателе?", auto$diesel, "\n")
  cat("Какой у машины пробег", auto$mileage, "\n")
}

methods(, "miautopark")
print.miautopark

carthree <- list(
  name = "Mersedes",
  price = 980000,
  petrol = T,
  mileage = 1700, # новый класс содержит одну доп переменную по сравнению с родительским
  climatcontrol = T
)
class(carthree) <- "diautopark"

class(carthree) <- c("diautopark", "autopark") # эта доп переменная указывается первой

carthree

print.diautopark <- function(auto){
  cat(auto$name, "\n")
  cat("Цена", auto$price, "\n")
  cat("Машина на бензиновом двигателе?", auto$petrol, "\n")
  cat("Какой у машины пробег", auto$mileage, "\n")
  cat("У машины есть климат контроль?", auto$climatcontrol, "\n")
}

methods(, "diautopark")
print.diautopark

carfour <- list(
  name = "BMW",
  price = 1230000,
  petrol = F,
  mileage = 1500, # новый класс содержит одну доп переменную по сравнению с родительским
  climatcontrol = T,
  electricity = T
)
class(carfour) <- "elautopark"

class(carfour) <- c("elautopark", "autopark") # эта доп переменная указывается первой

carfour

print.elautopark <- function(auto){
  cat(auto$name, "\n")
  cat("Цена", auto$price, "\n")
  cat("Машина на бензиновом двигателе?", auto$petrol, "\n")
  cat("Какой у машины пробег", auto$mileage, "\n")
  cat("У машины есть климат контроль?", auto$climatcontrol, "\n")
  cat("Машина на электрическом двигателе?", auto$electricity, "\n")
}

methods(, "elautopark")
print.elautopark

chelovek <- function(){
  v1 <- readline("Информпацию о какой машине вы хотите узнать (Renault, BMW, Audi, Mersedes)?: ")
  if(v1 == "Renault") print.autopark(carone)
  if(v1 == "Audi") print.miautopark(cartwo)
  if(v1 == "Mersedes") print.diautopark(carthree)
  if(v1 == "BMW") print.elautopark(carfour)
}
chelovek()
