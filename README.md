# iv-test

Contenedor para pasar tests a los ejercicios de infraestructura
virtual. 

Sobre el fork del repositorio de la asignatura, y una vez hecho el
commit que modifique el fichero del hito correspondiente, se ejecuta

    docker run -t -v  $PWD:/test jjmerelo/iv-test
    
Necesitas tener docker instalado (con permiso para ejecución desde
usuario) y una conexión a Internet para descargarse el contenedor (la
primera vez que se ejecute).
