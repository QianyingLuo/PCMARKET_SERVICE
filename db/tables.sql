CREATE TABLE IF NOT EXISTS user(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(70) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    address VARCHAR(70),
    phone VARCHAR(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT IGNORE INTO user (username, password, email, full_name, address, phone) VALUES ("admin", "admin", "admin", "admin", "admin", "admin");


CREATE TABLE IF NOT EXISTS product(
     id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(255) NOT NULL,
     description TEXT NOT NULL,
     type VARCHAR(50) NOT NULL,
     brand VARCHAR(50) NOT NULL,
     stock INT NOT NULL,
     price FLOAT NOT NULL,
     discount_percentage FLOAT,
     stars FLOAT,
     image TEXT NOT NULL
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
       0.25,
       5,
       'static/images/category_portatil1.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Samsung Galaxy Book4 Pro, 16" WQXGA+, Intel® Evo™ Edition Core™ Ultra 7-155H, 16GB RAM, 512GB, Arc®, W11H, IA, Gris'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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
       0.12,
       4.5,
       'static/images/category_portatil3.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Lenovo IdeaPad Slim 3 15IAH8, 15.6" Full-HD, Intel® Core™ i5-12450H, 16GB RAM, 512GB SSD, UHD Graphics, Sin sistema operativo, Gris'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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
       276,
       0.10,
       4,
       'static/images/category_portatil4.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Acer Chromebook CB315-3H-C27W, 15.6" HD, Intel® Celeron® N4120, 4GB RAM, 64GB eMMC, Intel® UHD 600, Google Chrome OS'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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
       0.15,
       4,
       'static/images/category_portatil6.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Lenovo IdeaPad 1 15ALC7, 15.6" Full-HD, AMD Ryzen™ 5 5500U, 16GB RAM, 512GB SSD, Radeon™ Onboard Graphics, Windows 11 Home, Gris'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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
       0.10,
       3,
       'static/images/category_portatil7.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Acer Aspire Go 15 AG15-31P, 15.6" Full HD, Intel® Core™ i3-N305, 8GB RAM, 512GB SSD, UHD Graphics, Windows 11 Home'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Portátil - ASUS VivoBook 15 F1504ZA-NJ707W, 15.6" Full HD, Intel® Core™ i7-1255U, 16GB RAM, 512GB SSD, Iris® Xe, Windows 11 Home', 
       'Descripción
Convierte las tareas cotidianas en algo especial con VivoBook 15 F1504ZA-NJ707W, tu herramienta esencial para hacer las cosas más fácilmente, en cualquier lugar. También es completamente fácil de usar, con su bisagra plana de 180° y su protector físico para la cámara web. ASUS Antimicrobian Guard Plus protege las superficies que se tocan con frecuencia de bacterias, salvaguardando su salud. ¡Haz que todos tus días sean más agradables con Vivobook 15!

Arquitectura híbrida de rendimiento
El procesador Intel® Core™ de 12ª generación transforma tu experiencia informática y de juego, ya que integra dos microarquitecturas de núcleo totalmente nuevas en un único chip, gracias a Intel® Thread Director el procesador divide de forma inteligente el trabajo entre P-cores (núcleos de rendimiento) y E-cores (núcleos de eficiencia). Estas tecnologías mejoran los videojuegos y la productividad al garantizar que las tareas en segundo plano no distraen la atención de los núcleos más potentes, una optimización inteligente de las cargas de trabajo, lo que es un paso generacional en el rendimiento!

Alta velocidad y rendimiento
Equipado con un disco duro de 512 GB de SSD, un disco duro ultra rápido, con el que podrás acceder a tus archivos, fotos y bibliotecas multimedia en segundos. Iniciarás el sistema operativo en un momento. Tiene espacio más que suficiente para todos sus álbumes de fotos, bibliotecas de música y películas. Además abordarás tareas de productividad exigentes con sus 16 GB de RAM y trabajarás de forma fluida con el sistema operativo Windows 11 Home.

Diseño innovador para inspirarte
El portátil ASUS VivoBook 15  F1504ZA-NJ707W presenta una sólida, elegante y actual construcción montando una pantalla NanoEdge de 15.6” Full HD para que tengas una experiencia inmersiva al trabajar y jugar. Su panel FHD de visión amplia cuenta con un revestimiento antirreflectante que reduce las distracciones no deseadas de brillos y reflejos molestos, para que puedas centrarte realmente en lo que tienes delante.

Auténtica gráfica Iris® Xe Graphics
¡Con la tarjeta gráfica Intel® Iris® Xe Graphics lo tendrás todo! Gráficos increíbles, menor latencia y máxima fluidez.
',
       'portatil',
       'Asus',
       35,
       879,
       0.20,
       4,
       'static/images/category_portatil9.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - ASUS VivoBook 15 F1504ZA-NJ707W, 15.6" Full HD, Intel® Core™ i7-1255U, 16GB RAM, 512GB SSD, Iris® Xe, Windows 11 Home'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Portátil - Acer Chromebook CB315-4H-C4BQ, 15.6" Full HD, Intel® Celeron® N4500, 8GB RAM, 128GB eMMC, Intel® UHD Graphics, Google Chrome OS', 
       'Descripción
Diseñado para la vida móvil, este portátil Acer Chromebook CB315-4H-C4BQ antirreflejante de 15.6" con bisel delgado de 9,5 mm, ofrece una pantalla más grande para hacer más y una batería de larga duración de hasta 10 horas de autonomía. Gracias a su potente procesador Intel® Celeron® N4500 proporciona un bajo consumo de energía y una respuesta rápida. Cuenta con 8GB de memoria RAM, también cuenta con 128GB eMMC de almacenamiento.

¿Qué es un Chromebook?
Los Chromebook son ordenadores portátiles que utilizan el sistema operativo "Chrome OS", desarrollado por Google. Está diseñado para darte una solución rápida y constante, y lleva lo mejor de los servicios de Google integrados.

Rendimiento con el procesador Intel® Celeron®
Para trabajo, estudio y entretenimiento obtendrás eficacia y versatilidad con el procesador Intel® Celeron® N4500 con frecuencia base de 1.10 GHz y 4 MB de caché. Potencia fiable sin contratiempos para las aplicaciones de correo electrónico y la navegación por la Web, tiempos de inicio más breves y más acción, duración optimizada de la batería, sólido nivel de rendimiento para las tareas informáticas cotidianas. Cuenta con sistema operativo Chrome OS intuitivo y fácil de manejar en el día a día, con 8GB de RAM y capacidad de almacenamiento de 128GB eMMC.

Sencillo e inteligente
Realiza una copia de seguridad automática de tus datos y funciona con y sin conexión. Un dispositivo pensado para compartir y colaborar.

Seguridad garantizada
Con protección integrada, sin necesidad de programas adicionales y con múltiples niveles de seguridad. (El antivirus integrado y la comprobación de arranque de Chrome OS están diseñados para evitar los problemas persistentes que pueden darse durante un uso normal, pero esto no significa que Chromebook no pueda ser atacado por código malicioso).
',
       'portatil',
       'Acer',
       29,
       299,
       0,
       4.5,
       'static/images/category_portatil10.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Acer Chromebook CB315-4H-C4BQ, 15.6" Full HD, Intel® Celeron® N4500, 8GB RAM, 128GB eMMC, Intel® UHD Graphics, Google Chrome OS'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Portátil - Apple MacBook Air Apple M1/8GB/256GB SSD/GPU Hepta Core/13.3" Plata', 
       'Descripción
El poder no ocupa lugar. El chip M1 de Apple redefine nuestro portátil más fino y ligero. La CPU es hasta 3,5 veces más potente. Los gráficos, hasta cinco veces más rápidos. Un Neural Engine más avanzado llega a multiplicar por nueve la velocidad del aprendizaje automático. Además tiene la mayor autonomía en un MacBook Air y un diseño sin ventilador que lo vuelve ultrasilencioso. Descubre un talento sin precedentes listo para seguirte a cualquier parte.
Características:
•	La potencia hecha chip. Ya está aquí. Nuestro primer chip diseñado específicamente para el Mac. El M1 de Apple es un sistema en chip (SoC) que reúne 16.000 millones de transistores e integra la CPU, la GPU, el Neural Engine, E/S y mucho más en un diseño minúsculo. Con un rendimiento top, tecnologías a medida y la mayor eficiencia del sector, el M1 no solo es un nuevo paso para el Mac. Es un antes y un después en su historia.
•	Ávida de trabajo. No de batería. El chip M1 lleva la CPU más rápida que hemos desarrollado. Con semejante potencia en la recámara, el MacBook Air pisa a fondo al realizar procesos tan exigentes como editar vídeo con calidad profesional o echar partidas épicas. Y eso es solo el principio, porque además de multiplicar por hasta 3,5 la velocidad de la generación anterior,2 la CPU de ocho núcleos del chip M1 equilibra los núcleos de alto rendimiento y los de eficiencia, que se ocupan de las tareas cotidianas, para consumir solo una décima parte de la energía. Ahí es nada.
•	La potencia de macOS Big Sur con el chip M1. macOS Big Sur se ha desarrollado para aprovechar el potencial del chip M1 y transformar el Mac. ¿El resultado? Un rendimiento superior, mejoras en las apps, un nuevo diseño espectacular y prestaciones de privacidad y seguridad líderes del sector. Es nuestro software más potente, y está a la altura de nuestro hardware más avanzado.
•	Colores tan reales que no te lo crees. La resolución de 2.560 por 1.600 píxeles de la pantalla Retina de 13,3 pulgadas ofrece un nivel de detalle y realismo asombroso. El texto se ve con la máxima claridad, los colores brillan con luz propia y el vidrio llega hasta el borde de la carcasa para que nada te distraiga.
•	Tecnología True Tone. Disfruta las vistas. Descansa los ojos. El MacBook Air sabe ajustar de forma automática el punto blanco de la pantalla según la temperatura del color ambiental, así resulta más cómodo mirarla.
•	Cámara y micrófonos Saca tu mejor tú. El chip M1 lleva nuestro procesador de señal de imagen más avanzado para que siempre salgas estupendamente en tus videollamadas de FaceTime. A los tres micros integrados no se les escapa nada, ya estés en una llamada, dictando una nota o preguntándole a Siri qué tiempo hace.
•	Un teclado con mayúsculas. Disfruta de una comodidad absoluta de la A a la Z. Además de escribir a tus anchas, con los atajos preprogramados de este teclado puedes acceder al instante a las prestaciones que más usas. Habla con Siri, cambia el idioma del teclado, responde con el emoji perfecto, encuentra documentos con Spotlight… Ni te imaginas todo lo que puedes hacer con un toque. Y la retroiluminación con sensor de luz ambiental te permite escribir incluso cuando estás medio a oscuras.
•	Touch ID. Un solo toque basta para bloquear y desbloquear el MacBook Air. Tu huella sirve para alquilar una peli, comprar una app o acceder a documentos protegidos y a los ajustes del sistema sin teclear la contraseña. Y cuando usas Apple Pay para comprar online, Touch ID añade tu dirección y datos de facturación sin compartir el número de tu tarjeta de crédito.
 ',
       'portatil',
       'Apple',
       30,
       1219,
       0.11,
       4.5,
       'static/images/category_portatil11.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Apple MacBook Air Apple M1/8GB/256GB SSD/GPU Hepta Core/13.3" Plata'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Portátil - Apple MacBook Pro Apple M1 Pro/16GB/512GB SSD/16.2" Gris Espacial Reacondicionado', 
       'Descripción
Ya está aquí el MacBook Pro más potente de la historia. Su rendimiento y eficiencia son enormes gracias a los chips M1 Pro y M1 Max, los primeros que Apple diseña para profesionales. Incluye una asombrosa pantalla Liquid Retina XDR, la mejor cámara y el mejor sistema de sonido en un portátil Mac, además de todos los puertos que vas a necesitar. Estás ante el primer portátil de una nueva especie. Y es una bestia.
Características:
•	Espectacular pantalla Liquid Retina XDR con rango dinámico extremo y un contraste increíble
•	Tres puertos Thunderbolt 4, ranura para tarjetas SDXC y puerto HDMI para conectar lo que haga falta
•	Nueva cámara FaceTime HD a 1080p, sistema de sonido de seis altavoces de alta fidelidad y micrófonos con calidad de estudio para que te vean y oigan en tu mejor versión
•	Hasta 17 horas de autonomía para que, vayas donde vayas, nada te pare
•	El conector MagSafe 3 se acopla al instante y carga tu MacBook Pro a toda pastilla
•	El Magic Keyboard con Touch ID ofrece autenticación sencilla, rápida y segura para iniciar sesión y comprar
•	Con macOS Monterey y sus nuevas prestaciones de rendimiento, puedes trabajar, crear y colaborar como nunca en tu Mac
Especificaciones:
•	Chip:
•	Chip M1 Pro de Apple
•	CPU de 10 núcleos con 8 núcleos de rendimiento y 2 de eficiencia
•	GPU de 16 núcleos
•	Neural Engine de 16 núcleos
•	200 GB/s de ancho de banda de memoria
•	Motor multimedia
•	Aceleración por hardware para H.264, HEVC, ProRes y ProRes RAW
•	Motor de decodificación de vídeo
•	Motor de codificación de vídeo
•	Motor de codificación y decodificación ProRes
•	Pantalla Liquid Retina XDR
•	Pantalla Liquid Retina XDR de 16,2 pulgadas (41,05 cm) en diagonal;10 resolución nativa de 3.456 por 2.234 a 254 píxeles por pulgada
•	Hasta 1.000 nits de brillo sostenido (a pantalla completa), 1.600 nits de brillo máximo
•	Contraste de 1.000.000:1
•	Color
•	1.000 millones de colores
•	Gama cromática amplia (P3)
•	Tecnología True Tone
•	Frecuencias de actualización
•	Tecnología ProMotion con frecuencia de actualización adaptativa de hasta 120 Hz
•	Frecuencias de actualización fijas: 47,95 Hz, 48 Hz, 50 Hz, 59,94 Hz y 60 Hz
•	Memoria
•	16 GB
•	16 GB de memoria unificada
',
       'portatil',
       'Apple',
       27,
       1707.10,
       0,
       5,
       'static/images/category_portatil12.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Apple MacBook Pro Apple M1 Pro/16GB/512GB SSD/16.2" Gris Espacial Reacondicionado'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Portátil - HP 255 G10, 15.6 " Full HD, AMD Ryzen 7 7730U, 32GB RAM, 512GB SSD, AMD Radeon™, Windows 11 H', 
       'Descripción
El portátil HP 255 G10 ofrece funciones esenciales para el negocio en un diseño compacto y ligero que permite llevarlo contigo a todas partes. Se trata de un equipo con pantalla de 15,6 pulgadas con una proporción entre pantalla y estructura del 85%, un sólido procesador AMD Ryzen™, una rápida memoria y opciones de almacenamiento diseñado para potenciar tu productividad y para que puedas conectar tus periféricos a los puertos que incluye...y todo ello por un precio que no te dejará indiferente.

Procesador de rendimiento muy impresionante
El procesador AMD Ryzen™ 7 7730U tiene mucha energía en reserva, junto con 32GB de memoria rápida, 512 GB de almacenamiento SSD rápido y conectividad WiFi 6 de alta velocidad que le permite cargar contenido en línea más rápido que nunca. incluye una nueva y revolucionaria arquitectura con una asombrosa duración de la batería, que ofrece un procesamiento de subprocesos concurrentes excepcional.

Alta velocidad y rendimiento
Equipado con un disco duro de 512GB de SSD, un disco duro ultra rápido, con el que podrás acceder a tus archivos, fotos y bibliotecas multimedia en segundos. Iniciarás el sistema operativo en un momento. Tiene espacio más que suficiente para todos sus álbumes de fotos, bibliotecas de música y películas. Además abordarás tareas de productividad exigentes con sus 32 GB de RAM.

Gráficos para el día a día
Con la magnifica AMD Radeon podrás ver el rendimiento grafico adaptado a tus necesidades, acelerando al máximo las aplicaciones mas populares de la actualidad y trabajando al máximo gracias a su capacidad.

Obtén una nueva perspectiva con Windows 11 Home
Windows 11 ofrece un espacio tranquilo y creativo en el que puedes dedicarte a tus pasiones a través de una novedosa experiencia. Desde un menú de Inicio rejuvenecido hasta nuevas formas de conectarte con tus personas, noticias, juegos y contenido favorito, Windows 11 es el lugar para pensar, expresar y crear de forma natural
',
       'portatil',
       'HP',
       36,
       699,
       0,
       4,
       'static/images/category_portatil13.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - HP 255 G10, 15.6 " Full HD, AMD Ryzen 7 7730U, 32GB RAM, 512GB SSD, AMD Radeon™, Windows 11 H'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Portátil - Microsoft Surface Laptop 5, 13.5" WQHD, Intel® Evo™ Core™ i5-1235U, 8GB RAM, 256GB SSD, Iris® Xe Graphics, Windows 11 Home', 
       'Descripción
Desbloquea más posibilidades que nunca con el Pro diseñado para un profesional como tú. El portátil para consumidores y diseñado para destacar lo mejor de Windows 11, Microsoft Surface Laptop 5, de color platinum, combina el poder de un portátil con la flexibilidad de una tableta, y todos los ángulos entremedios, con el icónico soporte trasero y teclado extraíble. Haz grandes cosas con una pantalla táctil más grande de 13.5", conexiones más rápidas y velocidad adicional cuando la necesitas.

Arquitectura híbrida de rendimiento y Plataforma Intel® Evo™
Si trabajas desde cualquier lugar, eres productivo, creativo, competitivo, buscas entretenerte o trabajar duro, con el procesador Intel® Core™ de 12ª generación diseñado en la plataforma Intel® Evo™ transformarás tu experiencia informática y de juego ya que hace que tu portátil funcione de manera fluida, intuitiva y con capacidad de respuesta excepcional. Integra dos microarquitecturas de núcleo totalmente nuevas en un único chip, gracias a Intel® Thread Director el procesador divide de forma inteligente el trabajo entre P-cores (núcleos de rendimiento) y E-cores (núcleos de eficiencia). Estas tecnologías mejoran la productividad y los videojuegos al garantizar que las tareas en segundo plano no distraen la atención de los núcleos más potentes, una optimización inteligente de las cargas de trabajo lo que es un paso generacional en el rendimiento!.

Gran velocidad de transferencia de datos
Gracias a su almacenamiento interno de 256 GB SSD, podrás transferir tus datos en alta velocidad. Lo mejor es que la memoria de tipo SSD, transfiere datos 20 veces más rápido que un disco duro convencional. Además, el portátil Surface Laptop 5 cuenta con 8 GB de memoria RAM, de tipo LPDDR5x, con una gran frecuencia, lo que supondrá una reducción considerable en los tiempos de carga.

Ligereza
El poder de un portátil ligero, con pantalla táctil de 13.5", resolución WQHD+ de 2256 x 1504 píxeles, el icónico soporte trasero y teclado extraíble. La pantalla PixelSense™ cuenta con función táctil multitáctil en 10 puntos y Gorilla Glass 5.

Windows 11 Home instalado
Windows 11 Home te acerca a lo que amas. La familia, los amigos, las obsesiones, la música y las creaciones... Windows 11 es el lugar para todo. Con un aspecto totalmente nuevo y herramientas que facilitan la eficacia, tiene lo que necesitas para el futuro.

Excelente autonomía
Céntrate en las ideas grandes, no en la duración de la batería, con hasta 18 horas de autonomía y carga rápida.
',
       'portatil',
       'Microsoft',
       22,
       1179,
       0.24,
       4,
       'static/images/category_portatil14.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Microsoft Surface Laptop 5, 13.5" WQHD, Intel® Evo™ Core™ i5-1235U, 8GB RAM, 256GB SSD, Iris® Xe Graphics, Windows 11 Home'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Microsoft Surface Laptop 4 Negro Intel Core i5-1145G7/8GB/512 GB SSD/13.5" Táctil Reacondicionado', 
       'Descripción
Estilo y velocidad. Destaca en las videollamadas HD respaldadas con micrófonos de estudio. Captura ideas en la vibrante pantalla táctil. Hazlo todo con el equilibrio perfecto entre diseño moderno, velocidad, audio envolvente y una batería que dura significativamente más que antes.
Características:
•	Hazlo todo con estilo, rendimiento y velocidad: Ahora hasta un 70% más rápido que antes con una batería que dura significativamente más que ofrece hasta 19 horas de autonomía en el dispositivo de 13,5" con el procesador AMD Ryzen™ 5 Microsoft Surface® Edition. Destaca durante las videollamadas HD, captura ideas en la pantalla táctil de PixelSense™ y disfruta del audio envolvente de Dolby Atmos.
•	Moderno, elegante y silencioso: Abre el dispositivo fácilmente con un dedo y disfruta de una productividad sin interrupciones en la pantalla táctil PixelSense™ gracias a la refrigeración ultra silenciosa. Personalízalo con la opción de dos tamaños y acabados de teclado, Alcantara® cálido o metálico moderno.
•	Rendimiento para multitarea, videollamadas y entretenimiento: Aprovecha al máximo tu día con más potencia multitarea y hasta un 70% más de velocidad que antes, pon tu mejor cara y voz durante las videollamadas y disfruta de audio envolvente Dolby Atmos® para películas,5 todo ello respaldado por un potente poder de procesamiento.
•	Comodidad, conveniencia y todas las conexiones que necesites: Aprovecha al máximo tu creatividad gracias a la batería que dura todo el día,1 carga rápida y una comodidad excepcional de escritura. Conéctate fácilmente con los puertos USB-C® y USB-A.
•	Poder para hacer lo que quieras: Ejecuta Microsoft 365 y apps de creatividad.* Protege tus archivos y fotos en la nube con OneDrive. Disfruta de una navegación rápida con Microsoft Edge. Mira una película o disfruta de tu juego favorito.
•	Dos procesadores increíbles, rendimiento de portátil excepcional: Diseñamos Surface Laptop 4 con procesadores Intel® Core™ de 11.ª generación y AMD Ryzen™ Microsoft Surface® Edition personalizados para ofrecer un rendimiento de portátil excepcional, fluidez entre pestañas de navegador y velocidad rápida para multitarea entre todas tus apps. ?
Especificaciones
•	Escenarios
•	Diseño de nueva generación, con potencia, velocidad y sonido mejorados para disfrutar de una productividad diaria increíble, Microsoft Teams* y videollamadas, Microsoft 365,* streaming de música y series, compras y navegación
•	Dimensiones
•	Surface Laptop 4 13,5": 308 mm x 223 mm x 14,5 mm
•	Pantalla
•	Surface Laptop 4 13,5":
•	Pantalla: pantalla PixelSense™ de 13,5"
•	Resolución: 2256 x 1504 (201 ppp)
•	Relación de aspecto: 3:2
•	Compatible con el Lápiz para Surface*
•	Función táctil: multitoque de 10 puntos
•	Memoria
•	Surface Laptop 4 13,5"
•	RAM LPDDR4x de 8 GB
•	Procesador
•	Surface Laptop 4 13,5":
•	Procesador Intel® Core™ i5-1135G7 de cuatro núcleos y 11.ª generación
•	Duración de la batería
•	Surface Laptop 4 de 13,5" con procesador Intel® Core™: hasta 17 horas de autonomía (para uso típico del dispositivo)
',
       'portatil',
       'Microsoft',
       25,
       790.40,
       0,
       5,
       'static/images/category_portatil15.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Microsoft Surface Laptop 4 Negro Intel Core i5-1145G7/8GB/512 GB SSD/13.5" Táctil Reacondicionado'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Portátil gaming - Lenovo LOQ 15IRH8, 15.6" FullHD, Intel® Core™ i5-12450H, 16GB RAM, 512GB SSD, GeForce RTX™ 4050, Windows 11 Home', 
       'Descripción
El portátil gaming Lenovo LOQ 15IRH8, funciona rápido con un procesador Intel® Core™ de 12va generación y tarjeta gráfica NVIDIA® GeForce RTX™ 4050. Disfruta de imágenes nítidas en una pantalla FHD de hasta 39.62 cm (15.6"), con una precisión de color asombrosa y Dolby Vision™. Por su parte, el sonido Nahimic Gaming Audio y el teclado te ayudan a atacar con precisión milimétrica.

Máximo nivel desde cualquier lugar
La potencia y rendimiento para jugar, compartir, grabar la consigues con el procesador Intel® Core™ de 12ª generación con su arquitectura de núcleo de procesador y una serie de tecnologías de aceleración con las que potenciar el rendimiento de cada núcleo. Gracias a Intel® Thread Director, el procesador divide de forma inteligente el trabajo entre P-cores y E-cores, mejorando los videojuegos y la productividad al garantizar que las tareas en segundo plano no distraen la atención de los núcleos más potentes. Incluye mejoras de plataforma como la compatibilidad con RAM DDR5 y la adopción de PCIe 5.0. Juega a 4K en un ordenador ultraportátil y gráficos NVIDIA® GeForce RTX™ 4050.

Gran capacidad de almacenamiento
Gracias a su gran almacenamiento interno 512 GB SSD, podrás transferir tus datos en alta velocidad. Lo mejor es que la memoria de tipo SSD, transfiere datos 20 veces más rápido que un disco duro convencional. Además, el portátil gaming Lenovo tiene hasta 16 GB de memoria RAM, de tipo DDR5, con una gran frecuencia de hasta 4800 MHz, lo que supondrá una reducción considerable en los tiempos de carga.

Colores ricos y brillantes con 144 Hz
Los colores claros y realistas cobran vida con una gran resolución FHD (1920x 1080píxeles) de 15.6" con 144 Hz tipo IPS. Visualiza contenido sin problemas desde cualquier ángulo con tus amigos y familiares.

GeForce RTX™ serie 40
Los portátiles más rápidos del mundo para jugadores y creadores se basan en las GPU de los portátiles NVIDIA® GeForce RTX™ serie 40. Cuentan con la arquitectura ultraeficiente NVIDIA Ada Lovelace. Además, suponen todo un salto cuántico en el rendimiento con DLSS 3, con tecnología de IA y permiten mundos virtuales realistas con trazado de rayos completo. El conjunto de tecnologías Max-Q optimiza el rendimiento del sistema, la potencia, la duración de la batería y la acústica para lograr la máxima eficiencia.

Wi-Fi 6
El Wi-Fi 6 aumenta la velocidad de transmisión, mejora la eficiencia y minimiza la congestión de la red cuando se utilizan múltiples dispositivos. La futura red WLAN requiere más rendimiento para hacer frente al aumento del tráfico de datos y gestionar más señales WLAN. El revolucionario y altamente eficiente estándar WLAN IEEE 802.11ax (Wi-Fi 6) hace frente a este desafío. Wi-Fi 6 cumple con su promesa de garantizar una red más rápida y estable en la próxima década.
',
       'portatil',
       'Lenovo',
       28,
       1199,
       0,
       5,
       'static/images/category_portatil16.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil gaming - Lenovo LOQ 15IRH8, 15.6" FullHD, Intel® Core™ i5-12450H, 16GB RAM, 512GB SSD, GeForce RTX™ 4050, Windows 11 Home'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Lenovo ThinkPad L15 Gen 4 Intel Core i5-1335U/16GB/512GB SSD/15.6"', 
       'Descripción
Rendimiento y fiabilidad para tu empresa. Portátil Lenovo ThinkPad L15 de 39,62 cm con teclado numérico, ideal para las finanzas, la contabilidad y la introducción de datos. Equipado con un procesador hasta Intel vPro® con Intel® Core™ de 13.a generación. Compatible con PC con núcleo protegido de Microsoft 11 para una mayor seguridad en el trabajo.
Características
•	Rendimiento profesional. El portátil Lenovo ThinkPad L15 Gen 4 inspira productividad. Equipado con procesadores Intel vPro® con Intel® Core™ serie U de 13.ª generación, este dispositivo de 39,62 cm (15,6?) también incorpora excelentes opciones de tarjetas gráficas. Además, gracias a las baterías más grandes opcionales, disfrutarás de autonomía todo el día con este compañero que te ofrece el máximo rendimiento y con el que podrás trabajar desde cualquier lugar.
•	No pierdas la conexión, no importa dónde ni cuándo. Al igual que un smartphone, el portátil ThinkPad L15 Gen 4 ofrece conectividad WiFi 6 rápida. También cuenta con cancelación de ruido Dolby Voice® basada en IA que, en combinación con la cámara HD, hará que parezca que todos se encuentran en la misma sala durante las videoconferencias.
•	Diseñado para mejorar la colaboración. La serie L ofrece también procesamiento de imágenes y un marco de visión artificial avanzada que mejora la calidad de la cámara, todo ello a través de Lenovo View 3.0.
•	Lleva la fiabilidad al siguiente nivel. Usamos los estándares MIL-STD 810H del Departamento de Defensa de EE. UU. para crear un equilibrio entre fiabilidad y durabilidad con nuestros portátiles ThinkPad. Los probamos con 12 estándares y más de 200 pruebas de calidad para asegurarnos de que funcionan en condiciones extremas. Estas pruebas incluyen variables extremas, como la aridez ártica y las tormentas de arena del desierto, como la temperatura, la presión, la humedad y la vibración, entre otros factores.
Especificaciones Lenovo ThinkPad L15 Gen 4
•	Procesador Intel Core i5-1335U, 10C (2P + 8E) / 12T, P-core 1.3 / 4.6GHz, E-core 0.9 / 3.4GHz, 12MB
•	Memoria RAM 16GB SO-DIMM DDR4-3200
•	Almacenamiento 512GB SSD M.2 2242 PCIe® 4.0x4 NVMe® Opal 2.0
•	Unidad óptica No dispone
•	Display 15.6" FHD (1920x1080) IPS 250nits Anti-glare, 45% NTSC
•	Controlador gráfico Integrada Intel Iris Xe
•	Conectividad
•	Intel Wi-Fi 6 (11ax, 2x2)
•	Bluetooth 5.1
•	Webcam FHD 1080p
•	Micrófono Si
•	Teclado: Retroiluminado
•	Audio
•	Altavoces 2W x2, Dolby® Audio™
•	Posibilidad de conexión por Bluetooth a dispositivos de reproducción de audio externos (altavoces, auriculares, etc.)
•	Batería
•	Polímero de Litio de 57Wh
•	Cargador 65W USB-C® (3-pin)
•	Conexiones
•	1x Ethernet (RJ-45)
•	1x HDMI® 2.1, up to 4K/60Hz
•	1x Thunderbolt™ 4 / USB4® 40Gbps (support data transfer, Power Delivery 3.0 and DisplayPort™ 1.4)
•	1x USB 3.2 Gen 1
•	1x USB 3.2 Gen 1 (Always On)
•	1x USB-C® 3.2 Gen 2 (support data transfer, Power Delivery 3.0 and DisplayPort™ 1.4)
•	1 x Jack combo (auriculares+micro)
•	Sistema operativo
•	Windows 11 Pro
',
       'portatil',
       'Lenovo',
       19,
       1248.01,
       0,
       4.5,
       'static/images/category_portatil17.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Lenovo ThinkPad L15 Gen 4 Intel Core i5-1335U/16GB/512GB SSD/15.6"'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Portátil - Apple MacBook Pro Apple M1 Pro/16GB/512GB SSD/14.2" Plata Reacondicionado', 
       'Descripción
Ya está aquí el MacBook Pro más potente de la historia. Su rendimiento y eficiencia son enormes gracias a los chips M1 Pro y M1 Max, los primeros que Apple diseña para profesionales. Incluye una asombrosa pantalla Liquid Retina XDR, la mejor cámara y el mejor sistema de sonido en un portátil Mac, además de todos los puertos que vas a necesitar. Estás ante el primer portátil de una nueva especie. Y es una bestia.
Características:
•	Espectacular pantalla Liquid Retina XDR con rango dinámico extremo y un contraste increíble
•	Tres puertos Thunderbolt 4, ranura para tarjetas SDXC y puerto HDMI para conectar lo que haga falta
•	Nueva cámara FaceTime HD a 1080p, sistema de sonido de seis altavoces de alta fidelidad y micrófonos con calidad de estudio para que te vean y oigan en tu mejor versión
•	Hasta 17 horas de autonomía para que, vayas donde vayas, nada te pare
•	El conector MagSafe 3 se acopla al instante y carga tu MacBook Pro a toda pastilla
•	El Magic Keyboard con Touch ID ofrece autenticación sencilla, rápida y segura para iniciar sesión y comprar
•	Con macOS Monterey y sus nuevas prestaciones de rendimiento, puedes trabajar, crear y colaborar como nunca en tu Mac
Especificaciones:
•	Chip: Chip M1 Pro de Apple
•	CPU de 8 núcleos con 6 núcleos  de rendimiento y 2 de eficiencia
•	GPU de 14 núcleos
•	Neural Engine de 16 núcleos
•	200 GB/s de ancho de banda de memoria
•	Motor multimedia
•	Aceleración por hardware para H.264, HEVC, ProRes y ProRes RAW
•	Motor de decodificación de vídeo
•	Motor de codificación de vídeo
•	Motor de codificación y decodificación ProRes
•	Pantalla Liquid Retina XDR
•	Pantalla Liquid Retina XDR de 14,2 pulgadas (35,97 cm) en diagonal;1 resolución
•	nativa de 3.024 por 1.964 a 254 píxeles por pulgada
•	XDR (rango dinámico extremo)
•	Hasta 1.000 nits de brillo sostenido (a pantalla completa), 1.600 nits de brillo máximo
•	Contraste de 1.000.000:1
•	Color
•	1.000 millones de colores
•	Gama cromática amplia (P3)
•	Tecnología True Tone
•	Frecuencias de actualización
•	Tecnología ProMotion con frecuencia de actualización adaptativa de hasta 120 Hz
•	Frecuencias de actualización fijas: 47,95 Hz, 48 Hz, 50 Hz, 59,94 Hz y 60 Hz
•	Memoria
•	16 GB
•	16 GB de memoria unificada
•	Batería y alimentación
•	Hasta 17 horas de reproducción de vídeo en la app Apple TV
•	Hasta 11 horas de navegación web inalámbrica
•	Batería de polímeros de litio de 70 vatios-hora2
•	Adaptador de corriente USB?C de 67 W (incluido con el M1 Pro con CPU de 8 núcleos)
•	Adaptador de corriente USB?C de 96 W (incluido con el M1 Pro con CPU de 10 núcleos y el M1 Max, opcional con el M1 Pro con CPU de 8 núcleos)
•	Cable de USB?C a MagSafe 3
•	Carga rápida con el adaptador de corriente USB?C de 96 W
•	Capacidad
•	512GB SSD
',
       'portatil',
       'Apple',
       31,
       2249,
       0.33,
       5,
       'static/images/category_portatil18.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - Apple MacBook Pro Apple M1 Pro/16GB/512GB SSD/14.2" Plata Reacondicionado'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Portátil gaming - ASUS TUF A15 FA507NV-LP031W, 15.6" Full HD, AMD Ryzen 7 7735HS, 16GB RAM, 512GB SSD, GeForce RTX™ 4060, Windows 11 Home', 
       'Descripción
Salta directamente a la acción con el portátil gaming TUF Gaming A15. Con Windows 11 listo para usar, TUF Gaming A15 viene equipado con hasta un procesador AMD Ryzen™ 7 7735HS y hasta 16GB de RAM DDR5 de 4800 MHz increíblemente rápida que harán que tus streamings y todas tus tareas se manejen con gran facilidad. Aprovecha todo el potencial gaming con hasta una GPU para portátiles NVIDIA® GeForce RTX™ 4060 con MUX Switch dedicado. La ranura SSD M.2 NVMe te permitirá seguir llenando tu catálogo de juegos cuando tu biblioteca esté llena, haciendo muy fácil la capacidad para ampliar la memoria.

Potencia y rendimiento
El procesador AMD Ryzen™ 7 7735HS equipado con 8 núcleos, te permitirá jugar con los últimos juegos del mercado AAA y maratones gaming de manera ultra fluida y suave. Produce, crea, conecta y colabora como nunca antes. El portátil cuenta con,16GB de RAM DDR5 de 4800 MHz y 512GB SSD, para que ejecutes tus juegos como la multitarea de forma eficiente, y con un aumento del rendimiento gracias a su mayor ancho de banda.

GeForce RTX™ serie 40
Los portátiles más rápidos del mundo para jugadores y creadores se basan en las GPU de los portátiles NVIDIA® GeForce RTX™ serie 40. Cuentan con la arquitectura ultraeficiente NVIDIA Ada Lovelace. Además, suponen todo un salto cuántico en el rendimiento con DLSS 3, con tecnología de IA y permiten mundos virtuales realistas con trazado de rayos completo. El conjunto de tecnologías Max-Q optimiza el rendimiento del sistema, la potencia, la duración de la batería y la acústica para lograr la máxima eficiencia.

Colores ricos y brillantes FHD
Los colores claros y realistas cobran vida con una resolución Full HD y panel de 15.6" tipo IPS de 144 Hz. Visualiza contenido sin problemas desde cualquier ángulo con tus amigos y familiares.

Wi-Fi 6
El Wi-Fi 6 aumenta la velocidad de transmisión, mejora la eficiencia y minimiza la congestión de la red cuando se utilizan múltiples dispositivos. La futura red WLAN requiere más rendimiento para hacer frente al aumento del tráfico de datos y gestionar más señales WLAN. El revolucionario y altamente eficiente estándar WLAN IEEE 802.11ax (Wi-Fi 6) hace frente a este desafío. Wi-Fi 6 cumple con su promesa de garantizar una red más rápida y estable en la próxima década. La tarjeta ofrece velocidades de hasta 574 Mbps en la red de 2.40 GHz, mientras que ofrecerá hasta 2.402 Mbps en la de 5 GHz.
',
       'portatil',
       'Asus',
       28,
       1379,
       0.24,
       5,
       'static/images/category_portatil19.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil gaming - ASUS TUF A15 FA507NV-LP031W, 15.6" Full HD, AMD Ryzen 7 7735HS, 16GB RAM, 512GB SSD, GeForce RTX™ 4060, Windows 11 Home'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Portátil - ASUS Chromebook CX1400FKA-EC0077, 14" Full HD, Intel® Celeron® N4500, 8GB RAM, 128GB eMMC, UHD Graphics, Chrome OS', 
       'Descripción
El ASUS Chromebook CX1400FKA-EC0077 está hecho para potenciar la productividad y la multitarea sin que pare la diversión todo el día, todos los días. Además, el ASUS Chromebook Flip CX1 es tu puerta de entrada a lo mejor de Google, incluida la rica biblioteca de aplicaciones para trabajar o jugar en Google Play. El ASUS Chromebook Flip CX1 cuenta con un rendimiento fluido, una seguridad de gran solidez y unas funciones muy prácticas, por lo que es perfecto para que cualquiera pueda disfrutar de un entretenimiento y una productividad sin interrupciones.

¿Qué es un Chromebook?
Los Chromebook son ordenadores portátiles que utilizan el sistema operativo "Chrome OS", desarrollado por Google. Está diseñado para darte una solución rápida y constante, y lleva lo mejor de los servicios de Google integrados. 

Rápido como el primer día
Se inicia en cuestión de segundos y se actualiza de forma automática en segundo plano (requiere conexión a internet).

Sencillo e inteligente
Realiza una copia de seguridad automática de tus datos y funciona con y sin conexión. Un dispositivo pensado para compartir y colaborar.

Seguridad garantizada
Con protección integrada, sin necesidad de programas adicionales y con múltiples niveles de seguridad. (El antivirus integrado y la comprobación de arranque de Chrome OS están diseñados para evitar los problemas persistentes que pueden darse durante un uso normal, pero esto no significa que Chromebook no pueda ser atacado por código malicioso).

Para toda la familia
Con la aplicación Family Link, puedes establecer normas digitales básicas para acompañar y guiar a tus hijos en el uso del ordenador.

Adaptado a todas tus necesidades
Todas tus aplicaciones favoritas de Google vienen pre-instaladas en cada Chromebook, por lo que puedes editar, descargar y convertir documentos de Microsoft Office en Google Docs, Sheets y Slides. Además, en Google Play Store podrás acceder a miles de aplicaciones para escuchar música, ver vídeos, crear contenido, trabajar y compartir archivos. (Requiere una conexión a Internet. Algunas aplicaciones son de pago.) Y todo esto con una batería que dura hasta 12 horas (puede variar en función del uso y otras condiciones).
',
       'portatil',
       'Asus',
       16,
       399,
       0,
       4,
       'static/images/category_portatil20.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Portátil - ASUS Chromebook CX1400FKA-EC0077, 14" Full HD, Intel® Celeron® N4500, 8GB RAM, 128GB eMMC, UHD Graphics, Chrome OS'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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
       0.08,
       4.5,
       'static/images/category_smartphone1.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - Samsung Galaxy S24, Onyx, 256GB, 8GB RAM, 6.2" FHD+, con IA, Exynos 2400, 4000 mAh, Android 14'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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
       0.11,
       5,
       'static/images/category_smartphone2.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Apple iPhone 15 Pro Max, Titanio Natural, 256 GB, 5G, 6.7" Pantalla Super Retina XDR, Chip A17 Bionic, iOS'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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
       0.13,
       5,
       'static/images/category_smartphone4.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - OPPO Reno 11 F, Verde, 256GB, 8GB RAM, 6.7" AMOLED FHD+, MediaTek Dimensity 7050, 5000mAh, Android'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Móvil - XIAOMI Redmi Note 10 5G, Azul, 128 GB, 4 GB RAM, 6,5 ", Full HD+, MediaTek, 5,000 mAh, Android', 
       'Descripción
El Xiaomi Redmi Note 10 5G está listo para desafiar los límites del rendimiento de los juegos. Su tecnología de procesamiento de 7 nm y su módem integrado ofrecen un mayor rendimiento con un menor consumo de energía para que los usuarios puedan disfrutar de un uso prolongado de su dispositivo sin preocuparse por el consumo de energía. Con soporte para 5G dual SIM, Redmi Note 10 5G es una bestia de productividad.
Características:
•	Pantalla AdaptiveSync de 90 Hz para una experiencia fluida
Con una pantalla FHD + DotDisplay de 6.5 ”con frecuencia de actualización de 90Hz, Redmi Note 10 5G ofrece una hermosa pantalla con un uso más suave. Más allá de la frecuencia de actualización de 90Hz, el teléfono es capaz de ajustarse al contenido automáticamente

•	Desde la transmisión de video a 30Hz o 60Hz hasta el desplazamiento de los feeds de las redes sociales
•	Garantiza una experiencia fluida y un uso óptimo de la batería.
•	Cámara trasera triple para una creatividad infinita
¡Con una cámara trasera triple de 48MP, Redmi Note 10 5G fue creado para crear! Su configuración de triple cámara incluye una cámara principal de 48MP, una cámara macro de 2MP y un sensor de profundidad de 2MP, mientras que sus herramientas de creatividad, como el modo nocturno, cámara lenta, video a intervalos, convierten a cualquier usuario en un profesional creativo.
•	Energía todo el día con alta eficiencia
Redmi Note 10 5G promociona una batería masiva de 5,000 mAh (típica) con carga rápida de 18 W, por lo que los usuarios pueden permanecer encendidos durante todo el día, incluso durante períodos de uso intensivo.
Especificaciones:
•	Actuación

•	MediaTek Dimensity 700
•	CPU de ocho núcleos, hasta 2,2 GHz
•	Proceso de fabricación de 7 nm
•	Arm MailG57 MC2 GPU, hasta 950MHz
•	4GB + 64GB, 4GB + 128GB, 6GB + 128GB *
•	LPDDR4X RAM
•	Almacenamiento UFS 2.2
•	MIUI 12 basado en Android 11
•	Pantalla y diseño

•	Pantalla de puntos AdaptiveSync de 6.5 ”de 90Hz
•	Pantalla AdaptiveSync: 30Hz ** / 50Hz / 60Hz / 90Hz
•	Relación de contraste: 1500: 1
•	Brillo: 400 nits (típico), HBM 500 nits (típico)
•	Resolución: 2400 x 1080
•	Modo de lectura 3.0
•	Pantalla de luz solar
•	Frente Corning® Gorilla® Glass 3
•	Colores *: Plata Cromo, Gris Grafito, Azul Noche, Verde Aurora
•	Dimensiones: 161,81 mm x 75,34 mm x 8,92 mm
•	Peso: 190 g
•	Cámara

•	Triple cámara de 48MP
•	Cámara gran angular de 48 MP
•	Tamaño del sensor de 1/2 ”, 0,8 ?m f / 1,79
•	Lente 6P
•	Cámara macro de 2MP f / 2.4
•	Sensor de profundidad de 2MP f / 2.4
•	Cámara frontal de 8MP f / 2.0
•	Bateria cargando

•	Batería de 5000 mAh (típica)
•	Carga rápida de 18 W
•	Cargador integrado de 22,5 W
',
       'smartphone',
       'Xiaomi',
       46,
       265.43,
       0.48,
       4,
       'static/images/category_smartphone6.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - XIAOMI Redmi Note 10 5G, Azul, 128 GB, 4 GB RAM, 6,5 ", Full HD+, MediaTek, 5,000 mAh, Android'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Móvil - realme 12+ 5G, Beige, 512 GB, 12 GB RAM, 6.67" Full HD+ AMOLED 120Hz, MediaTek Dimensity 7050 5G, 5000 mAh, Android', 
       'Descripción
Sé un maestro de las imágenes y la comunicación con el móvil realme 12+ 5G. Cuenta con la triple cámara de 50 megapíxels y el procesador MediaTek Dimensity 7050 5G.

Cámaras de gran resolución
Este móvil cuenta con una cámara triple trasera de 50 megapíxeles f/1.88 con sensor Sony LYT-600 + una cámara gran angular 8 megapíxeles f/2.2 + cámara macro de 2 megapíxeles f/2.4. Además, cuenta con una cámara frontal de 16 MP f/2.45. Y por si fuera poco, es capaz de grabar vídeos a resolución 4K (4K 30fps).

MediaTek Dimensity 7050 5G
El procesador Dimensity 7050 5G, junto con su núcleo MediaTek de 6 nm, brindarán una gama completa de mejoras en el rendimiento del teléfono, con 8 núcleos a 2.6 GHz de velocidad.

Pantalla Full HD+
Esta pantalla de 6.67" insignia viene con luna tasa de respuesta de 120 Hz, que brinda un efecto de visualización de fotografías más vívidas a una resolución Full HD+ (2400x1080).

realme UI 5.0, basado en Android 14
La nueva UI 5.0 se actualiza tanto visual como funcionalmente, incluyendo nuevas funciones File Dock, Smart Image Matting y Phonelink para una experiencia de usuario más inteligente y conveniente.

Gran capacidad de memoria
El móvil realme cuenta con una memoria RAM de 12 GB y 512 GB de capacidad. La gran RAM admite la ejecución de múltiples aplicaciones en segundo plano, lo que hace que el cambio de aplicación sea más fluido.

Carga SUPERVOOC de 67 W
Una mayor capacidad de la batería (de 5000 mAh) garantiza un uso diario, una velocidad de carga más rápida y menos tiempo de espera para la carga.
',
       'smartphone',
       'Xiaomi',
       25,
       349,
       0,
       3.5,
       'static/images/category_smartphone7.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - realme 12+ 5G, Beige, 512 GB, 12 GB RAM, 6.67" Full HD+ AMOLED 120Hz, MediaTek Dimensity 7050 5G, 5000 mAh, Android'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Apple iPhone 13, Rosa, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS', 
       'Descripción
iPhone 13: Tu nuevo superpoder. Nuestro sistema de cámara dual más avanzado. El chip que hace morder el polvo a la competencia. Un subidón de autonomía que vaya si notarás. Ceramic Shield, más duro que cualquier vidrio de smartphone. Pantalla Super Retina XDR de 6,1 pulgadas. Diseño robusto con bordes planos y resistente al agua.
Características
•	¿Cómo conseguimos introducir tanta innovación en la cámara? Pensando en diagonal. Como lo oyes: diseñamos una nueva arquitectura desde cero y giramos los objetivos 45 grados. De este modo, conseguimos espacio para nuestro sistema de cámara dual más avanzado y para el sensor del gran angular, que es más grande que nunca. También hemos integrado nuestra tecnología de estabili¬zación óptica de imagen por desplazamiento del sensor y hemos puesto al ultra gran angular un sensor más rápido. Ahí queda eso.
•	El nuevo ultra gran angular muestra más detalle en las zonas oscuras de tus fotos.
•	El nuevo gran angular captura un 47 % más de luz para lograr mejores instantáneas.
•	La estabili¬zación óptica de imagen por desplazamiento del sensor consigue planos estables aunque tú te muevas.
•	El iPhone ha estudiado cine. Así no tienes que hacerlo tú. Presentamos el modo Cine. En el cine se utiliza una técnica que consiste en cambiar el enfoque de manera selectiva para dirigir la atención del público hacia el sujeto protagonista de cada escena. Y ahora con el iPhone puedes usar este mismo recurso narrativo en tus vídeos. Érase una vez Hollywood, pero para todos los públicos.
•	El modo Cine crea de forma automática bellos efectos de profundidad y cambios de enfoque. Al empezar a grabar en modo Cine, el iPhone enfoca el sujeto y desenfoca el fondo para crear un increíble efecto de profundidad de campo. Cuando percibe que un nuevo protagonista va a entrar en escena, el modo Cine cambia el enfoque automáticamente.
•	Puedes incluso ajustar la profundidad de campo después de terminar la grabación. Si al ver el resultado no te convence el enfoque o quieres ajustar el difuminado, no pasa nada. Con tocar aquí y deslizar allá lo tienes todo hecho. Ni las cámaras de cine profesionales llegan a tanto.
•	El modo Cine graba vídeos en HDR con Dolby Vision.
•	Haz un fotón sin mover un dedo. Vale, solo uno.
•	El modo Noche detecta los entornos con poca luz y ajusta de forma automática los parámetros para ofrecerte fotos más luminosas con colores intensos.
•	El modo Retrato difumina el fondo y da más protagonismo al sujeto. Puedes ir deslizando entre los seis efectos de iluminación para elegir el que más te llame.
•	El HDR Inteligente 4 ahora detecta hasta cuatro personas distintas en el plano y optimiza el contraste, la iluminación y el tono de piel de forma independiente. Lo mejor de cada casa, pero con mucha mejor cara.
•	Deep Fusion se activa en ambientes con poca luz y analiza las distintas exposiciones píxel a píxel para captar todas las texturas y los detalles, por minúsculos que sean.
•	El ultra gran angular amplía el campo de visión incluso cuando enfocas algo que está muy cerca. Así cabe todo en la imagen sin tener que alejarte.
•	Los Recuerdos son pases de diapositivas que se crean de forma automática a partir de tus mejores fotos. Puedes personalizarlos como quieras y añadir una banda sonora con canciones de tu biblioteca.
•	Una cámara con un estilo tan tú. Presentamos los Estilos Fotográficos. Los Estilos son tan inteligentes que suben o bajan los colores manteniendo la naturalidad de los tonos de piel.
•	Con los Estilos Fotográficos puedes ponerle tu sello personal a las fotos. A diferencia de los filtros, los estilos aplican los ajustes necesarios a cada zona de la imagen, sin alterar los tonos de piel.
•	Elige Brillante para dar luminosidad y brillo a las fotos, Contraste Intenso para sombras más oscuras y colores más vivos, y Frío o Cálido para acentuar los subtonos azules o dorados. A esto se le llama tener estilo.
',
       'smartphone',
       'Apple',
       28,
       739,
       0.15,
       4.5,
       'static/images/category_smartphone8.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Apple iPhone 13, Rosa, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Móvil - OPPO FIND X5, Negro, 256 GB, 8 GB RAM, 6,55 ", Qualcomm Snapdragon™ 888 5G, 4800 mAh, Android', 
       'Descripción
Vive el momento con el móvil OPPO Find X5 5G, en color negro. Con la capacidad para grabar vídeos asombrosos al alcance de tu mano, el límite lo marca tu imaginación, así que piensa a lo grande.

Pantalla FHD+ de 120 Hz
Navegar, ver vídeos, consultar las redes sociales… todo es más fluido en este smartphone con pantalla con velocidad de refresco de 120 Hz con panel Dynamic AMOLED 6.55" y resolución FHD+ (2400 x 1080 píxeles). Disfruta de una interacción asombrosamente sencilla.

Captura todos tus momentos
El equipo fotográfico de este OPPO Find X5 5G llega coronado por un tres cámaras de 50MP (f/1.8), 2 axis, 50MP (f/2.2), 13MP (f/2.4). Con tantas cámaras y megapíxeles obtendrás unas imágenes absolutamente impresionantes. Además, en el frontal cuenta con una cámara de 32MP (f/2.4) con sensor Sony IMX615 para selfies. Y todo el equipo fotográfico, trasero y frontal.

Desata tu potencial
El OPPO Find X5 5G utiliza una sofisticada combinación de características (Sensor cámara principal Sony IMX766, Teleobjetivo 5x hibrido, 4k Vídeo Ultra Nocturno) para grabar vídeos con colores intensos, brillantes y equilibrados, ya sea de día o de noche.

Carga Super rápida
La batería de 4800 mAh del Find X5 5G se ha diseñado para durar, independientemente del uso que le des al móvil, y para que cuando necesite cargarse, lo haga rápido. La carga SuperVOOC 80 W carga el teléfono al 100 % en solo unos minutos.

Preparado para la red 5G
El Find X5 5G de OPPO funciona con el procesador Qualcomm Snapdragon™ 888 5G y es compatible con bandas 5G. También ofrece 8 GB de RAM para un rendimiento fluido y una autonomía impresionante, más 256 GB de almacenamiento interno.

Wi-Fi 6
El Wi-Fi 6 aumenta la velocidad de transmisión, mejora la eficiencia y minimiza la congestión de la red cuando se utilizan múltiples dispositivos. La futura red WLAN requiere más rendimiento para hacer frente al aumento del tráfico de datos y gestionar más señales WLAN. El revolucionario y altamente eficiente estándar WLAN IEEE 802.11ax (Wi-Fi 6) hace frente a este desafío.
',
       'smartphone',
       'Oppo',
       49,
       999,
       0.60,
       4,
       'static/images/category_smartphone9.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - OPPO FIND X5, Negro, 256 GB, 8 GB RAM, 6,55 ", Qualcomm Snapdragon™ 888 5G, 4800 mAh, Android'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Móvil - Google Pixel 8a, Porcelana, 128 GB, 8 GB RAM, 6.1" OLED, Google Tensor G3, 4492 mAh, Android', 
       'Descripción
Descubre Pixel 8a, creado por Google. Saca fotos magníficas con la Cámara Pixel. Haz más en menos tiempo con la IA de Google, como arreglar imágenes borrosas, filtrar llamadas y aprender cosas nuevas. Sus funciones de seguridad del más alto nivel ayudan a proteger tus datos. Y se ha diseñado para durar. Todo, a un precio excepcional.

La potencia de la IA de Google en Pixel
Google Tensor G3 es el mismo chip que incluye Pixel 8 Pro. Hace que Pixel 8a sea rápido y eficiente. Además, incorpora la IA de Google para ayudarte de formas más inteligentes a lo largo del día.

Todo se ve increíble en Pixel
La pantalla OLED Actua de 6,1 pulgadas y alta resolución de Pixel (2400x1080p) tiene aún más brillo e intensidad, y te permite desplazarte por la interfaz, ver vídeos en streaming y cambiar de una aplicación a otra de manera superfluida.

Fotos increíbles sin complicaciones
La Cámara Pixel hace fotos y vídeos increíbles siempre. La IA de Google te permite conseguir fotos de grupo perfectas y arreglar imágenes borrosas. Esto es posible gracias a su doble cámara trasera de 64 MP + 13 MP y capacidad de grabar vídeo en resolución 4K.

Alta capacidad y eficiencia
El Google Pixel 8a cuenta con una memoria RAM de 8 GB y una capacidad de memoria de 128 GB, por lo que tendrás memoria para todo lo que necesites.

Una batería fiable que dura todo el día
La Batería Inteligente de tu Pixel puede durar más de 24 horas. Y si activas Ahorro de Batería Extremo, puede llegar hasta las 72 horas. Para que no te quedes sin batería cuando más la necesitas.

Ni los arañazos ni los líquidos derramados son un problema
Con su diseño duradero y protección IP67, Pixel 8a puede aguantar los descuidos, los líquidos derramados y el polvo. Además, la pantalla es resistente a los arañazos gracias a Corning® Gorilla® Glass 3.

Colores divertidos. Diseño fresco.
Pixel 8a tiene un diseño atrevido, y es muy agradable al tacto. Cuenta con un acabado pulido y la cubierta trasera es mate. Además, está fabricado con materiales reciclados.
',
       'smartphone',
       'Google',
       17,
       549,
       0,
       4,
       'static/images/category_smartphone10.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - Google Pixel 8a, Porcelana, 128 GB, 8 GB RAM, 6.1" OLED, Google Tensor G3, 4492 mAh, Android'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Móvil - Google Pixel 8, Rosa, 128 GB, 8 GB RAM, 6.2 " OLED Full HD+, Google Tensor G3, 4.575 mAh, Android', 
       'Descripción
Descubre Pixel 8 en color rosa, creado por Google. El chip Google Tensor G3 permite que tu teléfono sea rápido, y la Cámara Pixel hace fotos y vídeos increíbles. Pixel 8 incorpora las funciones mejor valoradas en materia de seguridad y además, la batería dura todo el día.

La potencia de la IA de Google en Pixel
Google Tensor G3 es el chip más potente de Pixel hasta la fecha. Está diseñado a medida con la IA de Google para ofrecerte funciones de fotografía y vídeo de vanguardia, así como maneras más inteligentes de ayudarte durante todo el día. Y hace que Pixel 8 sea superrápido y eficiente. Además, cuenta con una RAM de 8 GB y una capacidad de 128 GB, para que no te falte de nada.

Una pantalla impresionante
La pantalla de alta resolución OLED FHD+ de 6,2 pulgadas de Pixel muestra colores intensos y nítidos llenos de matices. Y tiene una tasa de refresco de hasta 120 Hz para que disfrutes de una experiencia muy fluida cuando juegues, navegues o cambies de aplicación.

Una batería superfiable que dura todo el día
La Batería Inteligente de Pixel puede durar más de 24 horas. Si activas Ahorro de Batería Extremo, puede durar hasta 72 horas, para que no te quedes sin batería cuando más lo necesites. Y tu Pixel se carga más rápido que nunca.

Diseño innovador y moderno
Pixel 8 sube el listón con un atractivo diseño que incorpora bordes contorneados, un acabado satinado y colores sofisticados. Y está fabricado con materiales reciclados.

Los arañazos y los líquidos derramados no son un problema
Con su diseño duradero y la protección IP68, Pixel 8 aguanta los descuidos, los líquidos derramados y el polvo. Además, es resistente a los arañazos gracias al recubrimiento de vidrio Corning® Gorilla® Glass Victus®.

Fotos y vídeos magníficos, siempre
La Cámara Pixel se ha actualizado por completo y cuenta con un procesamiento de imagen avanzado que capta colores intensos y detalles espectaculares con cualquier luz. Y ahora, gracias a Enfoque Macro, podrás crear imágenes increíbles por muy pequeño que sea lo que quieras inmortalizar. Todo esto con un sistema de cámara trasera dual de Gran Angular 50 MP f/1.68 + Ultra Gran Angular 12 MP f/2.2 + Sensor LDAF.

Vídeos increíbles en cada toma
La Cámara Pixel graba vídeos fluidos con una resolución asombrosa (hasta 4K a 24, 30 y 60 FPS) y un audio nítido, incluso en lugares concurridos y poco iluminados.

Seguridad en la que puedes confiar
Google Tensor G3 y el chip de seguridad Titan M2 aportan a Pixel varias capas de seguridad para que tu información personal esté protegida.
',
       'smartphone',
       'Google',
       18,
       629,
       0,
       4.5,
       'static/images/category_smartphone11.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - Google Pixel 8, Rosa, 128 GB, 8 GB RAM, 6.2 " OLED Full HD+, Google Tensor G3, 4.575 mAh, Android'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Móvil - Google Pixel 8, Verde liquen, 256 GB, 8 GB RAM, 6.2 " OLED Full HD+, Google Tensor G3, 4.575 mAh, Android', 
       'Descripción
Descubre Pixel 8 en color verde liquen, creado por Google. El chip Google Tensor G3 permite que tu teléfono sea rápido, y la Cámara Pixel hace fotos y vídeos increíbles. Pixel 8 incorpora las funciones mejor valoradas en materia de seguridad y además, la batería dura todo el día.

La potencia de la IA de Google en Pixel
Google Tensor G3 es el chip más potente de Pixel hasta la fecha. Está diseñado a medida con la IA de Google para ofrecerte funciones de fotografía y vídeo de vanguardia, así como maneras más inteligentes de ayudarte durante todo el día. Y hace que Pixel 8 sea superrápido y eficiente. Además, cuenta con una RAM de 8 GB y una capacidad de 256 GB, para que no te falte de nada.

Una pantalla impresionante
La pantalla de alta resolución OLED FHD+ de 6,2 pulgadas de Pixel muestra colores intensos y nítidos llenos de matices. Y tiene una tasa de refresco de hasta 120 Hz para que disfrutes de una experiencia muy fluida cuando juegues, navegues o cambies de aplicación.

Una batería superfiable que dura todo el día
La Batería Inteligente de Pixel puede durar más de 24 horas. Si activas Ahorro de Batería Extremo, puede durar hasta 72 horas, para que no te quedes sin batería cuando más lo necesites. Y tu Pixel se carga más rápido que nunca.

Diseño innovador y moderno
Pixel 8 sube el listón con un atractivo diseño que incorpora bordes contorneados, un acabado satinado y colores sofisticados. Y está fabricado con materiales reciclados.

Los arañazos y los líquidos derramados no son un problema
Con su diseño duradero y la protección IP68, Pixel 8 aguanta los descuidos, los líquidos derramados y el polvo. Además, es resistente a los arañazos gracias al recubrimiento de vidrio Corning® Gorilla® Glass Victus®.

Fotos y vídeos magníficos, siempre
La Cámara Pixel se ha actualizado por completo y cuenta con un procesamiento de imagen avanzado que capta colores intensos y detalles espectaculares con cualquier luz. Y ahora, gracias a Enfoque Macro, podrás crear imágenes increíbles por muy pequeño que sea lo que quieras inmortalizar. Todo esto con un sistema de cámara trasera dual de Gran Angular 50 MP f/1.68 + Ultra Gran Angular 12 MP f/2.2 + Sensor LDAF.

Vídeos increíbles en cada toma
La Cámara Pixel graba vídeos fluidos con una resolución asombrosa (hasta 4K a 24, 30 y 60 FPS) y un audio nítido, incluso en lugares concurridos y poco iluminados.
',
       'smartphone',
       'Google',
       18,
       859,
       0.20,
       5,
       'static/images/category_smartphone12.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - Google Pixel 8, Verde liquen, 256 GB, 8 GB RAM, 6.2 " OLED Full HD+, Google Tensor G3, 4.575 mAh, Android'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Apple iPhone 13, Verde, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS', 
       'Descripción
iPhone 13: Tu nuevo superpoder. Nuestro sistema de cámara dual más avanzado. El chip que hace morder el polvo a la competencia. Un subidón de autonomía que vaya si notarás. Ceramic Shield, más duro que cualquier vidrio de smartphone. Pantalla Super Retina XDR de 6,1 pulgadas. Diseño robusto con bordes planos y resistente al agua.
Características
•	¿Cómo conseguimos introducir tanta innovación en la cámara? Pensando en diagonal. Como lo oyes: diseñamos una nueva arquitectura desde cero y giramos los objetivos 45 grados. De este modo, conseguimos espacio para nuestro sistema de cámara dual más avanzado y para el sensor del gran angular, que es más grande que nunca. También hemos integrado nuestra tecnología de estabili¬zación óptica de imagen por desplazamiento del sensor y hemos puesto al ultra gran angular un sensor más rápido. Ahí queda eso.
•	El nuevo ultra gran angular muestra más detalle en las zonas oscuras de tus fotos.
•	El nuevo gran angular captura un 47 % más de luz para lograr mejores instantáneas.
•	La estabili¬zación óptica de imagen por desplazamiento del sensor consigue planos estables aunque tú te muevas.
•	El iPhone ha estudiado cine. Así no tienes que hacerlo tú. Presentamos el modo Cine. En el cine se utiliza una técnica que consiste en cambiar el enfoque de manera selectiva para dirigir la atención del público hacia el sujeto protagonista de cada escena. Y ahora con el iPhone puedes usar este mismo recurso narrativo en tus vídeos. Érase una vez Hollywood, pero para todos los públicos.
•	El modo Cine crea de forma automática bellos efectos de profundidad y cambios de enfoque. Al empezar a grabar en modo Cine, el iPhone enfoca el sujeto y desenfoca el fondo para crear un increíble efecto de profundidad de campo. Cuando percibe que un nuevo protagonista va a entrar en escena, el modo Cine cambia el enfoque automáticamente.
•	El modo Cine graba vídeos en HDR con Dolby Vision.
•	Haz un fotón sin mover un dedo. Vale, solo uno.
•	El modo Noche detecta los entornos con poca luz y ajusta de forma automática los parámetros para ofrecerte fotos más luminosas con colores intensos.
•	El modo Retrato difumina el fondo y da más protagonismo al sujeto. Puedes ir deslizando entre los seis efectos de iluminación para elegir el que más te llame.
•	El HDR Inteligente 4 ahora detecta hasta cuatro personas distintas en el plano y optimiza el contraste, la iluminación y el tono de piel de forma independiente. Lo mejor de cada casa, pero con mucha mejor cara.
•	Deep Fusion se activa en ambientes con poca luz y analiza las distintas exposiciones píxel a píxel para captar todas las texturas y los detalles, por minúsculos que sean.
Especificaciones Apple iPhone 13
•	Sistema operativo
•	iOS 15
•	iOS es el sistema operativo móvil más personal y seguro del mundo. Está repleto de funciones avanzadas y se ha diseñado para proteger tu privacidad.
•	Procesador
•	Chip A15 Bionic
•	Nueva CPU de 6 núcleos con 2 núcleos de rendimiento y 4 de eficiencia
•	Nueva GPU de 4 núcleos
•	Nuevo Neural Engine de 16 núcleos
•	Pantalla
•	Pantalla Super Retina XDR
•	Pantalla OLED de 6,1 pulgadas (15,40 cm) en diagonal
•	Resolución de 2.532 por 1.170 píxeles a 460 p/p
•	Pantalla HDR
•	True Tone
•	Gama cromática amplia (P3)
•	Respuesta háptica
•	Contraste de 2.000.000:1 (típico)
•	Brillo máximo de 800 nits (típico) o de 1.200 nits (HDR)
•	Cubierta oleófuga antihuellas
•	SIM
•	Doble SIM (Nano SIM y eSIM)
•	Compatible con doble eSIM
•	El iPhone 13 y el iPhone 13 mini no son compatibles con las tarjetas Micro SIM
•	Memoria
•	Almacenamiento interno: 128 GB
',
       'smartphone',
       'Google',
       22,
       739,
       0.16,
       5,
       'static/images/category_smartphone13.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Apple iPhone 13, Verde, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Móvil - OPPO Reno10 Pro 5G, Silvery Grey, 256 GB, 12 GB RAM, 6.7" AMOLED Full HD+, Qualcomm Snapdragon™ 778G, 4600 mAh, Android', 
       'Descripción
Disfruta del móvil OPPO Reno10 Pro 5G, el experto en retratos. Conn una capacidad de memoria de 256 GB, RAM de 12 GB y pantalla AMOLED de 6.7", sus cámaras y su batería acabarán de enamorarte.

Sensor de imagen flagship en la cámara frontal
Diseñado exclusivamente por OPPO y construido con hardware Sony, el sensor IMX709 de la cámara frontal cuenta con altísimos niveles de captación de luz. La mayor entrada de luz te permite capturar imágenes brillantes y claras.

50 MP de cámara principal
La cámara principal de 50 MP proporciona un nuevo nivel de claridad, garantizando que cada escena sea una obra maestra y que cada foto sea perfecta. Además, cuenta con un gran angular de 8MP y un teleobjetivo de 32MP. Para los selfies, contarás con 32MP.

Más rápido que nunca
Rendimiento para los más exigentes, con procesador Qualcomm Snapdragon™ 778G, hardware y software se unen para darte una mejor experiencia de juego.

SuperVOOC 80W
La batería cuenta con una capacidad de 4600 mAh, lo que te dará más de 1600 ciclos de carga. La carga rápida SuperVOOC de 80W te dará una carga del 100% en 28 minutos.
',
       'smartphone',
       'Oppo',
       30,
       479,
       0,
       3.5,
       'static/images/category_smartphone14.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - OPPO Reno10 Pro 5G, Silvery Grey, 256 GB, 12 GB RAM, 6.7" AMOLED Full HD+, Qualcomm Snapdragon™ 778G, 4600 mAh, Android'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Móvil - VIVO Snapdragon 6802.4GHZ*4 + 1.9GHZ*48 núcleos, Oro, 256 GB, 8 GB RAM, 6,58 ", Full HD+, Snapdragon, 5000 mAh, Android', 
       'Descripción
Dispositivo móvil vivo Y35 Dawn Gold, con un procesador Snapdragon 680,doble cámara, pantalla brillante Full-HD+ y una gran batería de 5000 mAh.

Cámara de alta resolución de 50 MP
vivo Y35 5G ofrece una experiencia fotográfica altamente versátil y de nivel profesional con una gama de cámaras traseras dobles de 50 MP ƒ/1.8 + 2MP ƒ/2.4, también tendrás 16 MP ƒ/2.0 de cámara frontal para selfies.

Pantalla LCD FHD+
Pantalla LCD de 6.58 pulgadas, la pantalla se actualiza y responde más rápido. Para incrementar la fluidez, especialmente en los juegos, lo que te permite tener una experiencia más fresca en la palma de tu mano. Sensor de huella integrado.

Procesador potente y gran almacenamiento interno
Con el procesador Snapdragon 680 y 8 GB RAM + 256 GB de memoria interna, podrás manejar diferentes juegos con facilidad. También te permitirá instalar y ejecutar todas las aplicaciones que quieras. Podrás ampliar el almacenamiento mediante una tarjeta microSD de hasta 256 GB.
',
       'smartphone',
       'Vivo',
       19,
       224.99,
       0,
       4,
       'static/images/category_smartphone15.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - VIVO Snapdragon 6802.4GHZ*4 + 1.9GHZ*48 núcleos, Oro, 256 GB, 8 GB RAM, 6,58 ", Full HD+, Snapdragon, 5000 mAh, Android'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Móvil - Samsung Galaxy A15 LTE, Azul, 128GB, 4GB RAM, 6.5" FHD+, MediaTek G99 Octa-Core, 5000mAh, Android 14', 
       'Descripción
Mejoras visuales para un resultado brillante
La nueva pantalla de Galaxy A15 se apoya en la tecnología Vision Booster para que puedas ver imágenes, grabaciones de vídeos, documentos de texto y todo tipo de contenido en streaming en entornos exteriores, incluso a plena luz del sol, ya que el brillo de la pantalla se adapta de forma precisa a la iluminación del ambiente para que no tengas que forzar la vista. Además, con las funciones de Eye Comfort Shield, es posible disminuir la emisión de luz azul que emite la pantalla.
Selección de cámaras para guardar todos tus recuerdos
¡Luces, cámaras, diversión! Conviértete en un auténtico profesional de la fotografía con el amplio juego de lentes de Galaxy A15 y captura paisajes mágicos, selfies divertidísimos y momentos irrepetibles con una calidad excepcional. Al disponer de varias opciones, las posibilidades se multiplican: tienes la cámara principal de 50 MP con estabilización óptica de imagen, la cámara con gran angular de 5 MP, la cámara macro de 2 MP y la cámara frontal de 13 MP.
Capacidad para guardar todo lo que necesitas
¿Estás cansado de tener que eliminar fotos y vídeos que te gustan de tu smartphone para poder disponer de espacio libre? ¡Eso ya se ha acabado! Galaxy A15 cuenta con 4 GB de memoria RAM y 128 GB de memoria interna para que puedas almacenar todos tus documentos personales en un único dispositivo. ¿No es suficiente? También puedes ampliar la capacidad con una tarjeta MicroSD de hasta 1 TB.
',
       'smartphone',
       'Samsung',
       26,
       199,
       0.20,
       4,
       'static/images/category_smartphone16.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - Samsung Galaxy A15 LTE, Azul, 128GB, 4GB RAM, 6.5" FHD+, MediaTek G99 Octa-Core, 5000mAh, Android 14'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Móvil - Samsung Galaxy S23 5G, Botanic Green, 256GB, 8GB RAM, con IA, 6.1" FHD+, Qualcomm Snapdragon, 3900mAh, Android 13', 
       'Descripción
Comparte lo épico
La experiencia de visualización mejora épicamente en exteriores. La pantalla Dynamic AMOLED 2x FHD+ de 6.1” cuenta con una visibilidad adaptativa para exteriores, alcanzando 1.750 nits de brillo máximo y un modo noche más agradable. Navega y haz scroll de manera suave y fluida gracias a sus 120 Hz de tasa de refresco.
La mejor cámara con Nightography
Dale un giro íncreíble a tus fotos y vídeos con la cámara de calidad profesional de Galaxy S23 y atrévete a ser el protagonista de la noche. Galaxy S23 ofrece una calidad de imagen de alta resolución y calidad sin precedentes. Haz selfies, retratos o vídeos llenos de brillo y siempre nítidas, incluso en situaciones de poca luz.
Máximo rendimiento para tus partidas
Cuando tus partidas online son épicas, lo normal es querer compartirlas. Galaxy S23 no solo te permite jugar con la máxima calidad los últimos juegos del mercado, también te permite compartirlos con tus amigos para que sean aún más épicos. Todo gracias a su increíble potencia.
El chipset y sistema de refrigeración más avanzado
Disfruta jugando, trabajando o compartiendo contenido en vivo durante muchísimo tiempo. El procesador de 4 nm de Galaxy S23 te ofrece una experiencia increíblemente fluida. Su sistema de refrigeración Vapor Cooling, aún más grande, mantendrá el calor a raya.
',
       'smartphone',
       'Samsung',
       55,
       869,
       0.28,
       4.5,
       'static/images/category_smartphone17.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - Samsung Galaxy S23 5G, Botanic Green, 256GB, 8GB RAM, con IA, 6.1" FHD+, Qualcomm Snapdragon, 3900mAh, Android 13'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Móvil - Samsung Galaxy S24 Ultra, Titanium Gray, 512GB, 12GB RAM, 6.8" QHD+, con IA, S Pen, Qualcomm Snapdragon 8, 5000mAh, Android 14', 
       'Descripción
Un diseño de referencia con ADN Galaxy
El Galaxy S24 Ultra presenta el diseño icónico de la serie Ultra, compatible con S Pen, para que crees y trabajes sin límites. Con un bonito acabado metálico y marcos aún más pequeños, tu smartphone se ajusta a tus preferencias gracias a la tecnología One UI 6.1, que te permite customizarlo a tu gusto y, además, mantener tus datos e información a buen recaudo con la seguridad de Samsung Knox.
Un dispositivo que razona, planifica y crea
Si hay algo que destaca del nuevo lanzamiento de Samsung, es la innovación a la hora de interactuar con la información y el medio que nos rodea. La Inteligencia Artificial resuelve tus dudas y te presenta funciones impresionantes. Por ejemplo, te permite traducir al instante llamadas y chats, encontrar información haciendo un simple gesto en tu pantalla, y ahorrar tiempo navegando por internet con su Web Assist. Además, incorpora herramientas, como Note Assist y Transcript Assist, para ayudarte a trabajar y estudiar de manera aún más productiva.
Eleva tu experiencia de fotografía
El modelo más avanzado de la nueva Serie S te ofrece una tecnología cámara premium, con 200MP de resolución. Con Quad Zoom, solo disponible en Galaxy S24 Ultra, será como si llevaras un completo kit de lentes en el bolsillo. Y es que podrás tomar fotos y vídeos con hasta 4 niveles de zoom sin perder calidad.
El chip más potente jamás visto en un Galaxy
Si algo hay que remarcar de este modelo de la Serie S24 es su procesador. El Snapdragon 8 Gen 3 de 4nm te ofrece el máximo rendimiento sin comprometer la eficiencia. Su sistema de refrigeración es un 90% más grande, lo que reduce la temperatura y te garantiza una experiencia premium.
',
       'smartphone',
       'Samsung',
       34,
       1459,
       0,
       5,
       'static/images/category_smartphone18.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - Samsung Galaxy S24 Ultra, Titanium Gray, 512GB, 12GB RAM, 6.8" QHD+, con IA, S Pen, Qualcomm Snapdragon 8, 5000mAh, Android 14'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Móvil - Xiaomi Redmi Note 13 Pro, Morado, 512 GB, 12 GB, 6.67" Full HD+AMOLED, MediaTek Helio G99 Ultra, 5000 mAh, Android', 
       'Descripción
Cámara triple de 200 MP con OIS
Captura la grandeza de todo tu mundo con el sistema de cámara triple del Redmi Note 13 Pro, que incluye una increíble cámara principal de 200 MP con Estabilización Óptica de la Imagen. Además, con las cámaras dedicadas ultra gran angular y macro, tendrás aún más formas de ver y capturar el entorno.

Pantalla AMOLED de 120 Hz
Con una tasa de refresco de 120 Hz, el Redmi Note 13 Pro es suave como la seda y muy agradable de usar para todo, incluido desplazarse por las redes sociales y navegar por Internet. Disfruta de colores vivos y vibrantes, un contraste nítido y un brillo impresionante. Reduce la fatiga visual con la atenuación PWM de 1920 Hz y tres certificaciones independientes de TÜV Rheinland.

IP54
Con una clasificación IP54, Redmi Note 13 Pro 5G está bien equipado con protección contra salpicaduras y polvo. Además, la pantalla del Redmi Note 13 Pro 5G se ha optimizado para mejorar el reconocimiento y el control táctil, evitando disparos accidentales con el agua.
',
       'smartphone',
       'Xiaomi',
       49,
       399,
       0.13,
       4,
       'static/images/category_smartphone19.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - Xiaomi Redmi Note 13 Pro, Morado, 512 GB, 12 GB, 6.67" Full HD+AMOLED, MediaTek Helio G99 Ultra, 5000 mAh, Android'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Móvil - Samsung Galaxy A35 5G, 128GB, 6GB RAM, 6.6" FHD+, Exynos 1380, 5000 mAh, Android 14, Light Blue', 
       'Descripción
Una pantalla con mucho estilo
Con una cubierta trasera brillante, Galaxy A35 exhibe una estética elegante y refinada. Su pantalla Super AMOLED FHD+ de 6,6” ofrece una tasa de refresco de 120 Hz, lo que garantiza una experiencia visual fluida y envolvente al disfrutar de tus series y películas favoritas. Con colores vivos y una calidad de imagen excepcional, te sumergirás por completo en la acción.

Rendimiento digno de mención
¡Galaxy A35 es la solución perfecta si estás preocupado por la velocidad de tu smartphone! Con su avanzado procesador Octa-Core integrado, este dispositivo proporciona la potencia necesaria para ejecutar aplicaciones de manera rápida, fluida y cómoda, sin limitaciones. Es prácticamente como llevar un ordenador en la palma de la mano.

Fotografía como un profesional
Conviértete en un maestro de la fotografía con el amplio conjunto de lentes del Galaxy A35 y disfruta capturando paisajes impresionantes, selfies divertidos y momentos inolvidables con una calidad excepcional. Al tener múltiples opciones disponibles, las oportunidades se multiplican: desde la cámara principal de 50 MP con estabilización óptica de imagen, hasta la cámara gran angular de 8 MP, la cámara macro de 5 MP y la cámara frontal de 13 MP.

Almacenamiento destacable
Despídete de tener que borrar tus imágenes y videos para liberar espacio en tu teléfono móvil. Con Galaxy A35, se acabaron las preocupaciones por la memoria. Equipado con 6 GB de RAM y 128 GB de almacenamiento interno, este dispositivo te permite guardar todos tus documentos personales en un solo lugar. ¿Necesitas aún más espacio? Podrás expandir la capacidad con una tarjeta MicroSD de hasta 1 TB.
',
       'smartphone',
       'Samsung',
       60,
       339,
       0,
       4,
       'static/images/category_smartphone20.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Móvil - Samsung Galaxy A35 5G, 128GB, 6GB RAM, 6.6" FHD+, Exynos 1380, 5000 mAh, Android 14, Light Blue'
);


INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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
       0.18,
       4,
       'static/images/category_monitor2.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor gaming - PHILIPS 27M1C3200VL/00, 27 ", Full-HD, 1 ms, 165 Hz, Negro'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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
       0.34,
       4.5,
       'static/images/category_monitor4.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor gaming - Samsung Odyssey G7 LS28BG700EPXEN, 28",4K UHD, 1 ms, 144 Hz, USB, Bluetooth, Negro'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
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
       0.22,
       4,
       'static/images/category_monitor5.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - CHIQ 22F650, 22 ", Full-HD, 6 s, 100 Hz, Gris'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor - HP M27F, 27", Full HD, 5 ms, 75Hz, HDMI, VGA, Negro, Plata', 
       'Descripción
Sumérgete en las perfectas imágenes que te ofrece este Monitor HP M27F, un espectacular lienzo diseñado para redefinir los conceptos de comodidad, bienestar y sostenibilidad. Juega, trabaja o simplemente disfruta gracias a esta redefinición del concepto de alta definición.

Pantalla de gran amplitud
Con unas dimensiones de 68,6 cm ideal para disfrutar jugando, este monitor FHD ofrece magníficos resultados combinados con el estilo más cuidado, e incorpora tecnología IPS para ángulos de visionado de máxima amplitud de 178 grados, cobertura del espacio de color sRGB del 99% para la máxima fidelidad cromática y Freesync para que tus ojos y tu imaginación trabajen a la misma velocidad. Pantalla de 1080p con una calidad inolvidable e imágenes brillantes en una impresionante pantalla Full HD. Optimización sin fisuras optimiza tu configuración gracias a un perfil fino, una innovadora reducción de cables y un impecable diseño para trabajar con monitores contiguos.

Tecnología Eyesafe
Mayor comodidad de visionado gracias a la tecnología Eyesafe, que no compromete la calidad cromática. Monitor fabricado con conciencia medioambiental, con un 85% de materiales reciclados y empaquetado también con materiales reciclados. La combinación perfecta entre sostenibilidad y estilo.

Fabricado respetando el Medio Ambiente
Basado en un análisis interno de HP. El monitor, fabricado en un 85% con plástico reciclado posconsumo, contiene un 5 % —calculado según el peso— de material plástico procedente de los océanos. El 100% del embalaje amortiguado externo en caja/cartón corrugado está elaborado a partir de fibras de origen sostenible certificadas y recicladas. Almohadillas de fibra elaboradas con un 100% de fibra de madera reciclada y material orgánico. Quedan excluidas las bolsas de plástico y el laminado de plástico.
Detalles que marcan la diferencia
Este monitor FHD ofrece magníficos resultados combinados con el estilo más cuidado posible, e incorpora tecnología IPS para un perfecto visionado de máxima amplitud de 178 grados, cobertura del espacio de color sRGB del 99 % para la máxima fidelidad cromática y Freesync para que tus ojos y tu imaginación trabajen a la misma velocidad. La tecnología IPS te ofrece vistas claras desde casi cualquier ángulo. 

Optimización sin fisuras
Optimiza tu configuración gracias a un perfil fino, una innovadora reducción de cables y un impecable diseño para trabajar con monitores contiguos. Goza de una experiencia de usuario muy fluida gracias a su gran calidad visual desde cualquier ángulo y a su combinación de 75Hz de tasa de refresco.
',
       'monitor',
       'HP',
       35,
       199,
       0.20,
       4.5,
       'static/images/category_monitor6.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - HP M27F, 27", Full HD, 5 ms, 75Hz, HDMI, VGA, Negro, Plata'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor gaming - Samsung G5 LC34G55TWWPXEN, 34", UWQHD, 1 ms, 165Hz, Negro', 
       'Descripción
Llega más lejos
Sumérgete mejor en tu juego y concentrarte en tu contenido gracias al monitor gaming curvo G5 LC34G55TWWPXEN de Samsung de 34 pulgadas. Con una resolución de pantalla de 3440x1440 píxeles, el G5 ofrece imágenes nítidas. Toma el control de tu juego con movimiento épicos.

Curva 1000R
El radio de curvatura del G5 con 1000R corresponde exactamente al del ojo humano y te catapulta directamente a la acción. Esto te permite sumergirte aún mejor en tu juego y concentrarte en tu contenido.

Resolución Ultra WQHD
Con una resolución de pantalla de 3440x1440 píxeles, que es aproximadamente 2,4 veces la densidad de un Full HD, el G5 ofrece imágenes nítidas. Y con más píxeles, puede ver más páginas web y documentos a la vez sin tener que desplazarse o acercarse.

Siempre un paso adelante de tu enemigo
Con la frecuencia de actualización de 165Hz, disfrutará de juegos fluidos sin tartamudeo ni desenfoque de movimiento. Para que puedas desarrollar todo tu potencial.

AMD FreeSync Premium
Las tecnologías AMD FreeSync Premium y Adaptive Sync reducen la distorsión de la imagen, el tartamudeo y el retraso de entrada para que siempre tengas una experiencia de juego fluida.

Gráficos HDR verdaderamente realistas
Gráficos impactantes con HDR10. Descubre todos los secretos que se esconden en las sombras del juego con negros oscuros profundos, blancos luminosos y una resolución increíblemente detallada.
',
       'monitor',
       'Samsung',
       52,
       449,
       0.15,
       5,
       'static/images/category_monitor7.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor gaming - Samsung G5 LC34G55TWWPXEN, 34", UWQHD, 1 ms, 165Hz, Negro'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor gaming - Acer Nitro KG241YM3, 23.8" Full HD, 1 ms, 180Hz, 2 x HDMI(2.0)+1 x DisplayPort(1.2)+SPK+Audio out, FreeSync Premium, Negro', 
       'Descripción
El monitor gaming Acer Nitro KG241YM3 de 23.8" Full HD, ofrece una experiencia de visualización adecuada para juegos y otras actividades multimedia

Tamaño de pantalla
El monitor Acer Nitro KG241YM3 presenta una pantalla de 23.8 pulgadas, lo que proporciona un amplio espacio de visualización y una experiencia inmersiva.

Frecuencia de actualización
El monitor Acer Nitro KG241YM3 tiene una frecuencia de actualización de 180 Hz, podrás ver el siguiente fotograma rápidamente y hacer que las imágenes sean más impecables. Podrás responder rápidamente a los adversarios y apuntar a los objetivos fácilmente.

Tiempo de respuesta
El Acer Nitro KG241YM3 tiene tiempo de respuesta de 1 milisegundo (ms) para reducir el desenfoque de movimiento en escenas rápidas y mejorar la experiencia de juego.

Monitor 100% ergonómico
Con inclinación de -5°a 35°para permitir una posición de visualización más cómoda y adaptarse a tus preferencias.

Tecnología de sincronización
AMD FreeSync Premium adapta la velocidad de fotogramas del monitor a la tarjeta gráfica, garantiza un mínimo de 120 Hz en FHD y velocidades de fotogramas mínimas (LFC). Si la velocidad de fotogramas cae por debajo del mínimo admitido de la pantalla, LFC garantiza que este mínimo de la pantalla esté garantizado y que el juego se mantenga fluido.
',
       'monitor',
       'Acer',
       48,
       119,
       0,
       4.5,
       'static/images/category_monitor8.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor gaming - Acer Nitro KG241YM3, 23.8" Full HD, 1 ms, 180Hz, 2 x HDMI(2.0)+1 x DisplayPort(1.2)+SPK+Audio out, FreeSync Premium, Negro'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor gaming - Samsung Odyssey G3 LS24AG320NUXEN , 24", Full-HD, 1 ms, FreeSync Premium, Negro', 
       'Descripción
Llega más lejos
Las escenas cobrarán vida con el monitor gaming Samsung Odyssey G3 LS24AG320NUXEN de 24 pulgadas. Con el monitor gaming Samsung Odyssey G3 salta sobre los enemigos tan pronto como los veas y mantente al frente con movimientos precisos de tu ratón.

Reacción en tiempo real
Con la frecuencia de actualización de 165Hz, disfrutará de juegos fluidos sin retardos ni desenfoques de movimiento. Para que puedas desarrollar todo tu potencial.

1ms de tiempo de respuesta
Los píxeles de la pantalla cambian de color con una respuesta casi instantánea de un 1ms, lo que permite que la acción trepidante fluya con la misma precisión que en el mundo real.

AMD FreeSync Premium
Que nada detenga tu partida. AMD FreeSync Premium ofrece tecnología de sincronización adaptada para disminuir cortes, ralentizaciones y la latencia de entrada. Una velocidad inferior de fotogramas garantiza que cada escena fluya sin problemas.

Modo Eye Saver y Flicker Free
Juega aún más tiempo. El modo Eye Saver minimiza la luz azul lo suficiente para mantener los ojos relajados y cómodos cuando se juega durante periodos prolongados. La tecnología Flicker Free elimina continuamente los molestos parpadeos de la pantalla para que puedas concentrarte durante más tiempo con menos distracciones o fatiga visual.
',
       'monitor',
       'Samsung',
       51,
       199,
       0.20,
       4,
       'static/images/category_monitor9.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor gaming - Samsung Odyssey G3 LS24AG320NUXEN , 24", Full-HD, 1 ms, FreeSync Premium, Negro'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor - HP M24fwa, 24", Full HD, 75Hz, 5ms, IPS, 16:9, HDMI, VGA, Antirreflejo, Eye Ease, Blanco', 
       'Descripción
¿Estás buscando un monitor que lo aguante todo y ocupe poco? Disfruta al máximo de este monitor ultrafino con la máxima calidad de imagen, audio integrado y HP Eye Ease con tecnología con certificación Eyesafe® , con un diseño que te ofrece un nuevo concepto de comodidad, bienestar y sostenibilidad.

La nueva definición de alta definición
Este monitor de 23.8" incorpora tecnología IPS, cobertura del espacio de color sRGB del 99 %, una frecuencia de actualización de 75 Hz y AMD FreeSync™ para que las imágenes desfilen ante ti a la velocidad de tu imaginación

Excelentes resultados
Excelente en el plano visual Evita la fatiga ocular durante todo el día gracias a HP Eye Ease con tecnología con certificación Eyesafe® y evita que la calidad cromática se vea comprometida

No creerás lo que ves; tampoco lo que oyes
Este monitor te ofrece no solo excelente calidad visual, sino también de sonido, gracias a su audio integrado. Trabaja o juega disfrutando de una experiencia completa y de nivel superior. Además, podrás optimizar el espacio del que dispones gracias a su fino perfil, su diseño moderno y su innovadora gestión del cableado

Calidad visual con conciencia medioambiental
Monitor fabricado con conciencia medioambiental, con un 85 % de plástico reciclado posconsumo y empaquetado también con materiales reciclados . La combinación perfecta entre sostenibilidad y calidad visual.
',
       'monitor',
       'HP',
       37,
       144,
       0,
       4,
       'static/images/category_monitor10.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - HP M24fwa, 24", Full HD, 75Hz, 5ms, IPS, 16:9, HDMI, VGA, Antirreflejo, Eye Ease, Blanco'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor - SMART TECH 270N02XIF, 27 ", Full-HD, 4 ms, 75 Hz, Black', 
       'Descripción
El monitor Smart Tech 270N02XIF es un dispositivo de visualización avanzado y versátil. Con una pantalla de alta resolución y tecnología inteligente, ofrece una experiencia visual impresionante. Sus características incluyen una pantalla de 27 pulgadas con resolución FullHD, lo que permite una reproducción de colores vívida y detalles nítidos.
También incluye puertos HDMI y USB-C para facilitar la conexión con otros dispositivos. En general, el monitor Smart Tech 270N02XIF combina calidad de imagen excepcional con funcionalidades para satisfacer las necesidades tanto de usuarios profesionales como de entretenimiento en el hogar.
Características:
•	Diseño minimalista sin bisel
•	Sincronización adaptativa
•	Color verdadero en FHD
•	Luz azul baja
Especificaciones de la pantalla del monitor Smart Tech 270N02XIF:
•	Pantalla
•	Tratamiento de superficies: Anti-Glare, Hard Coating (3H)
•	Diseño plano
•	Tipo de panel (modo de visualización): IPS panel
•	Brillo (Tipico): 300 cd/m² (Max.)
•	Contraste: 1000 : 1
•	Paso de píxel de color (mm): 0.3114(H) x 0.3114(V)
•	Resolución (H x V) : 1920*1080
•	Relación de aspecto: 16:9
•	Tiempo de respuesta (típico): 14 ms Typ (con OD 5ms)
•	Colores de pantalla: 16.7M
•	Frecuencia horizontal: 52.32k-109KHzz
•	Frecuencia vertical: 48 -100HZ
•	Máx. frecuencia de visualización (Resolución H*V/Fv): 1920*1080 100Hz para HDMI
•	Interfaz:
•	1 x DP
•	1 x HDMI
•	Type-c PD 15W
•	Fuerza:
•	Consumo (tipico): On: <48W, Off<=0.5W
•	Rango de alimentación de CA: 100-240V~, 50/60Hz
•	Modo de energía: Adaptador 12V 4A
•	Enchufe de audífonos: Sí
•	Altavoz (típico, salida del amplificador): Sí 4ohms 3W*2 , soporte de placa base 4ohms 2W*2
•	Dimensiones Físicas
•	Dimensión con soporte (ancho x profundidad x altura): 614.47*443.18*187.69mm
•	Dimensión sin soporte (W*D*H):614.47*43.72*359.27mm
•	Dimensión con el paquete (W*D*H): 673*100*432mm
•	Peso neto: 3.51 kg
•	Peso del paquete: 5.16 kg
•	Ergonomía
•	Inclinación: -5°~15°(+/-2°)
•	Cerradura Kensington: Sí
•	Montaje VESA: 100*100 (agujero de tornillo: 4 agujeros con M4 x 8 mm)
•	Otra información:
•	Contra parpadeo: Sí
•	Sincronización adaptativa: Sí
•	Sincronización gratuita: adaptativa
•	Anti-luz azul: Sí
•	Anti reflejante: Sí
•	Control de espalda: Sí
•	Visualización en pantalla: 12 Idioma: inglés, francés, alemán, chino, italiano, Español, portugués, turco, polaco, holandés, japonés, coreano
•	Clase de eficiencia energética: E
',
       'monitor',
       'Smart Tech',
       35,
       229.9,
       0.47,
       3.5,
       'static/images/category_monitor11.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - SMART TECH 270N02XIF, 27 ", Full-HD, 4 ms, 75 Hz, Black'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor - LG 32MN500M-B, 31.5" Full-HD, 5 ms, 75 Hz, 2 x HDMI, Radeon FreeSync, Negro', 
       'Descripción
Trabaja con toda la comodidad que necesitas gracias al monitor LG 32MN500M-B de 31.5 pulgadas. Su resolución de 1920 x 1080 píxeles te asegura que está a la altura de las tareas que debes realizar. Si necesitas tener una calidad alta de imagen o bien debes pasar horas y horas delante de la pantalla, lo necesitas.

Pantalla IPS Full HD. Color Verdadero desde cualquier ángulo
La tecnología IPS destaca el rendimiento de las pantallas de cristal líquido. Los tiempos de respuesta se acortan, se mejora la reproducción del color y los usuarios pueden ver la pantalla prácticamente desde cualquier ángulo.

Flicker Safe (parpadeo seguro). Reduce la fatiga visual
Flicker Safe reduce el nivel de parpadeo en pantalla a casi cero, lo que ayuda a proteger sus ojos. Los usuarios pueden trabajar cómodamente durante todo el día.

Menos azul, mayor comodidad visual
Al reducir la luz azul para ayudar a disminuir la fatiga ocular, el Modo Lector proporciona una condición óptima para la lectura. Con solo unos pocos movimientos de control de joystick, puede leer más cómodamente la pantalla de su monitor.

Imagen más clara y suave
Con la tecnología Radeon FreeSync™, los jugadores pueden experimentar sin problema movimiento fluido en juegos de alta resolución y ritmo rápido. Radeon FreeSync ™ prácticamente elimina el desgarro y el tartamudeo de la pantalla.

Reacciona más rápido a los oponentes
Minimiza el input lag con Dynamic Action Sync para que los jugadores puedan ver cada momento en tiempo real.

Interfaz de usuario más fácil
Puedes personalizar el espacio de trabajo dividiendo la pantalla o ajustando las opciones básicas del monitor con solo unos pocos clics del mouse.
',
       'monitor',
       'LG',
       40,
       155,
       0,
       4.5,
       'static/images/category_monitor12.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - LG 32MN500M-B, 31.5" Full-HD, 5 ms, 75 Hz, 2 x HDMI, Radeon FreeSync, Negro'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor - CHIQ 24F650, 23,8 ", Full-HD, 6 ms, 100 Hz, Gris', 
       'Descripción
Monitor LED IPS de 23.8" con resolución Full HD con un diseño minimalista sin marco.
Características CHiQ 24F650:
•	Panel IPS: optimice los colores y el brillo de la pantalla para mejorar su experiencia visual.
•	Frecuencia de actualización de 100 Hz: responda más rápido con fotogramas más suaves.
•	Amplia gama de colores: los colores y detalles del juego se verán más realistas y refinados.
•	Diseño sin marco : disfruta de la mejor experiencia de juego con biseles superestrechos.
•	Antiparpadeo (Flicker-free) y menos luz azul (Low Blue Light): Trabaje o juegue incluso más tiempo y evite la fatiga visual y la fatiga.
•	Ángulo de visión amplio de 178°: los colores y los detalles permanecerán nítidos en más ángulos con un ángulo de visión amplio de 178°
Especificaciones CHiQ 24F650:
•	Tamaño: 23.8"
•	Tipo panel: IPS
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
•	HDMI 1 | DP 1 | VGA 1 | Audio Output 1
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
•	Peso Neto: 2.6Kg
•	Peso con caja: 4.3Kg
•	Dimensiones con peana (AxPxA) 539.6*139*411.4 mm
•	Dimensiones sin peana (LxWxH) 539.6*45.7*319.1 mm
•	VESA Wall Mount (mm): 75*75mm
',
       'monitor',
       'Chiq',
       53,
       109.99,
       0.18,
       3.5,
       'static/images/category_monitor13.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - CHIQ 24F650, 23,8 ", Full-HD, 6 ms, 100 Hz, Gris'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor - LG 32SR85U-W, 31.5", UHD 4K, 5 ms, 60 Hz, HDMI x2, USB-C x1, Blanco', 
       'Descripción
Infinitas posibilidades de entretenimiento en streaming y teletrabajo con el Monitor LG 32SR85U-W. LG MyView Smart Monitor está diseñado para el trabajo y el entretenimiento. Mira tus series favoritas fácilmente desde múltiples plataformas de streaming y configura tu espacio de trabajo de manera rápida, con ordenador o sin él.

WebOS 23: nueva home: Descubre lo que te espera
Con WebOS 23, podrás explorar y disfrutar de todos tus contenidos favoritos como Netflix, Prime Video, Disney+, YouTube, Spotify, Twitch, Apple TV, RTVE Play, OrangeTV, MiTele y muchos más. Además, puedes obtener recomendaciones personalizadas, desde el contenido hasta la música y disfruta de aplicaciones incorporadas como deportes, juegos y LG Fitness.

Pantalla UHD 4K IP de 31.5 pulgadas: Gran pantalla tanto para el trabajo como para el entretenimiento
La pantalla IPS de 4K UHD (3840x2160), con una cobertura de hasta el 95% del espacio de color DCI-P3, reproduce imágenes nítidas y colores precisos desde ángulos amplios. Esto te permite experimentar una gran inmersión visual, ya sea disfrutando de entretenimiento o realizando tareas de trabajo.

IA concierge: Escuchando tus gustos
Para activar el asistente personal AI Concierge simplemente presiona el botón del mando Magic remote y recibirás recomendaciones basadas en tus preferencias en cualquier momento.

Panel de control de ThinQ: Controla fácilmente tus electrodomésticos LG
El panel de control de Thinq te hace la vida más fácil. Puedes verificar y controlar el estado de tus electrodomésticos LG en una sola pantalla con el mando a distancia.

AirPlay 2 + Screen Share + Bluetooth: Refleja directamente de sus dispositivos
Comparte fácilmente el contenido de tu dispositivo inteligente a tu monitor con AirPlay 2 (para dispositivos Apple) o Screen share (para dispositivos Android). También disfruta de una buena calidad de sonido con Bluetooth.

USB Tipo-C™: Fácil control y conectividad
Crea tu oficina perfecta en casa, incluso en un espacio pequeño. El puerto USB Type-C™ admite la conexión a varios dispositivos, transferencia de datos y hasta 65W de entrega de energía a través de solo un cable.

Múltiples puertos: Interfaz variada
LG MyView Smart Monitor ofrece tres puertos USB Tipo-C ™ y dos puertos HDMI compatibles con varios dispositivos para una visualización fluida.
',
       'monitor',
       'LG',
       47,
       599,
       0,
       4.5,
       'static/images/category_monitor14.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - LG 32SR85U-W, 31.5", UHD 4K, 5 ms, 60 Hz, HDMI x2, USB-C x1, Blanco'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor gaming - LG 24GN60R-B, 23,8", Full-HD, 1 ms, 144Hz, HDMI x1 , Display Port x1, Negro', 
       'Descripción
El Monitor Gaming LG 24GN600-B UltraGear, un equipo increíblemente potente, aumenta tus posibilidades de victoria.

Diseñado para la máxima velocidad
Con IPS 1ms comparable a la velocidad TN, te ofrece menor imagen residual y un tiempo de respuesta rápido, disfrutarás de un rendimiento del juego totalmente nuevo.

Cuando juegas a 144Hz y 1ms cambia la historia
Con una tasa de actualización de 144 Hz, podrás ver el siguiente fotograma rápidamente y hacer que las imágenes sean más impecables. Podrás responder rápidamente a los adversarios y apuntar a los objetivos fácilmente.

Sumérgete en el combate real con True Colors
Este monitor es compatible con HDR10 con sRGB 99 % (Typ.), lo que permite una inmersión visual realista con colores y contraste más ricos. Independientemente del campo de batalla, te ayudará a ver todos los colores impresionantes tal y como los pensaron los desarrolladores de los juegos.

Más nítido, más fluido y más rápido
Con la tecnología FreeSync™ Premium, podrás experimentar un movimiento fluido y perfecto en los juegos de alta resolución y ritmo rápido. Reduce prácticamente los cuadros interrumpidos y la fragmentación de la imagen.

Ambiente Gaming Impresionante
Mejora tu experiencia de juego con un diseño atractivo y prácticamente sin bordes. La base se puede ajustar para modificar la inclinación del monitor, para que puedas jugar más cómodamente.
',
       'monitor',
       'LG',
       46,
       129,
       0,
       4.5,
       'static/images/category_monitor15.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor gaming - LG 24GN60R-B, 23,8", Full-HD, 1 ms, 144Hz, HDMI x1 , Display Port x1, Negro'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor - HP V24i G5 FHD, 23.8 ", Full HD, 5 ms, 75Hz, Panel IPS, Modo de luz azul baja, Negro', 
       'Descripción
Amplía tu visión y productividad con el monitor HP V24i G5 mientras trabajas o estudias con este monitor FHD de 60,5 cm (23,8 pulgadas) en diagonal. Este dispositivo elegante y de gran tamaño simplifica y completa tus tareas informáticas gracias a la suavidad y definición de sus imágenes, además de su sencillo diseño, para que puedas mejorar tu rendimiento diariamente.

Frecuencia de actualización de 75 Hz
Disfruta de unos vídeos fluidos y realistas, así como de unos detalles claros, gracias a la frecuencia de actualización de 75 Hz que proporciona un movimiento fluido de fotograma a fotograma.

Panel IPS
Independientemente de dónde te encuentres, la tecnología IPS garantiza la precisión y uniformidad de la imagen desde amplios ángulos de visión horizontales y verticales de 178 grados.

AMD FreeSync™
La tecnología AMD FreeSync™ proporciona fluidez y una visualización perfecta de los vídeos al reducir la latencia de entrada, el rasgado de pantalla y la intermitencia.

Modo de luz azul baja
Mantén tu vista descansada gracias a los colores sutilmente más cálidos de la pantalla.
',
       'monitor',
       'HP',
       44,
       129,
       0,
       4,
       'static/images/category_monitor16.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - HP V24i G5 FHD, 23.8 ", Full HD, 5 ms, 75Hz, Panel IPS, Modo de luz azul baja, Negro'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor - LG 27UL500-W (versión 2023), 27 " UHD 4K, 5ms, 60 Hz, DP, HDMI, Plata', 
       'Descripción
Colores más vivos y mejor contraste con HDR10 con el monitor LG 27UL500-W (versión 2023).

Descubre el monitor HDR UHD 4K
Este monitor, compatible con HDR10, representa todos los detalles en las partes brillantes y oscuras del contenido de alto rango dinámico.

Colores auténticos y visión más amplia
La pantalla IPS de LG tiene una precisión de color extraordinaria; cubre el 98 % del espectro de color sRGB. Asimismo, el ángulo de visualización también es más amplio para que puedas disfrutar más fácilmente de imágenes con colores auténticos.

Calibración del color
El color se ha calibrado para que sea más preciso en la pantalla y evitar así los cambios graduales; de esta manera se conserva el color previsto originalmente.

Imagen más suave y nítida
La función Radeon FreeSync™ reduce la fragmentación y la interrupción de la imagen que se producen entre la velocidad de imagen de la tarjeta gráfica y la frecuencia de actualización del monitor, lo que permite que el movimiento sea más suave y con menos interrupciones en los juegos exigentes.

Modos personalizados para cualquier juego
Los usuarios pueden elegir entre el modo FPS y el modo RTS, y personalizarlo. Los ajustes se pueden modificar y personalizar para cualquier tipo de juego.
',
       'monitor',
       'LG',
       39,
       299,
       0.27,
       4.5,
       'static/images/category_monitor17.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - LG 27UL500-W (versión 2023), 27 " UHD 4K, 5ms, 60 Hz, DP, HDMI, Plata'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor - SAMSUNG LS27A800UJUXEN, 27 ", UHD 4K, 5 ms, 60 Hz, Negro', 
       'Descripción
Optimizado para entornos de trabajo profesionales. Los monitores Samsung de alta resolución incluyen un panel IPS, ofreciendo una calidad de color nítida y un amplio ángulo de visión de 178º. Todos los usuarios podrán disfrutar de una increíble experiencia de visualización desde cualquier ángulo, con colores vívidos y vibrantes.
Explora y sumérgete en cada detalle. Con 4 veces los píxeles de Full HD, cada pequeño detalle se ve con mayor profundidad, mientras que la amplia pantalla proporciona más espacio para ver múltiples herramientas, aplicaciones y programas a lo largo de tu jornada. Disfruta de una experiencia de visualización de contenido con calidad cinematográfica 4K, durante el día y la noche.
Características
•	Panel IPS: Optimizado para entornos de trabajo profesionales. Los monitores Samsung de alta resolución incluyen un panel IPS, ofreciendo una calidad de color nítida y un amplio ángulo de visión de 178º. Todos los usuarios podrán disfrutar de una increíble experiencia de visualización desde cualquier ángulo, con colores vívidos y vibrantes.
•	Mil millones de colores con HDR 10: Disfruta de cualquier contenido con una precisión y detalle de color impresionantes. Con un amplio rango de colores, tonalidades casi ilimitadas y HDR10, que hace que los tonos negros sean más oscuros y los tonos claros más brillantes, cada pieza de contenido se convierte en un placer a la vista. Todo podrá experimentarse tal y como el creador pretendía.
•	Maximiza la comodidad, minimiza las distracciones: Coloca tu monitor cómo te sea más cómodo. Su diseño sin bordes, compatibilidad con montaje VESA y una variedad de posiciones de inclinación, giro y pivote te permiten montar tu monitor en cualquier entorno. Además, su soporte de metal delgado y su poca profundidad ocupan menos espacio en el escritorio para una configuración de trabajo ordenada y perfecta.
•	Auto Source Switch: Con Automatic Source Switch, el monitor detecta los dispositivos que se acaban de conectar y les muestra la señal correcta. Se acabaron las búsquedas de la entrada correcta en el menú.
Especificaciones:
•	Exhibición
•	Diagonal de la pantalla: 68,6 cm (27")
•	Brillo de la pantalla (típico): 300 cd / m²
•	Resolución de la pantalla: 3840 x 2160 Pixeles
•	Relación de aspecto nativa: 16:9
•	Tiempo de respuesta: 5 ms
•	Tecnología de visualización: LCD
•	Forma de la pantalla: Plana
•	Formatos gráficos soportados: 3840 x 2160
•	Razón de contraste (típica): 1000:1
•	Máxima velocidad de actualización: 60 Hz
•	Número de colores de la pantalla: 1,07 billones de colores
•	Tipo de pantalla: IPS
•	Diseño
•	Posicionamiento de mercado: Negocios
•	Color del producto: Negro
•	Puertos e Interfaces
•	Conector USB incorporado: Si
•	Cantidad de puertos downstream USB tipo C: 1 90W
•	HDMI: Si
•	Número de puertos HDMI: 1
•	Cantidad de DisplayPorts: 1
•	Salida de auriculares: Si
•	Ergonomía
•	Interfaz de panel de montaje: 100 x 100 mm
•	montaje VESA: Si
•	Ajustes de altura: Si
•	Ajuste de altura: 12 cm
•	Eje: Si
•	Ángulo de pivote: -2 - 92°
•	Giratorio: Si
•	Ángulo de giro (alcance): -30 - 30°
•	Inclinable: Si
•	Ángulo de inclinación: -2 - 25°
•	Control de energía
•	Clase de eficiencia energética (SDR): G
•	Clase de eficiencia energética (HDR): G
•	Consumo de energía (SDR) por 1000 horas: 30 kWh
•	Consumo de energía (HDR) por 1000 horas: 37 kWh
•	Consumo de energía (inactivo): 0,5 W
•	Peso y dimensiones
•	Ancho del dispositivo (con soporte): 615,5 mm
•	Profundidad dispositivo (con soporte): 196,4 mm
•	Altura del dispositivo (con soporte): 551,9 mm
•	Peso (con soporte): 6,7 kg
•	Ancho (sin base): 61,5 cm
•	Profundidad (sin base): 4,27 cm
•	Altura (sin base): 36,8 cm
•	Empaquetado
•	Ancho del paquete: 686 mm
•	Profundidad del paquete: 450 mm
•	Altura del paquete: 171 mm
•	Peso del paquete: 8,4 kg
',
       'monitor',
       'Samsung',
       40,
       334.66,
       0.10,
       5,
       'static/images/category_monitor18.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - SAMSUNG LS27A800UJUXEN, 27 ", UHD 4K, 5 ms, 60 Hz, Negro'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor - LG MyView Smart Monitor 27SR50F-W 27" LED IPS FullHD', 
       'Descripción
Si combinas trabajo y entretenimiento, cambia la historia. LG MyView Smart Monitor está diseñado para el trabajo y el entretenimiento. Mira tus series favoritas fácilmente desde múltiples plataformas de streaming y configura tu espacio de trabajo de manera rápida, con ordenador o sin él.
Características:
•	El único con el que disfrutar de más contenidos en streaming como: RTVE, Mitele, Orange, Netflix, Prime Video, Disney+, Apple TV , YouTube, videojuegos y mucho más. Smart TV WebOS23, más fácil, intuitivo y seguro.
•	Crea perfiles por usuario y controla todos tus contenidos a través de tus periféricos y/o mando a distancia. Magic Remote opcional*.* El mando a distancia Magic Remote se vende por separado. Solo compatible con el modelo del mando MR23
•	Comparte fácilmente contenido o música desde tu dispositivo inteligente con AirPlay 2* , Screen Share o Bluetooth.
•	"Convierte tu casa en un hogar inteligente con ThinQ y Alexa. Compatible con Apple Home Kit, Airplay y Google**. **Apple Home Kit, Google Assistant y Amazon Alexa son servicios independientes de LG que podrían requerir cuentas de suscripción."
•	Colores más vivos y mejor contraste con HDR10. Panel IPS que permite colores constantes a 178º de ángulo de visión.
Especificaciones LG MyView Smart Monitor 27SR50F-W:
•	Exhibición
•	Diagonal de la pantalla: 68,6 cm (27")
•	Resolución de la pantalla: 1920 x 1080 Pixeles
•	Tipo HD: Full HD
•	Relación de aspecto nativa: 16:9
•	Tecnología de visualización: LED
•	Tipo de pantalla: IPS
•	Tipo de retroiluminación: LED
•	Pantalla táctil: No
•	Brillo de la pantalla (máximo): 250 cd / m²
•	Brillo de la pantalla (típico): 250 cd / m²
•	Tiempo de respuesta: 14 ms
•	Superficie de la pantalla: Mate
•	Pantalla antirreflectante: Si
•	Forma de la pantalla: Plana
•	Formatos gráficos soportados: 1920 x 1080 (HD 1080)
•	Formato de vídeo soportado: 360p, 480p, 720p, 1080p
•	Relación de aspecto: 16:9
•	Razón de contraste (típica): 1000:1
•	Máxima velocidad de actualización: 60 Hz
•	Ángulo de visión, horizontal: 178°
•	Ángulo de visión, vertical: 178°
•	Número de colores de la pantalla: 16,7 millones de colores
•	Tiempo de respuesta (rápido): 14 ms
•	Tamaño de pixel: 0,3114 x 0,3114 mm
•	Densidad del pixel: 81,59 ppp
•	Alto Rango Dinámico (HDR): Si
•	Tecnología HDR (High Dynamic Range, Alto rango dinámico): High Dynamic Range 10 (HDR10)
•	DDC / CI: Si
•	Contrast enhancer (Optimizador de contraste): No
•	Profundidad de color: 8 bit
•	Espacio de color RGB: NTSC
•	Gama de colores: 72%
•	Calibración del hardware: No
•	Sensor de calibración integrado: No
•	Cobertura NTSC (típica): 72%
•	Desempeño
•	NVIDIA G-SYNC: No
•	AMD FreeSync: No
•	Compatibilidad con Adaptive Sync de VESA: No
•	Tecnología Flicker free (reduce el parpadeo de la pantalla): Si
•	Tecnología Low Blue Light (baja luz azul): No
•	Tiempo de latencia bajo: No
•	Contador de FPS: No
•	Dial point (cruceta de puntería): No
•	Control de sombras: Si
•	Reducción del desenfoque de movimiento: No
•	Reproducción en pantalla del sonido de un dispositivo móvil: No
•	Duplicación de pantalla: No
•	Mejora de diálogo: No
•	Compatibilidad con HBR3: No
•	Modo de juego: No
•	TV Plus: Si
•	Compatibilidad con la aplicación SmartThings: Si
•	Funciona con Samsung Bixby: No
•	Compatibilidad con Office 365: No
•	Compatibilidad con Wireless Dex: No
•	Funciona con Google Home: No
•	Tap view: No
•	Navegador web: Si
•	Modos inteligentes: Ahorro energético, Película, PC, Vivo
•	Características inteligentes: Audio Bluetooth
•	Sistema operativo instalado: webOS
•	AirPlay: Si
•	Versión de sistema operativo: WebOS 23
•	Multimedia
•	Altavoces incorporados: Si
•	Cámara incorporada: No
•	Número de altavoces: 2
•	Potencia estimada RMS: 10 W
•	Micrófono incorporado: No
•	Diseño
•	Posicionamiento de mercado: Smart
•	Color del producto: Blanco
•	Renovado: No
•	Nombre del color: White
•	Diseño sin marco: Si
•	Bisel frontal: Blanco
•	Soporte desmontable: Si
•	Pie iluminado: No
•	Color de pies: Blanco
•	Año de introducción: 2023
•	Mes de introducción: Diciembre
•	Puertos e Interfaces
•	Conector USB incorporado: Si
•	Versión de conector USB: 3.2 Gen 1 (3.1 Gen 1)
•	Cantidad de puertos USB descendentes de tipo A: 2
•	USB Type-C DisplayPort Alternate Mode: No
•	Suministro de potencia USB: No
•	Puerto táctil USB: No
•	Puerto DVI: No
•	HDMI: Si
•	Número de puertos HDMI: 2
•	Versión HDMI: 2.1
•	Entrada de audio: No
•	Salida de audio: No
•	Salida de auriculares: No
•	Micrófono, jack de entrada: No
•	Entrada de audio para PC: No
•	Ranura para módulo OPS: No
•	Built-in conmutador KVM: No
•	HDCP: Si
•	HDCP versión: 1.4
•	Enchufe de entrada de CC: No
•	Entrada de CA: Si
•	Conexión
•	Wifi: Si
•	Wi-Fi Direct: Si
•	Bluetooth: Si
•	Ethernet: No
•	Operado remotamente: No
',
       'monitor',
       'LG',
       42,
       209,
       0.14,
       4.5,
       'static/images/category_monitor19.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor - LG MyView Smart Monitor 27SR50F-W 27" LED IPS FullHD'
);

INSERT INTO product (name, description, type, brand, stock, price, discount_percentage, stars, image)
SELECT 'Monitor gaming - ASUS PA278CV, 27 ", WQHD, 5 ms, Negro', 
       'Descripción
Aprovecha y llevaté el monitor ASUS ProArt Display PA278CV de color negro especialmente diseñado para el trabajo en la oficina. Gracias a su resolución QHD y gran dimensión de 27", podrás trabajar fácilmente con grandes hojas de cálculo sin ningún tipo de problemas.

Amplio ángulo de visión
La tecnología IPS está optimizada para obtener la mejor calidad de imagen con un ángulo de visión amplio de 178°. Soporte de diseño ergonómico con ajustes de inclinación, giro, pivote y altura.

Compatible con VESA
Diseño de panel sin marco para una configuración ideal de múltiples pantallas. Compatible con el estándar de montaje en pared VESA (100 x 100 mm). 

ASUS Flicker-Free
La tecnología ASUS Flicker-Free elimina el parpadeo que distrae y brinda comodidad de visualización.

Reduce el estrés ocular
Cuatro niveles de filtro de luz azul que ayudan a los usuarios a reducir eficazmente la luz azul dañina que provoca fatiga ocular.
',
       'monitor',
       'Asus',
       40,
       334.07,
       0,
       4.5,
       'static/images/category_monitor20.jpg'
WHERE NOT EXISTS (
    SELECT 1 FROM product WHERE name = 'Monitor gaming - ASUS PA278CV, 27 ", WQHD, 5 ms, Negro'
);