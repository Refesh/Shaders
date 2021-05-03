# Datos
Autor: Fernando Marcelo Alonso

Asignatura: Creando Interfaces de Usuario(CIU)

## Introducción
Esta práctica consiste en el uso de shaders de fragmento para crear un prototípo

## Implementación y argumentación

Para la implementación he usado Processing 3.5.4.

**Vista:** Nos encontramos con una sola vista sin interacción donde se proyecta una animación visual.

**Figuras:** Para la práctica he generado una matriz de cuadrados a la que realizaré una serie de transformaciones.

**Movimiento cuadrados:** Nos encontramos con dos animaciones que se suceden una a la otra de forma ciclíca en la primera los cuadrados se mueven en diagonal, una diagonal se mueve en una dirección y la siguiente en la contraria, en la seguna parte de la animación se mueven las mitades de los cuadrados en otra diagonal, cada mitad se mueve en dirección opuesta a la otra. Decidí que el movimiento no fuera igual en las dos partes para que sea tan repetitivo, también cabe destacar que hay un movimiento afectado por el seno con lo que los cuadrados van y vuelven.

**Rotación:** Por último decidí aplicar un movimiento circular a toda la animación lo que añade dinamismo a la misma..

## GIF
![Alt Text](shaders.gif)
