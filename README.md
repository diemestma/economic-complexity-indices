# Índices de Complejidad Económica
Este repositorio contiene dos métodos para calcular el Índice de Complejidad Económica (ICE). El ICE fue formulado, inicialmente, como un indicador de la sofisticación de los productos exportados por un país. En los últimos años, el ICE también se ha utilizado para medir la sofisticación de las industrias o patentes dentro de una ciudad o región.

## Contenido
- [ice.R](/ice.R). En este R Script se encuentra lo siguiente:
  1. El código para calcular la matriz de Ventajas Comparativas Reveladas binaria (RCA, por sus siglas en inglés).[^1]
  2. El código para calcular el ICE por dos métodos: 1) el método de reflexiones[^1] y 2) el método matricial[^2].
- [ice.do](/ice.do). En este Do File solo se encuentra el código para calcular el RCA y el método de reflexiones. Tener en cuenta que se utiliza el entorno MATA.
     
Nota: cualquier sugerencia de mejora puedes enviarme un correo a dffjs98@gmail.com

[^1]: Fuente: Hidalgo, C. & Hausmann, R. (2009). The building blocks of economic complexity. *PNAS*. 106(26), 10570-10575. https://doi.org/10.1073/pnas.0900943106

[^2]: Fuente: Mealy, P., Farmer, J. D. & Teytelboym, A. (2019). Interpreting economic complexity. *Science Advances*. 5(1). https://doi.org/10.1126/sciadv.aau1705
