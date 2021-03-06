# CABALITO </br>
# SISTEMA DE INFORMACIÓN PARA COMERCIALIZACION DE VEHICULOS </br>
## Integrantes:
* **Erwin Alejo Gutierrez**
* **Josemar Elian Castro Paz**
* **Silvana Stephanie Muñoz Vargas**
* **Alvin Jamil Poma Tarqui**
## Introducción: <br>
<div style='text-align: justify;'> En la ciudad de La Paz y el Alto, la comercialización de vehículos es una actividad muy común, tanto de segunda como de primera mano. Aunque existen varios concesionarios, cvendedores informales que apoyan con la compra y venta de vehículos, no existe ninguna plataforma dirigida para esta actividad, como la exposición de todos los automóviles con la información correspondiente del mismo de forma segura. El presente proyecto está orientado a la comercialización de vehículos en la ciudad de La Paz y el Alto. El objetivo es construir una plataforma mediante la cual tanto vendedores de vehículos como los interesados puedan ingresar y tengan información de todas las movilidades disponibles en su entorno, además tener una búsqueda más minuciosa por criterios como el precio, modelo, antigüedad, etc. </div>
</br>
<p align="center">
    <img src="https://i.imgur.com/dEPodai.png" width="200" align="center" margintop ="10">

</p>

## Antecedentes:
La comercialización de autos se ha vuelto una actividad económica común en Bolivia, en el año 2019 aumentó en un 14%, esto significa que la estabilidad económica tuvo un avance en materia social, el cual beneficia a las familias. La cifra a la cual se llegó es de $us 767 millones, en 2018 lo que se alcanzó fue de $us 670 millones. Como se puede observar en la figura 1, a partir del año 2017 incremento la venta de vehículos.</br>
<div align="center">
    <img src="http://cd1.eju.tv/wp-content/uploads/2019/09/img_5d84259c6d395.jpg" align="center">
</div>
Figura 1.- Histograma de la venta de vehículos y combustibles desde del año 2015 hasta el 2019. 
</br>

No obstante, han habido múltiples denuncias por estafa al momento de la transacción de un vehículo, por ejemplo, durante la cuarentena se realizó una página web, que titulaba “Segunda subasta electrónica 2020” en la que aparecen varios objetos en remate como los vehículos. El link de esta página fue compartido 22 veces en Facebook y circulaba una cadena por WhatsApp. En la página de inicio, fueron colocadas hasta notas institucionales de la Aduana Nacional, para tratar de darle mayor credibilidad. Otro detalle a tomar en cuenta, es que los logos de la Aduana Nacional que fueron utilizados en esta página estaban pixelados, pudiéndose notar que los mismos estaban sobrepuestos. Al momento de ingresar a esta página se podía hacer una oferta mediante un formulario que pedían los datos personales del indivuo. Despúes se pueblicaron los nombre de los supuestos ganadores, a los cuales se les pedía hacer un depósito a una cuenta como garantía. Este es el caso de muchas personas que han sido estafadas al momento de la compra de un vehículo. Otro ejemplo fue un caso que se sucitó en Bolivia, cuando se descubrió una red delictiva que operaba desde la cárcel de Palmasola estafando genta con la supuesta venta de vehículos con ducumentos y datos adulterados. Contantemente los delicuentes buscan nuevas formas de envaucar y estafar personas vulnerables ofreciendoles precios "ecónomicos". Sin embargo al moemnto de la adquisión del mismo, desaparecen llevandose el efectivo.
## Identificación del problema:
*  No existe ninguna plataforma que centralice la información de todos los vehículos que estén a la venta, a un nivel local. [Bolivia Verifica](https://boliviaverifica.bo/crean-falsa-pagina-web-de-la-aduana-para-estafar-a-usuarios/), [Pagina Siete](https://www.paginasiete.bo/especial01/2019/12/19/el-mercado-negro-de-los-autos-chutos-240832.html)
* Al momento de buscar un vehículo, no hay categorizaciones del mismo, por lo tanto no es posible una búsqueda mediante diferentes filtros.
* Falta de seguridad en la compra de vehículos de segunda mano, por medio de plataformas informales. [El Diario](https://www.eldiario.net/noticias/2017/2017_08/nt170830/nacional.php?n=47&-detienen-a-estafadores-por-venta-de-vehiculos-a-credito)
## Objetivo General:
Desarrollar un sistema que centralice la compra/venta de vehículos de segunda y primera mano, para simplificar y brindar seguridad a los compradores y vendedores.
## Objetivos Específicos:
* Crear un apartado que contenga información de mecánicos de confianza para que éstos comprueben el estado del vehículo antes de la compra.
* Categorizar la información de los vehículos para que se pueda realizar una búsqueda mediante filtro.
## Límites

* El entorno se limita a la ciudad de La Paz y el Alto, inicialmente.. 
* El sistema no procesa ningún tipo de pago. 
* Solo será un prototipo de un sistema
* El programa sólo funcionará en dispositivos móviles.
## Elementos de los requerimientos del sistema
### Patrocinador del proyecto
Inicialmente los patrocinadores del proyecto serían los progenitores del equipo compuesto por Alvin Poma, Erwin Alejo, Josemar Castro y Silvana Muñoz, debido a que éstos no generan ingresos económicos. Sin embargo, una vez concretado el primer startup del proyecto se buscará nuevos inversionistas como las concesionarias de autos. 
### Necesidades del negocio
* Se necesita un sistema que centralice la información de autos a la venta.
* Se necesita que mediante el sistema se permita hacer búsquedas mediante filtros o caracteristicas específicas como el precio, modelo o estado.
* Se necesita que el sistema brinde confiabilidad tanto a los vendedores como a los interesados. 
* Se necesita que el sistema que se desarrolle sea intuitivo y brinde una buena experiencia a los usuarios que lo utilicen.
* Se necesita que el sistema brinde información de mecánicos fiables para la revisión del auto a la venta.
### Requerimientos del negocio
#### Requerimientos Funcionales
**Codigo:** RF-1 <br>
**Tipo:** Requerimiento de Seguridad<br>
**Prioridad:** Alta<br>
**Nombre:** Sign - In al sistema<br>
**Funcionalidad:** Mediante este se verificará la identidad del usuario para protección del mismo y del resto de usuarios.<br>
**Entrada:** Nombre + Apellido + Numero de Telefono + CI<br>
**Salida:** Nombre de Usuario y contraseña<br>

**Codigo:** RF-2<br>
**Tipo:** Verificación de Datos<br>
**Prioridad:** Alta <br>
**Nombre:** Publicación de Vehículos <br>
**Funcionalidad:** El sistema verificará el vehículo a publicitar mediante un contacto con tránsito, para asi poder ver si el vehículo se encuentra en las condiciones óptimas para ser vendido.<br>
**Entrada:** Nombre del Propietario + Número de placa + Rua + CI <br>
**Salida:** Validación del Vehículo  <br>

**Codigo:** RF-3 <br>
**Tipo:** Requerimiento de Seguridad<br>
**Prioridad:** Media <br>
**Nombre:** Vinculación con Mecánicos <br>
**Funcionalidad:** Se proporcionará una evaluación diagnóstica para ver si el meca¡ánico esta completamente capacitado para realizar los controles al momento de encontrarse en una cita acordada por la aplicación.<br>
**Entrada:** Respuestas a la evaluación diagnóstico<br>
**Salida:** Resultado de confirmación de vínculo con la empresa <br>

**Codigo:** RF-4 <br>
**Tipo:** Gestión de Datos <br>
**Prioridad:** Media <br>
**Nombre:** Búsqueda de Vehículos<br>
**Funcionalidad:** El usuario a partir de filtros podrá realizar una búsqueda minuciosa del vehículo que se ajusta a sus necesidades<br> **Entrada:** Filtros aplicados <br>
**Salida:** Vehículos con las características que se buscaron <br>

#### Requerimientos No Funcionales
**Codigo:** RNF-1 <br>
**Tipo:** Requerimiento de conexión<br>
**Nombre:** Conexión a internet. <br>
**Funcionalidad:**  El sistema deberá contar con una conexión estable a internet.<br>

**Codigo:** RNF-2 <br>
**Tipo:** Requerimiento de eficiencia <br>
**Nombre:** Rendimiento eficiente <br>
**Funcionalidad:**  El sistema debe permitir la búsqueda de vehículos de manera eficiente y eficaz.<br>

**Codigo:** RNF-3 <br>
**Tipo:** Requerimiento de interfaz de usuario <br>
**Nombre:** Simplicidad de la interfaz<br>
**Funcionalidad:**  La interfaz de usuario debe permitir el uso del sistema de manera fluida, sin la
necesidad de realizar un largo proceso de aprendizaje.<br>

**Codigo:** RNF-4 <br>
**Tipo:** Requerimiento de Sistema Opertivo <br>
**Nombre:** Uso de Android <br>
**Funcionalidad:**  El sistema será capaz de funcionar en el sistema operativo de [Andorid](https://www.android.com/).<br>

### Valor del negocio
Los beneficios que traera el sistema a la empresa son: <br>
* 5% de aumento en publicidad <br>
* 1.5% de aumento en participacion del mercado<br>
* Bs. 100,000 de ahorro en costo de mantenimiento de oficinas y personal <br>
* Bs. 5,000 de ahorro en costos de papeleria <br>
### Cuestiones especiales
* El contacto con los concesionarios será después de una primera versión para que la aplicación pueda tener cierta popularidad y sea mas fácil y factible el acuerdo con los concesionarios.
* El mercado para un principio solo sera abarcado para celulares android ya que el desarrollo y subidad a la AppStore son mas costosos.
## Análisis de factibilidad
### Riesgos del proyecto
* Existen otras plataformas que ofrecen un servicio similar por lo que sera un poco difícil captar la atención de las personas al principio.
* Poca ganancia al inicio del proyecto, debido a que el contacto con los concesionarios será un proceso largo que es una de las partes que aporta mas a las ganancias.
* A pesar de que se pondrá seguridad a la hora de las compras es difícil controlar totalmente el buen uso de la aplicación para vendedores o compradores que realizan consultas o publicaciones falsas. Esto ocasionaría que muchos clientes desconfiaran de la aplicación y se pasen a otras soluciones.
### Componentes principales
### Factibilidad Técnica
* La aplicacion sera de un uso simple e intuitivo para el vendedor y cliente.
* Como la aplicación esta diseñada para dispostivos moviles, su acceso sera medianamente facil ya que muchas personas manejan estos dispositivos.
* El proyecto crecerá con el tiempo, por lo que su tamaño en las primeras versiones sera mediano, lo que permitirá un fácil desarrollo.
### Factibilidad Económica
Para determinar el costo del desarrollo de la aplicación se tomará en cuenta: 
* Cantidad de horas invertidas.
* Equipos para el soporte de software de desarrollo.
### Factibilidad Organizacional
El desarrollo de la organización va dirigido a los usuarios que necesitan comprar un vehículo con las preferencias específicas, por otra parte, para atraer usuarios a la aplicación se ofrecerá a los talleres a usar el sistema y ellos inviten a otras personas a la aplicación de venta como publicidad tanto vendedores y compradores, finalmente los encargados del proyecto son:
<br>

* **Encargado del proyecto:** Erwin Alejo Gutiérrez <br>	
* **Gerencia Senior:** Silvana Stephanie Muñoz Vargas <br>	
* **Usuarios:** Clientes <br>			
### Anexos: 
* https://www.paginasiete.bo/especial01/2019/12/19/el-mercado-negro-de-los-autos-chutos-240832.html
* https://www.eldiario.net/noticias/2017/2017_08/nt170830/nacional.php?n=47&-detienen-a-estafadores-por-venta-de-vehiculos-a-credito
* https://boliviaverifica.bo/crean-falsa-pagina-web-de-la-aduana-para-estafar-a-usuarios
* https://eldeber.com.bo/santa-cruz/miercoles-26-el-presidente-civico-romulo-calvo-debe-declarar-ante-el-fiscal_197158
* https://eju.tv/2019/09/en-bolivia-venta-de-autos-crecio-14-y-facturo-us-767-mm-a-julio/

