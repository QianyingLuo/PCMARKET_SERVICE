CREATE TABLE IF NOT EXISTS user(
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(70) UNIQUE NOT NULL,
    full_name VARCHAR(50) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT IGNORE INTO user (username, password, email, full_name, address, phone) VALUES ("admin", "admin", "admin", "admin", "admin", "admin");


CREATE TABLE IF NOT EXISTS product(
     id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(255) NOT NULL,
     description TEXT(3000) NOT NULL,
     type VARCHAR(50) NOT NULL,
     brand VARCHAR(50) NOT NULL,
     stock INT(10) NOT NULL,
     price FLOAT(10) NOT NULL,
     discounted_price FLOAT(10),
     stars float(5),
     image TEXT(1000) NOT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Portátil - Samsung Galaxy Book4 Pro, 16" WQXGA+, Intel® Evo™ Edition Core™ Ultra 7-155H, 16GB RAM, 512GB, Arc®, W11H, IA, Gris', 
       'Descripción
Potencia para mantenerte en marcha
El procesador de la versión pro de Galaxy Book4 roza casi la perfección. Estamos hablando del Intel® Core™ Ultra de última generación, que te ofrece un rendimiento incomparable, ahora impulsado por la IA más potente. Con una NPU avanzada integrada, las imágenes se generan a alta velocidad, con precisión y eficiencia de consumo, para que puedas completar incluso los proyectos más exigentes con facilidad.

Pantalla táctil antirreflejos. Un nuevo mundo de posibilidades
Con el nuevo panel táctil de Galaxy Book4 y Galaxy Book4 360 podrás impulsar tu creatividad a nuevas cotas desplazando tus dedos por la pantalla para navegar fácilmente. Y en el caso de Galaxy Book4 360, podrás doblar la pantalla para convertir tu PC en una Tablet, y utilizar el S Pen para dar vida a tus obras de arte como un profesional.

Expón tus ideas a todo color
Experimenta un nivel de detalle, nitidez y calidad que no te esperas. Reduce la emisión de luz azul para mayor comodidad ocular y te ofrece un brillo máximo de 400 nits, llegando hasta 500 nits en contenidos HDR.
',
       'portatil',
       'Samsung',
       38,
       1999,
       1499,
       5,
       'static/images/category_portatil1.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Samsung Galaxy Book4 Pro, 16" WQXGA+, Intel® Evo™ Edition Core™ Ultra 7-155H, 16GB RAM, 512GB, Arc®, W11H, IA, Gris'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Portátil gaming - Lenovo IdeaPad Gaming 3 15ACH6, 15.6" Full-HD, AMD Ryzen™ 5 5500H, 16GB RAM, 512GB SSD, GeForce RTX™ 2050, Sin sistema operativo', 
       'Descripción
Potencia y rendimiento a raudales es lo que vas a encontrar con el portátil gaming IdeaPad Gaming 3 15ACH6 en color Shadow Black. Equipado con un procesador AMD Ryzen™ 5 5500H, una gráfica GeForce® RTX™ 2050 de 4 GB y con 16 GB de RAM, podrás jugar durante horas y hacer maratones gaming con gran fluidez, sin que el equipo se resienta. Con un almacenamiento de 512 GB podrás guardar todo aquello que necesites, y al ser SSD, el equipo trabajará y cargará aplicaciones y juegos a gran velocidad.

Gran capacidad de almacenamiento
Gracias a su gran almacenamiento interno 512 GB SSD, podrás transferir tus datos en alta velocidad. Lo mejor es que la memoria de tipo SSD, transfiere datos 20 veces más rápido que un disco duro convencional. Además, el portátil gaming Lenovo tiene 16 GB de memoria RAM, de tipo DDR4, con una gran frecuencia de hasta 3200 MHz, lo que supondrá una reducción considerable en los tiempos de carga.

Gráficos NVIDIA® GeForce® RTX 2050
Con la revolucionaria arquitectura NVIDIA, los juegos y el contenido en streaming nunca volverán a ser lo mismo. Consigue toda la potencia que necesitas para obtener un rendimiento rápido, fluido y eficiente con NVIDIA® GeForce® RTX 2050.

Colores ricos y brillantes Full HD con 144 Hz
Los colores claros y realistas cobran vida con una resolución Full HD (1920 x 1080 ) de 15.6" con 144 Hz tipo IPS. Visualiza contenido sin problemas desde cualquier ángulo con tus amigos y familiares.
',
       'portatil',
       'Lenovo',
       20,
       599,
       0,
       4.5,
       'static/images/category_portatil2.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil gaming - Lenovo IdeaPad Gaming 3 15ACH6, 15.6" Full-HD, AMD Ryzen™ 5 5500H, 16GB RAM, 512GB SSD, GeForce RTX™ 2050, Sin sistema operativo'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Portátil - Lenovo IdeaPad Slim 3 15IAH8, 15.6" Full-HD, Intel® Core™ i5-12450H, 16GB RAM, 512GB SSD, UHD Graphics, Sin sistema operativo, Gris', 
       'Descripción
El portátil IdeaPad Slim 3 15IAH8 de Lenovo combina un perfil fino, potencia y velocidad para que salgas a la carretera día y noche. Es lo suficientemente resistente como para afrontar cualquier cosa que le pidas y lo suficientemente ligero como para transportarlo sin esfuerzo. No renuncies a nada con este dispositivo Smart, ligero y basado en pruebas de especificaciones militares.

Arquitectura híbrida de rendimiento
El procesador Intel® Core™ de 12ª generación transforma tu experiencia informática y de juego, ya que integra dos microarquitecturas de núcleo totalmente nuevas en un único chip, gracias a Intel® Thread Director el procesador divide de forma inteligente el trabajo entre P-cores (núcleos de rendimiento) y E-cores (núcleos de eficiencia). Estas tecnologías mejoran los videojuegos y la productividad al garantizar que las tareas en segundo plano no distraen la atención de los núcleos más potentes, una optimización inteligente de las cargas de trabajo, lo que es un paso generacional en el rendimiento.

Almacenamiento SSD
El espacio de este ordenador nunca va a ser un problema. Su disco duro SSD tiene una capacidad de 512 GB por lo que podrás guardar infinidad de archivos sin estar preocupándote por añadir memorias externas o ir borrando documentos. Además, cuenta con 16 GB de RAM tipo LPDDR5 a 4800 MHz.

Tus proyectos en alta definición Full HD
Tus juegos o proyectos ahora tienen una nitidez nunca imaginada gracias a la pantalla TN de 15.6 pulgadas y alta definición. Su resolución Full-HD de 1920 x 1080 píxeles proporciona una imagen detallada, clarísima y con los colores más vivos que nunca.
',
       'portatil',
       'Lenovo',
       60,
       549,
       479,
       4.5,
       'static/images/category_portatil3.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Lenovo IdeaPad Slim 3 15IAH8, 15.6" Full-HD, Intel® Core™ i5-12450H, 16GB RAM, 512GB SSD, UHD Graphics, Sin sistema operativo, Gris'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Portátil - Acer Chromebook CB315-3H-C27W, 15.6" HD, Intel® Celeron® N4120, 4GB RAM, 64GB eMMC, Intel® UHD 600, Google Chrome OS', 
       'Descripción
Diseñado para la vida móvil, este portátil Acer Chromebook CB315-3H-C27W antirreflejante de 15.6" con bisel delgado de 9,5 mm, ofrece una pantalla más grande para hacer más y una batería de larga duración de hasta 12.5 horas de autonomía. Gracias a su potente procesador Intel® Celeron® N4500 proporciona un bajo consumo de energía y una respuesta rápida. Cuenta con 4 GB de memoria RAM, también cuenta con 64 GB eMMC de almacenamiento.

¿Qué es un Chromebook?
Los Chromebook son ordenadores portátiles que utilizan el sistema operativo "Chrome OS", desarrollado por Google. Está diseñado para darte una solución rápida y constante, y lleva lo mejor de los servicios de Google integrados.

Rendimiento con el procesador Intel® Celeron®
Para trabajo, estudio y entretenimiento obtendrás eficacia y versatilidad con el procesador Intel® Celeron® N4120 con frecuencia base de 1.10 GHz y 4 MB de caché. Cuenta con sistema operativo Chrome OS intuitivo y fácil de manejar en el día a día, con 4 GB de RAM y capacidad de almacenamiento de 64 GB eMMC.

64 GB de almacenamiento eMMC
No hará falta que te preocupes por todos esos archivos que quieres conservar para el futuro. Cuenta con un disco duro eMMC de 64 GB y RAM de 4GB. Disfruta de cumplir con tus prioridades y de entretenerte, con total tranquilidad.
',
       'portatil',
       'Acer',
       42,
       249,
       0,
       4,
       'static/images/category_portatil4.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Acer Chromebook CB315-3H-C27W, 15.6" HD, Intel® Celeron® N4120, 4GB RAM, 64GB eMMC, Intel® UHD 600, Google Chrome OS'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Portátil - HP 15S-FQ5048NS , 15.6" Full HD, Intel® Core™ i7-1255U, 16GB RAM, 512GB SSD, Iris® Xᵉ, W11 Home', 
       'Descripción
Permanece conectado para trabajar o jugar siempre que lo necesites gracias al ordenador portátil HP Laptop HP 15s-fq5048ns de 15,6 pulgadas. Este dispositivo tiene una batería de larga duración, un fino y ligero diseño ligero con una pantalla microborde, pantalla Full HD y viene con tecnología antirreflectante.

Procesador que supera a todos los de su clase
Los procesadores Intel® Core™ de 12ª generación presentan grandes avances en todas las áreas que importan ya que combinan el rendimiento de CPU líder en la industria, unos gráficos envolventes, una increíble aceleración de IA (Inteligencia artificial) y una conectividad por cable de gama alta e inalámbrica para ayudar a concentrarte, crear y participar de nuevas formas. 

Gran almacenamiento interno y notable memoria RAM
Gracias a su gran almacenamiento interno 512 GB SSD, podrás transferir tus datos en alta velocidad. Lo mejor es que la memoria de tipo SSD, transfiere datos 20 veces más rápido que un disco duro convencional. No hay que olvidar del almacenamiento interno de512 GB SSD, con el que podrás almacenar todo tipo de archivos, películas, videojuegos sin tener que estar pendiente de la memoria disponible. 

Panel antirreflectante
Disfruta del sol y de tu contenido favorito con este panel antirreflectante. Que sea antirreflectante y de bajo brillo significa que gozarás de menos reflejos cuando esté al aire libre ya que no te afectarán los destellos.
',
       'portatil',
       'HP',
       26,
       899,
       0,
       4.5,
       'static/images/category_portatil5.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - HP 15S-FQ5048NS , 15.6" Full HD, Intel® Core™ i7-1255U, 16GB RAM, 512GB SSD, Iris® Xᵉ, W11 Home'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Portátil - Lenovo IdeaPad 1 15ALC7, 15.6" Full-HD, AMD Ryzen™ 5 5500U, 16GB RAM, 512GB SSD, Radeon™ Onboard Graphics, Windows 11 Home, Gris', 
       'Descripción
Con el portátil Lenovo IdeaPad 1 15ALC7 en color Cloud Grey, no encontrarás rival en tu proyectos y trabajos. Además de ser ultra ligero y fino, tiene una autonomía de 9.32h y unos gráficos Radeon™ Graphics que te harán elevar tus diseños a otra dimensión.

AMD® Ryzen™ 5 5500U, potencia sin límites
Si de verdad quieres rendimiento sin bloqueos, el procesador AMD® Ryzen™ 5 5500U será lo que más necesites, ya que con su frecuencia turbo de 4.0 GHz, los tiempos de carga en programas se reducirán considerablemente. Además, podrás completar grandes hojas de cálculo sin momentos de ralentización o bloqueos.

Tus proyectos en alta definición Full HD
Tus juegos ahora tienen una nitidez nunca imaginada gracias a la pantalla TN de 15.6 pulgadas y alta definición. Su resolución Full-HD de 1920 x 1080 píxeles proporciona una imagen detallada, clarísima y con los colores más vivos que nunca.

Almacenamiento SSD
El espacio de este ordenador nunca va a ser un problema. Su disco duro SSD tiene una capacidad de 512 GB por lo que podrás guardar infinidad de archivos sin estar preocupándote por añadir memorias externas o ir borrando documentos. Además, cuenta con una memoria RAM de 16 GB.

Auténtica gráfica Radeon™ Graphics
Rendimiento rapidísimo, avanzadas tecnologías potentes y alta resolución: ¡con la tarjeta gráfica AMD Radeon™ Graphics lo tendrás todo! Gráficos espectaculares, menor latencia y máxima fluidez para que no haya ningún problema.',
       'portatil',
       'Lenovo',
       80,
       599,
       499,
       4,
       'static/images/category_portatil6.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Lenovo IdeaPad 1 15ALC7, 15.6" Full-HD, AMD Ryzen™ 5 5500U, 16GB RAM, 512GB SSD, Radeon™ Onboard Graphics, Windows 11 Home, Gris'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Portátil - Acer Aspire Go 15 AG15-31P, 15.6" Full HD, Intel® Core™ i3-N305, 8GB RAM, 512GB SSD, UHD Graphics, Windows 11 Home', 
       'Descripción
El portátil Acer Aspire Go 15 AG15-31P en color plata con pantalla de 15.6" Full HD y tiene un diseño ligero y fino y con él podrás realizar todas tus tareas gracias a su potente procesador Intel® Core™ i3-N305.

Intel® Core™ i3-N305 desempeño y valor ampliado
Los procesadores Intel® Core™ i3-N305 para experiencias fáciles, receptivas, optimizada y procesamiento para aplicaciones de inteligencia artificial, cuentan con hasta 8 núcleos, el mismo núcleo eficiente (o E-core) y Gráficos UHD Intel® impulsados por la arquitectura Xe que los procesadores Intel® Core™ de 12a Generación, ofrecen memoria LPDDR5 y DDR5, y E/S ampliada y capacidades para uso de periféricos de Inteligencia artificial como virtualización de hardware, compatibilidad con múltiples sistemas operativos. Colaborar y transmitir con confianza, unidad de procesamiento de imágenes mejorada, gran autonomía de batería habilitada, el procesador aprovecha la energía y la eficiencia para respaldar el aprendizaje inmersivo y de nuevas formas, la navegación y la productividad. Juegos casuales, streaming y mejora adicional en el desempeño de gráficos.

Almacenamiento de 512 GB
Cuenta con un disco SSD de 512 GB en el que podrás guardar todos tus archivos, proyectos, imágenes, vídeos y mucho más sin preocuparte por la falta de espacio. Además, cuenta con una memoria RAM de 8GB de tipo DDR5.

15.6" con resolución Full HD
Trabaja en alta calidad con la pantalla de 15.6 pulgadas con resolución Full HD (1920 x 1080 píxeles) y tecnología Acer ComfyView LED LCD podrás disfrutar al máximo viendo películas y fotografías con la gran calidad de imagen y los detalles de alta definición de 1 millón de píxeles.

Wifi 6
El Wi-Fi 6 aumenta la velocidad de transmisión, mejora la eficiencia y minimiza la congestión de la red cuando se utilizan múltiples dispositivos. La futura red WLAN requiere más rendimiento para hacer frente al aumento del tráfico de datos y gestionar más señales WLAN. 
',
       'portatil',
       'Acer',
       18,
       479,
       429,
       3,
       'static/images/category_portatil7.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Acer Aspire Go 15 AG15-31P, 15.6" Full HD, Intel® Core™ i3-N305, 8GB RAM, 512GB SSD, UHD Graphics, Windows 11 Home'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Portátil - HP 15s-fq5099ns, 15.6" Full HD, Intel® Core™ i7-1255U, 16GB RAM, 512GB SSD, Intel® Iris® Xᵉ, Sin sistema operativo, Plata', 
       'Descripción
¿Buscas un notable portátil ligero para trabajar y/o jugar siempre que quieras? Disfruta de una pantalla con tecnología antirreflectante, batería de larga duración y con un rendimiento fiable para el día a día, gracias al dispositivo HP 15s-fq5099ns

Procesador que supera a todos los de su clase
Los procesadores Intel® Core™ de 12a generación presentan grandes avances en todas las áreas que importan ya que combinan el rendimiento de CPU líder en la industria, unos gráficos envolventes, una increíble aceleración de IA (Inteligencia artificial) y una conectividad por cable de gama alta e inalámbrica para ayudar a concentrarte, crear y participar de nuevas formas. La arquitectura de gráficos Xe, los gráficos integrados Intel® Iris® Xe ofrecen gráficos transformacionales y un nivel realista de multimedia para creación, videojuegos y entretenimiento en portátiles delgados y ligeros.

Buen almacenamiento PCIe SSD
Este portátil HP se enciende en pocos segundos obteniendo una alta velocidad y confort gracias a su fiable procesador. A diferencia del antiguo PCI, los nuevos PCI Express (o PCIe) ofrecen una mejor eficiencia entre los diferentes componentes del hardware del PC, haciendo que sus componentes no se subdividan sino que se compartan aumentando el rendimiento de este ordenador. Este dispositivo portátil tiene 512GB de almacenamiento pudiendo guardar y procesar cualquier tipo de archivo, trabajo, videojuego o proyecto en el que estés trabajando. Es un ordenador profesional rápido y fiable para el día a día.

16 GB de memoria RAM DDR4
Este portátil tiene una notable memoria RAM de 16 GB DDR4 que te permitirá alcanzar una mayor velocidad y eficiencia gracias a sus mayores tasas de transferencia y a su menor voltaje. Esta generación de memoria RAM nos ofrece un mayor rendimiento que las anteriores así como una gran escalabilidad y eficiencia energética. 
',
       'portatil',
       'HP',
       52,
       699,
       0,
       4,
       'static/images/category_portatil8.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - HP 15s-fq5099ns, 15.6" Full HD, Intel® Core™ i7-1255U, 16GB RAM, 512GB SSD, Intel® Iris® Xᵉ, Sin sistema operativo, Plata'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Móvil - Samsung Galaxy S24, Onyx, 256GB, 8GB RAM, 6.2" FHD+, con IA, Exynos 2400, 4000 mAh, Android 14', 
       'Hazlo tuyo
Galaxy S24 no pierde el característico diseño Galaxy, sino que lo mejora. Ahora con más pantalla, formas redondeadas y acabado mate antihuellas. También podrás disfrutar de un sinfín de opciones de personalización con One UI 6.1 y mantener lo que más importa bien protegido con la seguridad de Samsung Knox.

Un smartphone que combina contigo
Galaxy S24 está disponible en cuatro colores: Amarillo Amber, Violeta Cobalt, Gris Marble y Negro Onyx. También podrás elegir la capacidad de memoria que desees, de 8GB + 128GB o 256GB de memoria interna. ¿Ya sabes cuál quieres?

Crea contenido como un profesional
El nuevo Galaxy S24 de Samsung no solo te asegura una experiencia fotográfica de diez, gracias a su cámara de 50MP de resolución, sino que la incorporación de la Inteligencia Artificial supone un cambio a la hora de crear contenido.
 ',
       'smartphone',
       'Samsung',
       46,
       969,
       888,
       4.5,
       'static/images/category_smartphone1.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - Samsung Galaxy S24, Onyx, 256GB, 8GB RAM, 6.2" FHD+, con IA, Exynos 2400, 4000 mAh, Android 14'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Apple iPhone 15 Pro Max, Titanio Natural, 256 GB, 5G, 6.7" Pantalla Super Retina XDR, Chip A17 Bionic, iOS', 
       'Descripción
Pantalla iPhone 15 Pro Max:
La pieza central de la experiencia visual que ofrece el iPhone 15 Pro Max es, sin duda, su majestuosa pantalla de 6,7 pulgadas. Esta pantalla, con una resolución de 1290 x 2796 píxeles y una densidad de píxeles de 460ppi, garantiza una representación cristalina de todos los detalles. La tecnología OLED, conocida por su capacidad para producir colores brillantes y negros realmente profundos, eleva aún más la calidad de la imagen, ofreciendo un contraste que resalta todos los matices.

Batería iPhone 15 Pro Max:
El iPhone 15 Pro Max está equipado con una batería de 4441 mAh que representa un equilibrio perfecto entre capacidad y gestión de la energía. Además de tener una gran capacidad, esta unidad se ha optimizado para aprender y adaptarse a los hábitos diarios del usuario, garantizando así una duración de la batería que se prolonga durante todo el día, independientemente de la intensidad de uso. Y cuando llega el momento de cargarlo, el iPhone 15 Pro Max ofrece soluciones flexibles y cómodas: la carga inalámbrica ofrece la comodidad de la carga inalámbrica, mientras que la función de carga rápida garantiza que, incluso con conexiones de energía cortas, se pueda minimizar el tiempo de espera.

Prestaciones iPhone 15 Pro Max:
El iPhone 15 Pro Max es un auténtico portento, diseñado para ofrecer un rendimiento inigualable en cualquier situación. En el corazón de esta máquina se encuentra el formidable procesador que garantiza respuestas inmediatas y operaciones fluidas. Esta potencia de procesamiento, unida a una memoria interna que puede ampliarse hasta unos impresionantes 1.000 GB, significa que no solo las aplicaciones y los juegos más exigentes se manejan con facilidad, sino que los usuarios disponen de un amplio espacio de almacenamiento para fotos, vídeos, aplicaciones y mucho más.
 ',
       'smartphone',
       'Apple',
       50,
       1469,
       1309,
       5,
       'static/images/category_smartphone2.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Apple iPhone 15 Pro Max, Titanio Natural, 256 GB, 5G, 6.7" Pantalla Super Retina XDR, Chip A17 Bionic, iOS'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Móvil - Samsung Galaxy A55 5G, Light Violet, 256GB, 8GB RAM, 6.6" FHD+ Super AMOLED, Exynos 1480 Octa-Core, 5000 mAh, Android', 
       'Descripción
Más pantalla, más posibilidades
Galaxy A55 presenta una estética sofisticada y refinada con una cubierta trasera brillante. Su pantalla Super AMOLED FHD+ de 6,6” proporciona una experiencia visual envolvente gracias a su tasa de refresco de 120 Hz, lo que garantiza una reproducción fluida al disfrutar de tus contenidos favoritos. Con colores vibrantes y una calidad de imagen excepcional, te sumergirás por completo en la acción.

Sin problemas de almacenamiento
Dile adiós a las limitaciones de almacenamiento con Galaxy A55 y sus 8 GB de RAM y 128 GB de almacenamiento interno. Guarda todos tus documentos personales, fotos, videos y aplicaciones en un solo lugar. ¿Necesitas aún más espacio? Galaxy A55 te permite expandir la capacidad de almacenamiento hasta 1 TB con una tarjeta MicroSD. Disfruta de la libertad de tenerlo todo a tu alcance sin sacrificar rendimiento ni calidad.

Energía de sobra durante 2 días
Experimenta una autonomía sin límites con la batería de 5.000 mAh de Galaxy A55. Disfruta de horas de entretenimiento sin interrupciones, ya sea viendo tus películas y series favoritas, jugando a juegos exigentes o trabajando fuera de casa. No te preocupes por quedarte sin batería en el momento menos oportuno: Galaxy A55 te ofrece la libertad de usar tu teléfono sin restricciones. ¿Necesitas recargar tu smartphone? La carga rápida de 25 W te permite recuperar la energía en un abrir y cerrar de ojos. Olvídate de las esperas interminables y vuelve a disfrutar de tu Galaxy A55 en cuestión de minutos.
',
       'smartphone',
       'Samsung',
       27,
       499,
       0,
       4,
       'static/images/category_smartphone3.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - Samsung Galaxy A55 5G, Light Violet, 256GB, 8GB RAM, 6.6" FHD+ Super AMOLED, Exynos 1480 Octa-Core, 5000 mAh, Android'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Móvil - OPPO Reno 11 F, Verde, 256GB, 8GB RAM, 6.7" AMOLED FHD+, MediaTek Dimensity 7050, 5000mAh, Android', 
       'Descripción
El móvil Reno11 F 5G de OPPO trae un nuevo acabado denominado Particle Magnetic Design, para darle un aspecto único en diseño y color, junto con OPPO Glow, que le da a este terminal un efecto Premium que hará las delicias de aquellos que buscan algo diferente, que llame la atención y sea ligero y cómodo en la mano con sus 177g de peso y sus 7,54mm de grosor.  Además, es perfecto para no llevar funda, ya que no deja huellas y es resistente a arañazos. 

Disfruta de la experiencia del cine en tu bolsillo
Pantalla FHD+ 6,7” AMOLED con unos colores y un brillo increíble que te harán pasar horas pegado a él, junto con la mejor fluidez en una pantalla de smartphone gracias a sus 120Hz, que te harán disfrutar como nunca de tus películas, series y juegos. Le acompaña un Modo Ultra Volumen 300% para que puedas escucharlo en cualquier parte sin necesidad de usar cascos y disfrutar aún más de esta increíble pantalla. 

Tu compañero incansable de aventuras
Con 5000 mAh de batería y una carga rápida 67W SUPERVOOC, Reno11 F 5G será el compañero perfecto para todos los días, con una gran batería que te hará mantenerte hasta dos días sin necesitad de cargarlo y su carga rápida que en 48 minutos te devolverá de nuevo a darlo todo, no tendrás la necesidad de tener que ir con el cargador encima. Además, incluimos un sistema de batería mejorado con 4 años de durabilidad, realizado por la parte de expertos y en los laboratorios de OPPO.

¡Que el mejor rendimiento te acompañe!
Un smartphone perfecto para darte horas y horas de entretenimiento y funcionalidad y que con el paso del tiempo siga rindiendo como el primer día, con 256 GB de almacenamiento y ampliable por Micro SD hasta 2 TB y poder aumentar esa memoria. 8 GB de RAM para que vaya todo fluido y puedas tener todas tus aplicaciones favoritas siempre listas y abiertas para cuando las necesites, con la posibilidad de poder ampliar hasta 16 GB para que todo funcione como el primer día. 
',
       'smartphone',
       'Oppo',
       30,
       399,
       348,
       5,
       'static/images/category_smartphone4.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - OPPO Reno 11 F, Verde, 256GB, 8GB RAM, 6.7" AMOLED FHD+, MediaTek Dimensity 7050, 5000mAh, Android'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Móvil - Xiaomi Redmi Note 13 Pro+ 5G, Moonlight White, 512 GB, 12 GB RAM, 6.67" AMOLED 1.5K, MediaTek Dimensity 7200, 5000 mAh', 
       'Descripción
Pantalla con resolución 1,5K
La pantalla del Redmi Note 13 Pro Plus 5G da un salto notable al alcanzar una resolución de 1,5K. Este avance proporciona una definición impresionante sin sacrificar la eficiencia energética, a diferencia de las pantallas 2K. Aquí encontramos el equilibrio perfecto entre una experiencia visual asombrosa y un consumo de batería eficiente. Además, la fluidez no se queda atrás con una tasa de refresco de hasta 120Hz y una mejora significativa en el reconocimiento de gestos. Esto se traduce en una experiencia incomparable al jugar o navegar por la web. Tu interacción con el dispositivo será más suave y rápida que nunca. 

Cámara de hasta 200MP
Redmi Note 13 Pro Plus hace alarde de un conjunto de cámaras de élite, encabezado por un impresionante sensor principal de hasta 200MP con estabilización óptica de imagen (OIS). Esta combinación garantiza imágenes nítidas incluso cuando se capturan desde lejos, con la capacidad de aumentar el zoom hasta 4X con una mínima pérdida de calidad. Además, el sensor permite agrupar sus píxeles en grupos de 16 en 1, lo que resulta en una percepción de luz mejorada, especialmente en condiciones de baja luminosidad. La magia no se detiene aquí. El Redmi Note 13 Pro está potenciado por el Xiaomi Imaging Engine, impulsado por la inteligencia artificial (IA). 

Rendimiento
Redmi Note 13 Pro+ ofrece un rendimiento excepcional gracias a su potente procesador MediaTek Dimensity 7200 Ultra con una avanzada arquitectura de 6 nanómetros. Este procesador garantiza un rendimiento rápido y eficiencia, lo que significa que podrás disfrutar de una experiencia fluida y sin complicaciones en todas tus actividades. Y en cuanto a la seguridad y actualizaciones, el Redmi Note 13 Pro+ no se queda atrás. 

Batería y carga
Redmi Note 13 Pro+ se destaca con una impresionante batería de 5000mAh y una capacidad de carga de 120W. Esto significa que no solo tendrás energía suficiente para todo el día, sino que también te olvidarás de preocuparte por quedarte sin batería. En tan solo 19 minutos, podrás pasar de un 0% a un 100% de carga, lo que es prácticamente instantáneo. 
',
       'smartphone',
       'Apple',
       70,
       449,
       0,
       4.5,
       'static/images/category_smartphone5.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - Xiaomi Redmi Note 13 Pro+ 5G, Moonlight White, 512 GB, 12 GB RAM, 6.67" AMOLED 1.5K, MediaTek Dimensity 7200, 5000 mAh'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Monitor - LENOVO G34w-30, 34 ", UWQHD, 5 ms, 165 Hz, Negro', 
       'Descripción
Mejore su juego con el monitor Lenovo G34w-30 cargado de características. Su suave curvatura de 1500R acomoda su campo de visión natural para que pueda ver las cosas incluso en los bordes, sin cambiar de enfoque. La pantalla ultraancha de 86,3 cm (34") WQHD (3440 x 1440) del monitor tiene una relación de aspecto de 21:9 que le entrega una ventaja competitiva a través de un campo de visión expandido y detalles visuales más nítidos y precisos. Deje que su alta frecuencia de actualización acelerada de 170 Hz le ayude a mantener el ritmo de todos los movimientos en el juego.

Especificaciones:
Marca: Lenovo
Series: G34W-30
Color: Negro
Tamaño del monitor: 34.0"
Resolución máxima: 3440 x 1440 Píxeles
Resolución: UWQHD
Tiempo de respuesta: 4 Milisegundos
Frecuencia de actualización: 165 Hz
Interfaz de hardware: DisplayPort, HDMI
Brillo: 350 cd
Relación de aspecto: 21
Relación de contraste: 2500
Tipo de conexión: 2 HDMI 2.0; 1 DP 1.4; 1 salida de audio (3,5 mm)
Número de modelo del producto: 66F1GAC1EU
Dimensiones del producto: 104,5 mm x 365,8 mm x 809,3 mm; 6.6 kilogramos
',
       'monitor',
       'Lenovo',
       15,
       536.51,
       0,
       4.5,
       'static/images/category_monitor1.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - LENOVO G34w-30, 34 ", UWQHD, 5 ms, 165 Hz, Negro'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Monitor gaming - PHILIPS 27M1C3200VL/00, 27 ", Full-HD, 1 ms, 165 Hz, Negro', 
       'Descripción
Este monitor para juegos de Philips 27M1C3200VL es la pantalla ideal para los juegos de PC intensos. La tecnología de sincronización, la frecuencia de actualización de 165 Hz y el tiempo de respuesta de 1 ms ofrecen una experiencia de juego fluida. Incluye una pantalla con marco fino visualmente envolvente y la tecnología Ultra Wide-Color.

Diseño de pantalla curvo
Los monitores de sobremesa ofrecen una experiencia de usuario personal, que se adapta a los diseños curvos. La pantalla curva proporciona un agradable pero sutil efecto de inmersión, para que tú seas el único centro de atención en el escritorio.

Frecuencias de actualización de 165 Hz
Si lo tuyo son los juegos intensos y competitivos, querrás una pantalla sin retardo y con imágenes ultrafluidas. Esta pantalla de Philips actualiza la imagen de la pantalla hasta 165 veces por segundo, mucho más rápido que una pantalla estándar. Una frecuencia de actualización inferior puede hacer que los enemigos parezcan saltar de una zona a otra de la pantalla, lo que los convierte en objetivos difíciles de alcanzar. Con la frecuencia de actualización de 165 Hz , disfrutarás de esas imágenes fundamentales que faltan en la pantalla y que muestran el movimiento de los enemigos con una extrema fluidez, para que puedas apuntarles fácilmente.

Respuesta rápida (MPRT) de 1 ms para una imagen nítida y juegos fluidos
El tiempo de respuesta de la imagen en movimiento (MPRT) es la forma más intuitiva de describir el tiempo de respuesta, que hace referencia directa a la duración entre la visualización de ruido de borrosidad a la de imágenes limpias y nítidas. El monitor para juegos de Philips con MPRT de 1 ms elimina de forma eficaz el movimiento de imagen y el movimiento borroso , ofreciendo un aspecto visual más nítido y preciso para mejorar la experiencia de juego. Es la mejor elección para disfrutar de emocionantes juegos en los que prima la velocidad.
',
       'monitor',
       'Philips',
       27,
       248,
       203.21,
       4,
       'static/images/category_monitor2.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor gaming - PHILIPS 27M1C3200VL/00, 27 ", Full-HD, 1 ms, 165 Hz, Negro'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Monitor - LG 34WQ650-W, 34", FHD, 5ms (GTG), 56/61 Hz, HDMI x1, DisplayPort, USB-C, Auriculares, Blanco High Glossy', 
       'Descripción
Disfruta de una increíble experiancia visual con el monitor LG 34WQ650-W de 34 pulgadas de color blanco High Glossy.

Formato 21:9
Amplía un 32% más tu superficie útil gracias al formato 21:9 UltraWide™.

Tecnología Super Resolution+
Amplía contenidos en la pantalla, sin que pierdan resolución ni nitidez, gracias a la tecnología Super Resolution+.

Tecnología AMD FreeSync™
Para disfrutar de toda la acción sin parpadeos.

USB Tipo-C
Compatible con todas las marcas y con 94W de potencia de carga.

Estabilizador de Negros
Permite colores oscuros más diferenciados.
',
       'monitor',
       'LG',
       30,
       299,
       0,
       5,
       'static/images/category_monitor3.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - LG 34WQ650-W, 34", FHD, 5ms (GTG), 56/61 Hz, HDMI x1, DisplayPort, USB-C, Auriculares, Blanco High Glossy'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Monitor gaming - Samsung Odyssey G7 LS28BG700EPXEN, 28",4K UHD, 1 ms, 144 Hz, USB, Bluetooth, Negro', 
       'Descripción
Imágenes hiperrealistas verás en el monitor gaming Samsung Odyssey G7 LS28BG700EPXEN de 28 pulgadas. El monitor Odyssey G7 LS28BG700EPXEN de Samsung tiene una tasa de refresco de 144 Hz y un tiempo de respuesta de 1ms que elimina el retardo para un juego emocionante con una acción ultrafluída.

Resolución UHD
Descubre cada detalle con la máxima claridad. Con una densidad de píxeles 4 veces superior al FHD, verás los juegos como nunca antes.

Panel IPS
El monitor Odyssey G7 ofrece colores claros y un amplio ángulo de visión de 178º para mayor claridad desde cualquier punto de vista. Con más píxeles y mayor profundidad, los juegos están más cerca que nunca de la realidad.

Pantalla HDR 400
Más contraste con negros más profundos y blancos más brillantes para ayudarte a descubrir enemigos o secretos que acechan en las sombras.

Tiempo de respuesta rápido en 4K
Identifica enemigos con precisión de élite con un tiempo de respuesta de 1 ms, movimientos precisos del ratón y fotogramas sin desenfoque, con imágenes fantasma minimizadas.

Samsung Gaming Hub
Samsung Gaming Hub permite el acceso instantáneo a los mejores servicios de juego en la nube, tus consolas favoritas y PC. La fluidez de la respuesta y de las imágenes están impulsadas por avanzada tecnología de streaming, sin descargas ni límites de almacenamiento.

Smart TV Experience
Ponte al día con el contenido en streaming que no puedes perderte. Está disponible en 4K HDR, solo con una simple conexión Wi-Fi. Samsung TV Plus ofrece contenido en vivo gratuito sin descargas ni registros, así como recomendaciones de contenido personalizado de Universal Guide.
',
       'monitor',
       'Samsung',
       32,
       699,
       459,
       4.5,
       'static/images/category_monitor4.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor gaming - Samsung Odyssey G7 LS28BG700EPXEN, 28",4K UHD, 1 ms, 144 Hz, USB, Bluetooth, Negro'
);

INSERT INTO product (name, description, type, brand, stock, price, discounted_price, stars, image)
SELECT 'Monitor - CHIQ 22F650, 22 ", Full-HD, 6 s, 100 Hz, Gris', 
       'Descripción
Monitor LED de 21.5" con resolución Full HD con un diseño minimalista sin marco.
Características CHiQ 22F650:
•	Frecuencia de actualización de 100 Hz: responda más rápido con fotogramas más suaves.
•	Amplia gama de colores: los colores y detalles del juego se verán más realistas y refinados.
•	Diseño sin marco : disfruta de la mejor experiencia de juego con biseles superestrechos.
•	Antiparpadeo (Flicker-free) y menos luz azul (Low Blue Light): Trabaje o juegue incluso más tiempo y evite la fatiga visual y la fatiga.
•	Ángulo de visión amplio de 178°: los colores y los detalles permanecerán nítidos en más ángulos con un ángulo de visión amplio de 178°
Especificaciones CHiQ 22F650:
•	Tamaño: 21.5"
•	Tipo panel: VA
•	Resoción (H x V): 1920*1080
•	Tasa de refresco: 100Hz
•	Curvature: Flat
•	Aspect Ratio: 16:9
•	Viewing Angle: ≥178(H), ≥178°(V)
•	Ratio contraste: 1000:1
•	DCR(Dynamic Contrast Ratio): 1M:1
•	Brillo: 250cd/m2
•	Tiempo respuesta: 6ms
•	Panel Surface: Anti-glare
•	Display Colors: 16.7M colors
•	HDMI 1 | VGA 1 | Audio Output 1
•	Frameless Design: Sí
•	Color: Grís
•	Kensington Lock: Sí
•	Height Adjustable Stand: No
•	Tilt (front 5°/ back 15°): Sí
•	Speaker Availability: No
•	GAME PLUS: Sí
•	Filter Blue Light: Sí
•	Flicker-free: Sí
•	FPS/RTS Game Profiles Shifting: Sí
•	Freesync: Sí
•	G-sync compatible: No
•	HDR Ready: No
•	PIP/PBP: No
•	HDMI Cable(option): 1.5m
•	Peso Neto: 1.92Kg
•	Peso con caja: 2.5Kg
•	Dimensiones con peana (AxPxA) 492.6*139*376.5 mm
•	Dimensiones sin peana (LxWxH) 492.6*43.9*283.9 mm
•	VESA Wall Mount (mm): 75*75mm
',
       'monitor',
       'Chiq',
       43,
       109.99,
       84.99,
       4,
       'static/images/category_monitor5.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - CHIQ 22F650, 22 ", Full-HD, 6 s, 100 Hz, Gris'
);

