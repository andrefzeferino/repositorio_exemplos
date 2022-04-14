#####Sabendo que 𝑓(𝑥,𝑦,𝑧)=𝑥4𝑦−5𝑥3𝑧2−2 e 𝑔(𝑥,𝑦)=0,9𝑥3−2𝑥2+6𝑦 são funções 
#####que a partir dos parâmetros de entrada retornam um valor calculado segundo as 
#####respectivas fórmulas, faça:
#####a) Escreva uma função chamada calcula.f, que retorna o valor da 𝑓(𝑥,𝑦,𝑧) e uma 
#####função chamada calcula.g que retorna o valor da 𝑔(𝑥,𝑦).

#a) 
calcula.f <- function (x, y, z) {
  f = (x^4)*y - 5*(x^3)*(z^2) - 2
  return(f)
}
calcula.f (1,2,3)

calcula.g <- function (x, y) {
  g = 0.9*(x^3) -2*(x^2) +6*y
  return(g)
}
calcula.g (4,5)
