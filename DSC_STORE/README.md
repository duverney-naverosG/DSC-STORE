# proyecto
## paso a paso para trabajar
 **GIT**
 

 - Para clonar el proyecto se deberá abrir la terminal de git, y moverse a la carpeta donde desea clonar el trabajo, una vez en el directorio procederá a digitar el siguiente comando en el terminal
	 - git clone [https://github.com/CarlosSantiagoGonzalezCuellar/DSC_STORE.git](https://github.com/CarlosSantiagoGonzalezCuellar/DSC_STORE.git)
 
 - Una vez clonado el proyecto comprobara las ramas del proyecto con el siguiente comando
 
	 git branch
	deberá haber la siguientes ramas:
	- ramaCristian
	- ramaDuverney
	- ramaSantiago
	
	en caso de no haber ramas se deberán de crear, con el comando
	git branch nombre-nueva-rama, las ramas deben tener el mismo nombre como se mostró anteriormente
 - Luego deberá pasarse a su rama correspondiente con el comando
	 - git checkout nombre-rama

## consejos para el uso correcto de git y evitar problemas

 - Cuando halla agregado o modificado archivos del proyecto y desea subirlos al git se usará el siguiente comando
 
	 - git add .
	 - git commit –m “comentario”
	 - git push origin nombre-rama
 - Si han pasado algunas horas y desea seguir trabajando. Deberá actualizar las modificaciones de las otras ramas, deberá usar el comando
 git pull
### mas informacion

[https://rogerdudler.github.io/git-guide/index.es.html](https://rogerdudler.github.io/git-guide/index.es.html)
