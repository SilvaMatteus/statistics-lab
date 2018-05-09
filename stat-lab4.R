'
Matteus Sthefano Leite da Silva
matteus.silva@ccc.ufcg.edu.br

>>> Atividade 3
'

###############
#   PART1   #
###############

# Use o m ́etodo congruencial para gerar 1000 n ́umeros pseudo aleat ́orios uniforme (0, 1). Considere
# os seguintes parˆametros: M = 16, a = 1 e c = 1. Construa o histograma para esses n ́umeros
# gerados e verifique a forma do gr ́afico  ́e coerente com o modelo uniforme em quest ̃ao.

rand_numbers <- c()
rand_numbers[1] <- 40
for (i in 2:1000) {
  rand_numbers[i] <- (rand_numbers[i-1] + 1) %% 120
}
rand_numbers = rand_numbers/120

rand_numbers
hist(rand_numbers)

###############
#   PART 2    #
###############

# Use os n ́umeros pseudo aleat ́orios gerados anteriormente para gerar dados de uma exponencial, cuja
# F.d.a.  ́e dada por:
#    F(t) = 1 − e ** −2t , t > 0
#    Temos que:
#    F-¹(t) = -ln(1-t)/2

rand_numbers = -(log(1-rand_numbers))/2
rand_numbers
hist(rand_numbers)

###############
#   PART 3    #
###############
 
# Usando os geradores do software R, gere 1000 valores de uma distribui ̧c ̃ao binomial com n = 10 e
# p = 0, 2. Construa o histograma associado a esses dados.

rand_binom <- rbinom(1000, 10, 0.2)
rand_binom
hist(rand_binom)

