**********************************

* Un método para calcular 
* el índice de complejidad económica

* Nota: el único input necesario para utilizar este código es
* "matrix": una matriz nxm. Donde, n es el número de países y
* m el número de productos exportados. Cada celda en esta 
* matriz muestra la cantidad que un país exporta por producto.

* Autor: Diego Mestanza

* Última modificación: 27-07-2023

**********************************

* Generar matriz de Ventajas Comparativas Reveladas binaria (RCA, en inglés)
	mata: rca = (matrix:/rowsum(matrix)):/(colsum(matrix):/sum(matrix))
	mata: rca = rca :>= 1
	
* Generar Índice de Complejidad Económica (ICE) 
	mata: kc0 = rowsum(rca)
	mata: kp0 = colsum(rca)

	mata: S = rca*pinv(diag(kp0))*rca'
	mata: M = pinv(diag(kc0))*S
	
	mata: eigensystem(M, Vc=., lc=.)
	mata: ice = Re(Vc[., 2])
	
	di "El vector 'ice' es el Índice de Complejidad Económica"
	
