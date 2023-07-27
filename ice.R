###################

# Dos métodos para calcular 
# el índice de complejidad económica

# Nota: el único input necesario para utilizar este código es
# "matrix": una matriz nxm. Donde, n es el número de países y
# m el número de productos exportados. Cada celda en esta 
# matriz muestra la cantidad que un país exporta por producto.

# Autor: Diego Mestanza

# Última modificación: 27-07-2023

###################

# Generar matriz de Ventajas Comparativas Reveladas binaria (RCA, en inglés)---- 
rca <- (matrix/rowSums(matrix))%*%(diag(1/(colSums(matrix)/sum(matrix))))

rca[rca >= 1] <- 1

rca[rca < 1] <- 0

# Generar Índice de Complejidad Económica (ICE)----

# Método matricial
D <- rca %>%
  rowSums() %>%
  diag()

U <- rca %>%
  colSums() %>%
  diag()

S <- rca%*%solve(U)%*%t(rca)

mcc <- solve(D)%*%S

ice <- eigen(mcc)$vectors[,2] %>% 
  as.matrix()

print("El vector 'ice' es el Índice de Complejidad Económica")

# Método de Reflexiones
max <- 20 # número de iteraciones

for (i in 1:max){
  
  if (i == 1){
    
    kc <- (1/kc0)*rowSums(t(t(Mcp)*kp0))
    
    kp <- (1/kp0)*colSums(Mcp*kc0)
    
  } else {
    
    assign("kc_i_1", kc)
    
    kc <- (1/kc0)*rowSums(t(t(Mcp)*kp))
    
    kp <- (1/kp0)*colSums(Mcp*get("kc_i_1"))
    
  }
  
}

ice <- kc

print("El vector 'ice' es el Índice de Complejidad Económica")
