INSERT INTO description_section(product_id, title, description)
SELECT 1,
'Potencia para mantenerte en marcha',
'El procesador de la versión pro de Galaxy Book4 roza casi la perfección. Estamos hablando del Intel® Core™ Ultra de última generación, que te ofrece un rendimiento incomparable, ahora impulsado por la IA más potente. Con una NPU avanzada integrada, las imágenes se generan a alta velocidad, con precisión y eficiencia de consumo, para que puedas completar incluso los proyectos más exigentes con facilidad.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 1 AND title = 'Potencia para mantenerte en marcha'
);

INSERT INTO description_section(product_id, title, description)
SELECT 1,
'Pantalla táctil antirreflejos. Un nuevo mundo de posibilidades',
'Con el nuevo panel táctil de Galaxy Book4 y Galaxy Book4 360 podrás impulsar tu creatividad a nuevas cotas desplazando tus dedos por la pantalla para navegar fácilmente. Y en el caso de Galaxy Book4 360, podrás doblar la pantalla para convertir tu PC en una Tablet, y utilizar el S Pen para dar vida a tus obras de arte como un profesional.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 1 AND title = 'Pantalla táctil antirreflejos. Un nuevo mundo de posibilidades'
);

INSERT INTO description_section(product_id, title, description)
SELECT 1,
'Expón tus ideas a todo color',
'Experimenta un nivel de detalle, nitidez y calidad que no te esperas. Reduce la emisión de luz azul para mayor comodidad ocular y te ofrece un brillo máximo de 400 nits, llegando hasta 500 nits en contenidos HDR.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 1 AND title = 'Expón tus ideas a todo color'
);

INSERT INTO description_section(product_id, title, description)
SELECT 1,
'Vision Booster. La claridad está de moda',
'Una de las ventajas que te ofrece Galaxy Book4 Pro y Galaxy Book4 Pro 360 es Vision Booster. Una funcionalidad que detecta automáticamente la cantidad de luz solar y ajusta el contraste y color de la pantalla. Así, podrás disfrutar de todo tipo de contenido sin importar las condiciones de luz del ambiente.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 1 AND title = 'Vision Booster. La claridad está de moda'
);

INSERT INTO description_section(product_id, title, description)
SELECT 2,
'Gran capacidad de almacenamiento',
'Gracias a su gran almacenamiento interno 512 GB SSD, podrás transferir tus datos en alta velocidad. Lo mejor es que la memoria de tipo SSD, transfiere datos 20 veces más rápido que un disco duro convencional. Además, el portátil gaming Lenovo tiene 16 GB de memoria RAM, de tipo DDR4, con una gran frecuencia de hasta 3200 MHz, lo que supondrá una reducción considerable en los tiempos de carga.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 2 AND title = 'Gran capacidad de almacenamiento'
);

INSERT INTO description_section(product_id, title, description)
SELECT 2,
'Gráficos NVIDIA® GeForce® RTX 2050',
'Con la revolucionaria arquitectura NVIDIA, los juegos y el contenido en streaming nunca volverán a ser lo mismo. Consigue toda la potencia que necesitas para obtener un rendimiento rápido, fluido y eficiente con NVIDIA® GeForce® RTX 2050.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 2 AND title = 'Gráficos NVIDIA® GeForce® RTX 2050'
);

INSERT INTO description_section(product_id, title, description)
SELECT 2,
'Colores ricos y brillantes Full HD con 144 Hz',
'Los colores claros y realistas cobran vida con una resolución Full HD (1920 x 1080 ) de 15.6" con 144 Hz tipo IPS. Visualiza contenido sin problemas desde cualquier ángulo con tus amigos y familiares.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 2 AND title = 'Colores ricos y brillantes Full HD con 144 Hz'
);

INSERT INTO description_section(product_id, title, description)
SELECT 3,
'Arquitectura híbrida de rendimiento',
'El procesador Intel® Core™ de 12ª generación transforma tu experiencia informática y de juego, ya que integra dos microarquitecturas de núcleo totalmente nuevas en un único chip, gracias a Intel® Thread Director el procesador divide de forma inteligente el trabajo entre P-cores (núcleos de rendimiento) y E-cores (núcleos de eficiencia). Estas tecnologías mejoran los videojuegos y la productividad al garantizar que las tareas en segundo plano no distraen la atención de los núcleos más potentes, una optimización inteligente de las cargas de trabajo, lo que es un paso generacional en el rendimiento.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 3 AND title = 'Arquitectura híbrida de rendimiento'
);

INSERT INTO description_section(product_id, title, description)
SELECT 3,
'Almacenamiento SSD',
'El espacio de este ordenador nunca va a ser un problema. Su disco duro SSD tiene una capacidad de 512 GB por lo que podrás guardar infinidad de archivos sin estar preocupándote por añadir memorias externas o ir borrando documentos. Además, cuenta con 16 GB de RAM tipo LPDDR5 a 4800 MHz.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 3 AND title = 'Almacenamiento SSD'
);

INSERT INTO description_section(product_id, title, description)
SELECT 3,
'Tus proyectos en alta definición Full HD',
'Tus juegos o proyectos ahora tienen una nitidez nunca imaginada gracias a la pantalla TN de 15.6 pulgadas y alta definición. Su resolución Full-HD de 1920 x 1080 píxeles proporciona una imagen detallada, clarísima y con los colores más vivos que nunca.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 3 AND title = 'Tus proyectos en alta definición Full HD'
);

INSERT INTO description_section(product_id, title, description)
SELECT 4,
'¿Qué es un Chromebook?',
'Los Chromebook son ordenadores portátiles que utilizan el sistema operativo "Chrome OS", desarrollado por Google. Está diseñado para darte una solución rápida y constante, y lleva lo mejor de los servicios de Google integrados.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 4 AND title = '¿Qué es un Chromebook?'
);

INSERT INTO description_section(product_id, title, description)
SELECT 4,
'Rendimiento con el procesador Intel® Celeron®',
'Para trabajo, estudio y entretenimiento obtendrás eficacia y versatilidad con el procesador Intel® Celeron® N4120 con frecuencia base de 1.10 GHz y 4 MB de caché. Cuenta con sistema operativo Chrome OS intuitivo y fácil de manejar en el día a día, con 4 GB de RAM y capacidad de almacenamiento de 64 GB eMMC.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 4 AND title = 'Rendimiento con el procesador Intel® Celeron®'
);

INSERT INTO description_section(product_id, title, description)
SELECT 4,
'64 GB de almacenamiento eMMC',
'No hará falta que te preocupes por todos esos archivos que quieres conservar para el futuro. Cuenta con un disco duro eMMC de 64 GB y RAM de 4GB. Disfruta de cumplir con tus prioridades y de entretenerte, con total tranquilidad.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 4 AND title = '64 GB de almacenamiento eMMC'
);

INSERT INTO description_section(product_id, title, description)
SELECT 5,
'Procesador que supera a todos los de su clase',
'Los procesadores Intel® Core™ de 12ª generación presentan grandes avances en todas las áreas que importan ya que combinan el rendimiento de CPU líder en la industria, unos gráficos envolventes, una increíble aceleración de IA (Inteligencia artificial) y una conectividad por cable de gama alta e inalámbrica para ayudar a concentrarte, crear y participar de nuevas formas.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 5 AND title = 'Procesador que supera a todos los de su clase'
);

INSERT INTO description_section(product_id, title, description)
SELECT 5,
'Gran almacenamiento interno y notable memoria RAM',
'Gracias a su gran almacenamiento interno 512 GB SSD, podrás transferir tus datos en alta velocidad. Lo mejor es que la memoria de tipo SSD, transfiere datos 20 veces más rápido que un disco duro convencional. No hay que olvidar del almacenamiento interno de512 GB SSD, con el que podrás almacenar todo tipo de archivos, películas, videojuegos sin tener que estar pendiente de la memoria disponible.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 5 AND title = 'Gran almacenamiento interno y notable memoria RAM'
);

INSERT INTO description_section(product_id, title, description)
SELECT 5,
'Panel antirreflectante',
'Disfruta del sol y de tu contenido favorito con este panel antirreflectante. Que sea antirreflectante y de bajo brillo significa que gozarás de menos reflejos cuando esté al aire libre ya que no te afectarán los destellos.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 5 AND title = 'Panel antirreflectante'
);

INSERT INTO description_section(product_id, title, description)
SELECT 6,
'AMD® Ryzen™ 5 5500U, potencia sin límites',
'Si de verdad quieres rendimiento sin bloqueos, el procesador AMD® Ryzen™ 5 5500U será lo que más necesites, ya que con su frecuencia turbo de 4.0 GHz, los tiempos de carga en programas se reducirán considerablemente. Además, podrás completar grandes hojas de cálculo sin momentos de ralentización o bloqueos.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 6 AND title = 'AMD® Ryzen™ 5 5500U, potencia sin límites'
);

INSERT INTO description_section(product_id, title, description)
SELECT 6,
'Tus proyectos en alta definición Full HD',
'Tus juegos ahora tienen una nitidez nunca imaginada gracias a la pantalla TN de 15.6 pulgadas y alta definición. Su resolución Full-HD de 1920 x 1080 píxeles proporciona una imagen detallada, clarísima y con los colores más vivos que nunca.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 6 AND title = 'Tus proyectos en alta definición Full HD'
);

INSERT INTO description_section(product_id, title, description)
SELECT 6,
'Almacenamiento SSD',
'El espacio de este ordenador nunca va a ser un problema. Su disco duro SSD tiene una capacidad de 512 GB por lo que podrás guardar infinidad de archivos sin estar preocupándote por añadir memorias externas o ir borrando documentos. Además, cuenta con una memoria RAM de 16 GB.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 6 AND title = 'Almacenamiento SSD'
);

INSERT INTO description_section(product_id, title, description)
SELECT 6,
'Auténtica gráfica Radeon™ Graphics',
'Rendimiento rapidísimo, avanzadas tecnologías potentes y alta resolución: ¡con la tarjeta gráfica AMD Radeon™ Graphics lo tendrás todo! Gráficos espectaculares, menor latencia y máxima fluidez para que no haya ningún problema.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 6 AND title = 'Auténtica gráfica Radeon™ Graphics'
);

INSERT INTO description_section(product_id, title, description)
SELECT 7,
'Intel® Core™ i3-N305 desempeño y valor ampliado',
'Los procesadores Intel® Core™ i3-N305 para experiencias fáciles, receptivas, optimizada y procesamiento para aplicaciones de inteligencia artificial, cuentan con hasta 8 núcleos, el mismo núcleo eficiente (o E-core) y Gráficos UHD Intel® impulsados por la arquitectura Xe que los procesadores Intel® Core™ de 12a Generación, ofrecen memoria LPDDR5 y DDR5, y E/S ampliada y capacidades para uso de periféricos de Inteligencia artificial como virtualización de hardware, compatibilidad con múltiples sistemas operativos. Colaborar y transmitir con confianza, unidad de procesamiento de imágenes mejorada, gran autonomía de batería habilitada, el procesador aprovecha la energía y la eficiencia para respaldar el aprendizaje inmersivo y de nuevas formas, la navegación y la productividad. Juegos casuales, streaming y mejora adicional en el desempeño de gráficos.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 7 AND title = 'Intel® Core™ i3-N305 desempeño y valor ampliado'
);

INSERT INTO description_section(product_id, title, description)
SELECT 7,
'Almacenamiento de 512 GB',
'Cuenta con un disco SSD de 512 GB en el que podrás guardar todos tus archivos, proyectos, imágenes, vídeos y mucho más sin preocuparte por la falta de espacio. Además, cuenta con una memoria RAM de 8GB de tipo DDR5.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 7 AND title = 'Almacenamiento de 512 GB'
);

INSERT INTO description_section(product_id, title, description)
SELECT 7,
'15.6" con resolución Full HD',
'Trabaja en alta calidad con la pantalla de 15.6 pulgadas con resolución Full HD (1920 x 1080 píxeles) y tecnología Acer ComfyView LED LCD podrás disfrutar al máximo viendo películas y fotografías con la gran calidad de imagen y los detalles de alta definición de 1 millón de píxeles.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 7 AND title = '15.6" con resolución Full HD'
);

INSERT INTO description_section(product_id, title, description)
SELECT 7,
'Wifi 6',
'El Wi-Fi 6 aumenta la velocidad de transmisión, mejora la eficiencia y minimiza la congestión de la red cuando se utilizan múltiples dispositivos. La futura red WLAN requiere más rendimiento para hacer frente al aumento del tráfico de datos y gestionar más señales WLAN.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 7 AND title = 'Wifi 6'
);

INSERT INTO description_section(product_id, title, description)
SELECT 8, 
'Procesador que supera a todos los de su clase',
'Los procesadores Intel® Core™ de 12a generación presentan grandes avances en todas las áreas que importan ya que combinan el rendimiento de CPU líder en la industria, unos gráficos envolventes, una increíble aceleración de IA (Inteligencia artificial) y una conectividad por cable de gama alta e inalámbrica para ayudar a concentrarte, crear y participar de nuevas formas. La arquitectura de gráficos Xe, los gráficos integrados Intel® Iris® Xe ofrecen gráficos transformacionales y un nivel realista de multimedia para creación, videojuegos y entretenimiento en portátiles delgados y ligeros.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 8 AND title = 'Procesador que supera a todos los de su clase'
);

INSERT INTO description_section(product_id, title, description)
SELECT 8,
'Buen almacenamiento PCIe SSD',
'Este portátil HP se enciende en pocos segundos obteniendo una alta velocidad y confort gracias a su fiable procesador. A diferencia del antiguo PCI, los nuevos PCI Express (o PCIe) ofrecen una mejor eficiencia entre los diferentes componentes del hardware del PC, haciendo que sus componentes no se subdividan sino que se compartan aumentando el rendimiento de este ordenador. Este dispositivo portátil tiene 512GB de almacenamiento pudiendo guardar y procesar cualquier tipo de archivo, trabajo, videojuego o proyecto en el que estés trabajando. Es un ordenador profesional rápido y fiable para el día a día.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 8 AND title = 'Buen almacenamiento PCIe SSD'
);

INSERT INTO description_section(product_id, title, description)
SELECT 8,
'16 GB de memoria RAM DDR4',
'Este portátil tiene una notable memoria RAM de 16 GB DDR4 que te permitirá alcanzar una mayor velocidad y eficiencia gracias a sus mayores tasas de transferencia y a su menor voltaje. Esta generación de memoria RAM nos ofrece un mayor rendimiento que las anteriores así como una gran escalabilidad y eficiencia energética.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 8 AND title = '16 GB de memoria RAM DDR4'
);

INSERT INTO description_section(product_id, title, description)
SELECT 9,
'Arquitectura híbrida de rendimiento',
'El procesador Intel® Core™ de 12ª generación transforma tu experiencia informática y de juego, ya que integra dos microarquitecturas de núcleo totalmente nuevas en un único chip, gracias a Intel® Thread Director el procesador divide de forma inteligente el trabajo entre P-cores (núcleos de rendimiento) y E-cores (núcleos de eficiencia). Estas tecnologías mejoran los videojuegos y la productividad al garantizar que las tareas en segundo plano no distraen la atención de los núcleos más potentes, una optimización inteligente de las cargas de trabajo, lo que es un paso generacional en el rendimiento!'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 9 AND title = 'Arquitectura híbrida de rendimiento'
);

INSERT INTO description_section(product_id, title, description)
SELECT 9,
'Alta velocidad y rendimiento',
'Equipado con un disco duro de 512 GB de SSD, un disco duro ultra rápido, con el que podrás acceder a tus archivos, fotos y bibliotecas multimedia en segundos. Iniciarás el sistema operativo en un momento. Tiene espacio más que suficiente para todos sus álbumes de fotos, bibliotecas de música y películas. Además abordarás tareas de productividad exigentes con sus 16 GB de RAM y trabajarás de forma fluida con el sistema operativo Windows 11 Home.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 9 AND title = 'Alta velocidad y rendimiento'
);

INSERT INTO description_section(product_id, title, description)
SELECT 9,
'Diseño innovador para inspirarte',
'El portátil ASUS VivoBook 15 F1504ZA-NJ707W presenta una sólida, elegante y actual construcción montando una pantalla NanoEdge de 15.6” Full HD para que tengas una experiencia inmersiva al trabajar y jugar. Su panel FHD de visión amplia cuenta con un revestimiento antirreflectante que reduce las distracciones no deseadas de brillos y reflejos molestos, para que puedas centrarte realmente en lo que tienes delante.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 9 AND title = 'Diseño innovador para inspirarte'
);

INSERT INTO description_section(product_id, title, description)
SELECT 9,
'Auténtica gráfica Iris® Xe Graphics',
'¡Con la tarjeta gráfica Intel® Iris® Xe Graphics lo tendrás todo! Gráficos increíbles, menor latencia y máxima fluidez.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 9 AND title = 'Auténtica gráfica Iris® Xe Graphics'
);

INSERT INTO description_section(product_id, title, description)
SELECT 10,
'¿Qué es un Chromebook?',
'Los Chromebook son ordenadores portátiles que utilizan el sistema operativo "Chrome OS", desarrollado por Google. Está diseñado para darte una solución rápida y constante, y lleva lo mejor de los servicios de Google integrados.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 10 AND title = '¿Qué es un Chromebook?'
);

INSERT INTO description_section(product_id, title, description)
SELECT 10,
'Rendimiento con el procesador Intel® Celeron®',
'Para trabajo, estudio y entretenimiento obtendrás eficacia y versatilidad con el procesador Intel® Celeron® N4500 con frecuencia base de 1.10 GHz y 4 MB de caché. Potencia fiable sin contratiempos para las aplicaciones de correo electrónico y la navegación por la Web, tiempos de inicio más breves y más acción, duración optimizada de la batería, sólido nivel de rendimiento para las tareas informáticas cotidianas. Cuenta con sistema operativo Chrome OS intuitivo y fácil de manejar en el día a día, con 8GB de RAM y capacidad de almacenamiento de 128GB eMMC.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 10 AND title = 'Rendimiento con el procesador Intel® Celeron®'
);

INSERT INTO description_section(product_id, title, description)
SELECT 10,
'Sencillo e inteligente',
'Realiza una copia de seguridad automática de tus datos y funciona con y sin conexión. Un dispositivo pensado para compartir y colaborar.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 10 AND title = 'Sencillo e inteligente'
);

INSERT INTO description_section(product_id, title, description)
SELECT 10,
'Seguridad garantizada',
'Con protección integrada, sin necesidad de programas adicionales y con múltiples niveles de seguridad. (El antivirus integrado y la comprobación de arranque de Chrome OS están diseñados para evitar los problemas persistentes que pueden darse durante un uso normal, pero esto no significa que Chromebook no pueda ser atacado por código malicioso).'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 10 AND title = 'Seguridad garantizada'
);

INSERT INTO description_section(product_id, title, description)
SELECT 13,
'Procesador de rendimiento muy impresionante',
'El procesador AMD Ryzen™ 7 7730U tiene mucha energía en reserva, junto con 32GB de memoria rápida, 512 GB de almacenamiento SSD rápido y conectividad WiFi 6 de alta velocidad que le permite cargar contenido en línea más rápido que nunca. incluye una nueva y revolucionaria arquitectura con una asombrosa duración de la batería, que ofrece un procesamiento de subprocesos concurrentes excepcional.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 13 AND title = 'Procesador de rendimiento muy impresionante'
);

INSERT INTO description_section(product_id, title, description)
SELECT 13,
'Alta velocidad y rendimiento',
'Equipado con un disco duro de 512GB de SSD, un disco duro ultra rápido, con el que podrás acceder a tus archivos, fotos y bibliotecas multimedia en segundos. Iniciarás el sistema operativo en un momento. Tiene espacio más que suficiente para todos sus álbumes de fotos, bibliotecas de música y películas. Además abordarás tareas de productividad exigentes con sus 32 GB de RAM.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 13 AND title = 'Alta velocidad y rendimiento'
);

INSERT INTO description_section(product_id, title, description)
SELECT 13,
'Gráficos para el día a día',
'Con la magnifica AMD Radeon podrás ver el rendimiento grafico adaptado a tus necesidades, acelerando al máximo las aplicaciones mas populares de la actualidad y trabajando al máximo gracias a su capacidad.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 13 AND title = 'Gráficos para el día a día'
);

INSERT INTO description_section(product_id, title, description)
SELECT 13,
'Obtén una nueva perspectiva con Windows 11 Home',
'Windows 11 ofrece un espacio tranquilo y creativo en el que puedes dedicarte a tus pasiones a través de una novedosa experiencia. Desde un menú de Inicio rejuvenecido hasta nuevas formas de conectarte con tus personas, noticias, juegos y contenido favorito, Windows 11 es el lugar para pensar, expresar y crear de forma natural.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 13 AND title = 'Obtén una nueva perspectiva con Windows 11 Home'
);

INSERT INTO description_section(product_id, title, description)
SELECT 14,
'Arquitectura híbrida de rendimiento y Plataforma Intel® Evo™',
'Si trabajas desde cualquier lugar, eres productivo, creativo, competitivo, buscas entretenerte o trabajar duro, con el procesador Intel® Core™ de 12ª generación diseñado en la plataforma Intel® Evo™ transformarás tu experiencia informática y de juego ya que hace que tu portátil funcione de manera fluida, intuitiva y con capacidad de respuesta excepcional. Integra dos microarquitecturas de núcleo totalmente nuevas en un único chip, gracias a Intel® Thread Director el procesador divide de forma inteligente el trabajo entre P-cores (núcleos de rendimiento) y E-cores (núcleos de eficiencia). Estas tecnologías mejoran la productividad y los videojuegos al garantizar que las tareas en segundo plano no distraen la atención de los núcleos más potentes, una optimización inteligente de las cargas de trabajo lo que es un paso generacional en el rendimiento!'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 14 AND title = 'Arquitectura híbrida de rendimiento y Plataforma Intel® Evo™'
);

INSERT INTO description_section(product_id, title, description)
SELECT 14,
'Gran velocidad de transferencia de datos',
'Gracias a su almacenamiento interno de 256 GB SSD, podrás transferir tus datos en alta velocidad. Lo mejor es que la memoria de tipo SSD, transfiere datos 20 veces más rápido que un disco duro convencional. Además, el portátil Surface Laptop 5 cuenta con 8 GB de memoria RAM, de tipo LPDDR5x, con una gran frecuencia, lo que supondrá una reducción considerable en los tiempos de carga.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 14 AND title = 'Gran velocidad de transferencia de datos'
);

INSERT INTO description_section(product_id, title, description)
SELECT 14,
'Ligereza',
'El poder de un portátil ligero, con pantalla táctil de 13.5", resolución WQHD+ de 2256 x 1504 píxeles, el icónico soporte trasero y teclado extraíble. La pantalla PixelSense™ cuenta con función táctil multitáctil en 10 puntos y Gorilla Glass 5.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 14 AND title = 'Ligereza'
);

INSERT INTO description_section(product_id, title, description)
SELECT 14,
'Windows 11 Home instalado',
'Windows 11 Home te acerca a lo que amas. La familia, los amigos, las obsesiones, la música y las creaciones... Windows 11 es el lugar para todo. Con un aspecto totalmente nuevo y herramientas que facilitan la eficacia, tiene lo que necesitas para el futuro.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 14 AND title = 'Windows 11 Home instalado'
);

INSERT INTO description_section(product_id, title, description)
SELECT 14,
'Excelente autonomía',
'Céntrate en las ideas grandes, no en la duración de la batería, con hasta 18 horas de autonomía y carga rápida.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 14 AND title = 'Excelente autonomía'
);

INSERT INTO description_section(product_id, title, description)
SELECT 15,
'Máximo nivel desde cualquier lugar',
'La potencia y rendimiento para jugar, compartir, grabar la consigues con el procesador Intel® Core™ de 12ª generación con su arquitectura de núcleo de procesador y una serie de tecnologías de aceleración con las que potenciar el rendimiento de cada núcleo. Gracias a Intel® Thread Director, el procesador divide de forma inteligente el trabajo entre P-cores y E-cores, mejorando los videojuegos y la productividad al garantizar que las tareas en segundo plano no distraen la atención de los núcleos más potentes. Incluye mejoras de plataforma como la compatibilidad con RAM DDR5 y la adopción de PCIe 5.0. Juega a 4K en un ordenador ultraportátil y gráficos NVIDIA® GeForce RTX™ 4050.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 15 AND title = 'Máximo nivel desde cualquier lugar'
);

INSERT INTO description_section(product_id, title, description)
SELECT 15,
'Gran capacidad de almacenamiento',
'Gracias a su gran almacenamiento interno 512 GB SSD, podrás transferir tus datos en alta velocidad. Lo mejor es que la memoria de tipo SSD, transfiere datos 20 veces más rápido que un disco duro convencional. Además, el portátil gaming Lenovo tiene hasta 16 GB de memoria RAM, de tipo DDR5, con una gran frecuencia de hasta 4800 MHz, lo que supondrá una reducción considerable en los tiempos de carga.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 15 AND title = 'Gran capacidad de almacenamiento'
);

INSERT INTO description_section(product_id, title, description)
SELECT 15,
'Colores ricos y brillantes con 144 Hz',
'Los colores claros y realistas cobran vida con una gran resolución FHD (1920x 1080píxeles) de 15.6" con 144 Hz tipo IPS. Visualiza contenido sin problemas desde cualquier ángulo con tus amigos y familiares.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 15 AND title = 'Colores ricos y brillantes con 144 Hz'
);

INSERT INTO description_section(product_id, title, description)
SELECT 15,
'GeForce RTX™ serie 40',
'Los portátiles más rápidos del mundo para jugadores y creadores se basan en las GPU de los portátiles NVIDIA® GeForce RTX™ serie 40. Cuentan con la arquitectura ultraeficiente NVIDIA Ada Lovelace. Además, suponen todo un salto cuántico en el rendimiento con DLSS 3, con tecnología de IA y permiten mundos virtuales realistas con trazado de rayos completo. El conjunto de tecnologías Max-Q optimiza el rendimiento del sistema, la potencia, la duración de la batería y la acústica para lograr la máxima eficiencia.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 15 AND title = 'GeForce RTX™ serie 40'
);

INSERT INTO description_section(product_id, title, description)
SELECT 15,
'Wi-Fi 6',
'El Wi-Fi 6 aumenta la velocidad de transmisión, mejora la eficiencia y minimiza la congestión de la red cuando se utilizan múltiples dispositivos. La futura red WLAN requiere más rendimiento para hacer frente al aumento del tráfico de datos y gestionar más señales WLAN. El revolucionario y altamente eficiente estándar WLAN IEEE 802.11ax (Wi-Fi 6) hace frente a este desafío. Wi-Fi 6 cumple con su promesa de garantizar una red más rápida y estable en la próxima década.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 15 AND title = 'Wi-Fi 6'
);

INSERT INTO description_section(product_id, title, description)
SELECT 19,
'Potencia y rendimiento',
'El procesador AMD Ryzen™ 7 7735HS equipado con 8 núcleos, te permitirá jugar con los últimos juegos del mercado AAA y maratones gaming de manera ultra fluida y suave. Produce, crea, conecta y colabora como nunca antes. El portátil cuenta con,16GB de RAM DDR5 de 4800 MHz y 512GB SSD, para que ejecutes tus juegos como la multitarea de forma eficiente, y con un aumento del rendimiento gracias a su mayor ancho de banda.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 19 AND title = 'Potencia y rendimiento'
);

INSERT INTO description_section(product_id, title, description)
SELECT 19,
'GeForce RTX™ serie 40',
'Los portátiles más rápidos del mundo para jugadores y creadores se basan en las GPU de los portátiles NVIDIA® GeForce RTX™ serie 40. Cuentan con la arquitectura ultraeficiente NVIDIA Ada Lovelace. Además, suponen todo un salto cuántico en el rendimiento con DLSS 3, con tecnología de IA y permiten mundos virtuales realistas con trazado de rayos completo. El conjunto de tecnologías Max-Q optimiza el rendimiento del sistema, la potencia, la duración de la batería y la acústica para lograr la máxima eficiencia.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 19 AND title = 'GeForce RTX™ serie 40'
);

INSERT INTO description_section(product_id, title, description)
SELECT 19,
'Colores ricos y brillantes FHD',
'Los colores claros y realistas cobran vida con una resolución Full HD y panel de 15.6" tipo IPS de 144 Hz. Visualiza contenido sin problemas desde cualquier ángulo con tus amigos y familiares.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 19 AND title = 'Colores ricos y brillantes FHD'
);

INSERT INTO description_section(product_id, title, description)
SELECT 19,
'Wi-Fi 6',
'El Wi-Fi 6 aumenta la velocidad de transmisión, mejora la eficiencia y minimiza la congestión de la red cuando se utilizan múltiples dispositivos. La futura red WLAN requiere más rendimiento para hacer frente al aumento del tráfico de datos y gestionar más señales WLAN. El revolucionario y altamente eficiente estándar WLAN IEEE 802.11ax (Wi-Fi 6) hace frente a este desafío. Wi-Fi 6 cumple con su promesa de garantizar una red más rápida y estable en la próxima década. La tarjeta ofrece velocidades de hasta 574 Mbps en la red de 2.40 GHz, mientras que ofrecerá hasta 2.402 Mbps en la de 5 GHz.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 19 AND title = 'Wi-Fi 6'
);

INSERT INTO description_section(product_id, title, description)
SELECT 20,
'¿Qué es un Chromebook?',
'Los Chromebook son ordenadores portátiles que utilizan el sistema operativo "Chrome OS", desarrollado por Google. Está diseñado para darte una solución rápida y constante, y lleva lo mejor de los servicios de Google integrados.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 20 AND title = '¿Qué es un Chromebook?'
);

INSERT INTO description_section(product_id, title, description)
SELECT 20,
'Rápido como el primer día',
'Se inicia en cuestión de segundos y se actualiza de forma automática en segundo plano (requiere conexión a internet).'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 20 AND title = 'Rápido como el primer día'
);

INSERT INTO description_section(product_id, title, description)
SELECT 20,
'Sencillo e inteligente',
'Realiza una copia de seguridad automática de tus datos y funciona con y sin conexión. Un dispositivo pensado para compartir y colaborar.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 20 AND title = 'Sencillo e inteligente'
);

INSERT INTO description_section(product_id, title, description)
SELECT 20,
'Seguridad garantizada',
'Con protección integrada, sin necesidad de programas adicionales y con múltiples niveles de seguridad. (El antivirus integrado y la comprobación de arranque de Chrome OS están diseñados para evitar los problemas persistentes que pueden darse durante un uso normal, pero esto no significa que Chromebook no pueda ser atacado por código malicioso).'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 20 AND title = 'Seguridad garantizada'
);

INSERT INTO description_section(product_id, title, description)
SELECT 20,
'Para toda la familia',
'Con la aplicación Family Link, puedes establecer normas digitales básicas para acompañar y guiar a tus hijos en el uso del ordenador.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 20 AND title = 'Para toda la familia'
);

INSERT INTO description_section(product_id, title, description)
SELECT 20,
'Adaptado a todas tus necesidades',
'Todas tus aplicaciones favoritas de Google vienen pre-instaladas en cada Chromebook, por lo que puedes editar, descargar y convertir documentos de Microsoft Office en Google Docs, Sheets y Slides. Además, en Google Play Store podrás acceder a miles de aplicaciones para escuchar música, ver vídeos, crear contenido, trabajar y compartir archivos. (Requiere una conexión a Internet. Algunas aplicaciones son de pago.) Y todo esto con una batería que dura hasta 12 horas (puede variar en función del uso y otras condiciones).'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 20 AND title = 'Adaptado a todas tus necesidades'
);