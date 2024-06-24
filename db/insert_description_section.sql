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

INSERT INTO description_section(product_id, title, description)
SELECT 21,
'Hazlo tuyo',
'Galaxy S24 no pierde el característico diseño Galaxy, sino que lo mejora. Ahora con más pantalla, formas redondeadas y acabado mate antihuellas. También podrás disfrutar de un sinfín de opciones de personalización con One UI 6.1 y mantener lo que más importa bien protegido con la seguridad de Samsung Knox.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 21 AND title = 'Hazlo tuyo'
);

INSERT INTO description_section(product_id, title, description)
SELECT 21,
'Un smartphone que combina contigo',
'Galaxy S24 está disponible en cuatro colores: Amarillo Amber, Violeta Cobalt, Gris Marble y Negro Onyx. También podrás elegir la capacidad de memoria que desees, de 8GB + 128GB o 256GB de memoria interna. ¿Ya sabes cuál quieres?'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 21 AND title = 'Un smartphone que combina contigo'
);

INSERT INTO description_section(product_id, title, description)
SELECT 21,
'Crea contenido como un profesional',
'El nuevo Galaxy S24 de Samsung no solo te asegura una experiencia fotográfica de diez, gracias a su cámara de 50MP de resolución, sino que la incorporación de la Inteligencia Artificial supone un cambio a la hora de crear contenido.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 21 AND title = 'Crea contenido como un profesional'
);

INSERT INTO description_section(product_id, title, description)
SELECT 22,
'Pantalla iPhone 15 Pro Max',
'La pieza central de la experiencia visual que ofrece el iPhone 15 Pro Max es, sin duda, su majestuosa pantalla de 6,7 pulgadas. Esta pantalla, con una resolución de 1290 x 2796 píxeles y una densidad de píxeles de 460ppi, garantiza una representación cristalina de todos los detalles. La tecnología OLED, conocida por su capacidad para producir colores brillantes y negros realmente profundos, eleva aún más la calidad de la imagen, ofreciendo un contraste que resalta todos los matices.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 22 AND title = 'Pantalla iPhone 15 Pro Max'
);

INSERT INTO description_section(product_id, title, description)
SELECT 22,
'Batería iPhone 15 Pro Max',
'El iPhone 15 Pro Max está equipado con una batería de 4441 mAh que representa un equilibrio perfecto entre capacidad y gestión de la energía. Además de tener una gran capacidad, esta unidad se ha optimizado para aprender y adaptarse a los hábitos diarios del usuario, garantizando así una duración de la batería que se prolonga durante todo el día, independientemente de la intensidad de uso. Y cuando llega el momento de cargarlo, el iPhone 15 Pro Max ofrece soluciones flexibles y cómodas: la carga inalámbrica ofrece la comodidad de la carga inalámbrica, mientras que la función de carga rápida garantiza que, incluso con conexiones de energía cortas, se pueda minimizar el tiempo de espera.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 22 AND title = 'Batería iPhone 15 Pro Max'
);

INSERT INTO description_section(product_id, title, description)
SELECT 22,
'Prestaciones iPhone 15 Pro Max',
'El iPhone 15 Pro Max es un auténtico portento, diseñado para ofrecer un rendimiento inigualable en cualquier situación. En el corazón de esta máquina se encuentra el formidable procesador que garantiza respuestas inmediatas y operaciones fluidas. Esta potencia de procesamiento, unida a una memoria interna que puede ampliarse hasta unos impresionantes 1.000 GB, significa que no solo las aplicaciones y los juegos más exigentes se manejan con facilidad, sino que los usuarios disponen de un amplio espacio de almacenamiento para fotos, vídeos, aplicaciones y mucho más.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 22 AND title = 'Prestaciones iPhone 15 Pro Max'
);

INSERT INTO description_section(product_id, title, description)
SELECT 23,
'Más pantalla, más posibilidades',
'Galaxy A55 presenta una estética sofisticada y refinada con una cubierta trasera brillante. Su pantalla Super AMOLED FHD+ de 6,6” proporciona una experiencia visual envolvente gracias a su tasa de refresco de 120 Hz, lo que garantiza una reproducción fluida al disfrutar de tus contenidos favoritos. Con colores vibrantes y una calidad de imagen excepcional, te sumergirás por completo en la acción.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 23 AND title = 'Más pantalla, más posibilidades'
);

INSERT INTO description_section(product_id, title, description)
SELECT 23,
'Sin problemas de almacenamiento',
'Dile adiós a las limitaciones de almacenamiento con Galaxy A55 y sus 8 GB de RAM y 128 GB de almacenamiento interno. Guarda todos tus documentos personales, fotos, videos y aplicaciones en un solo lugar. ¿Necesitas aún más espacio? Galaxy A55 te permite expandir la capacidad de almacenamiento hasta 1 TB con una tarjeta MicroSD. Disfruta de la libertad de tenerlo todo a tu alcance sin sacrificar rendimiento ni calidad.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 23 AND title = 'Sin problemas de almacenamiento'
);

INSERT INTO description_section(product_id, title, description)
SELECT 23,
'Energía de sobra durante 2 días',
'Experimenta una autonomía sin límites con la batería de 5.000 mAh de Galaxy A55. Disfruta de horas de entretenimiento sin interrupciones, ya sea viendo tus películas y series favoritas, jugando a juegos exigentes o trabajando fuera de casa. No te preocupes por quedarte sin batería en el momento menos oportuno: Galaxy A55 te ofrece la libertad de usar tu teléfono sin restricciones. ¿Necesitas recargar tu smartphone? La carga rápida de 25 W te permite recuperar la energía en un abrir y cerrar de ojos. Olvídate de las esperas interminables y vuelve a disfrutar de tu Galaxy A55 en cuestión de minutos.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 23 AND title = 'Energía de sobra durante 2 días'
);

INSERT INTO description_section(product_id, title, description)
SELECT 24,
'Disfruta de la experiencia del cine en tu bolsillo',
'Pantalla FHD+ 6,7” AMOLED con unos colores y un brillo increíble que te harán pasar horas pegado a él, junto con la mejor fluidez en una pantalla de smartphone gracias a sus 120Hz, que te harán disfrutar como nunca de tus películas, series y juegos. Le acompaña un Modo Ultra Volumen 300% para que puedas escucharlo en cualquier parte sin necesidad de usar cascos y disfrutar aún más de esta increíble pantalla.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 24 AND title = 'Disfruta de la experiencia del cine en tu bolsillo'
);

INSERT INTO description_section(product_id, title, description)
SELECT 24,
'Tu compañero incansable de aventuras',
'Con 5000 mAh de batería y una carga rápida 67W SUPERVOOC, Reno11 F 5G será el compañero perfecto para todos los días, con una gran batería que te hará mantenerte hasta dos días sin necesitad de cargarlo y su carga rápida que en 48 minutos te devolverá de nuevo a darlo todo, no tendrás la necesidad de tener que ir con el cargador encima. Además, incluimos un sistema de batería mejorado con 4 años de durabilidad, realizado por la parte de expertos y en los laboratorios de OPPO.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 24 AND title = 'Tu compañero incansable de aventuras'
);

INSERT INTO description_section(product_id, title, description)
SELECT 24,
'¡Que el mejor rendimiento te acompañe!',
'Un smartphone perfecto para darte horas y horas de entretenimiento y funcionalidad y que con el paso del tiempo siga rindiendo como el primer día, con 256 GB de almacenamiento y ampliable por Micro SD hasta 2 TB y poder aumentar esa memoria. 8 GB de RAM para que vaya todo fluido y puedas tener todas tus aplicaciones favoritas siempre listas y abiertas para cuando las necesites, con la posibilidad de poder ampliar hasta 16 GB para que todo funcione como el primer día.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 24 AND title = '¡Que el mejor rendimiento te acompañe!'
);

INSERT INTO description_section(product_id, title, description)
SELECT 25,
'Pantalla con resolución 1,5K',
'La pantalla del Redmi Note 13 Pro Plus 5G da un salto notable al alcanzar una resolución de 1,5K. Este avance proporciona una definición impresionante sin sacrificar la eficiencia energética, a diferencia de las pantallas 2K. Aquí encontramos el equilibrio perfecto entre una experiencia visual asombrosa y un consumo de batería eficiente. Además, la fluidez no se queda atrás con una tasa de refresco de hasta 120Hz y una mejora significativa en el reconocimiento de gestos.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 25 AND title = 'Pantalla con resolución 1,5K'
);

INSERT INTO description_section(product_id, title, description)
SELECT 25,
'Cámara de hasta 200MP',
'Redmi Note 13 Pro Plus hace alarde de un conjunto de cámaras de élite, encabezado por un impresionante sensor principal de hasta 200MP con estabilización óptica de imagen (OIS). Esta combinación garantiza imágenes nítidas incluso cuando se capturan desde lejos, con la capacidad de aumentar el zoom hasta 4X con una mínima pérdida de calidad. Además, el sensor permite agrupar sus píxeles en grupos de 16 en 1, lo que resulta en una percepción de luz mejorada, especialmente en condiciones de baja luminosidad.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 25 AND title = 'Cámara de hasta 200MP'
);

INSERT INTO description_section(product_id, title, description)
SELECT 25,
'Rendimiento',
'Redmi Note 13 Pro+ ofrece un rendimiento excepcional gracias a su potente procesador MediaTek Dimensity 7200 Ultra con una avanzada arquitectura de 6 nanómetros. Este procesador garantiza un rendimiento rápido y eficiencia, lo que significa que podrás disfrutar de una experiencia fluida y sin complicaciones en todas tus actividades. Y en cuanto a la seguridad y actualizaciones, el Redmi Note 13 Pro+ no se queda atrás.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 25 AND title = 'Rendimiento'
);

INSERT INTO description_section(product_id, title, description)
SELECT 25,
'Batería y carga',
'Redmi Note 13 Pro+ se destaca con una impresionante batería de 5000mAh y una capacidad de carga de 120W. Esto significa que no solo tendrás energía suficiente para todo el día, sino que también te olvidarás de preocuparte por quedarte sin batería. En tan solo 19 minutos, podrás pasar de un 0% a un 100% de carga, lo que es prácticamente instantáneo.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 25 AND title = 'Batería y carga'
);

INSERT INTO description_section(product_id, title, description)
SELECT 27,
'Cámaras de gran resolución',
'Este móvil cuenta con una cámara triple trasera de 50 megapíxeles f/1.88 con sensor Sony LYT-600 + una cámara gran angular 8 megapíxeles f/2.2 + cámara macro de 2 megapíxeles f/2.4. Además, cuenta con una cámara frontal de 16 MP f/2.45. Y por si fuera poco, es capaz de grabar vídeos a resolución 4K (4K 30fps).'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 27 AND title = 'Cámaras de gran resolución'
);

INSERT INTO description_section(product_id, title, description)
SELECT 27,
'MediaTek Dimensity 7050 5G',
'El procesador Dimensity 7050 5G, junto con su núcleo MediaTek de 6 nm, brindarán una gama completa de mejoras en el rendimiento del teléfono, con 8 núcleos a 2.6 GHz de velocidad.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 27 AND title = 'MediaTek Dimensity 7050 5G'
);

INSERT INTO description_section(product_id, title, description)
SELECT 27,
'Pantalla Full HD+',
'Esta pantalla de 6.67" insignia viene con luna tasa de respuesta de 120 Hz, que brinda un efecto de visualización de fotografías más vívidas a una resolución Full HD+ (2400x1080).'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 27 AND title = 'Pantalla Full HD+'
);

INSERT INTO description_section(product_id, title, description)
SELECT 27,
'realme UI 5.0, basado en Android 14',
'La nueva UI 5.0 se actualiza tanto visual como funcionalmente, incluyendo nuevas funciones File Dock, Smart Image Matting y Phonelink para una experiencia de usuario más inteligente y conveniente.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 27 AND title = 'realme UI 5.0, basado en Android 14'
);

INSERT INTO description_section(product_id, title, description)
SELECT 27,
'Gran capacidad de memoria',
'El móvil realme cuenta con una memoria RAM de 12 GB y 512 GB de capacidad. La gran RAM admite la ejecución de múltiples aplicaciones en segundo plano, lo que hace que el cambio de aplicación sea más fluido.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 27 AND title = 'Gran capacidad de memoria'
);

INSERT INTO description_section(product_id, title, description)
SELECT 29,
'Pantalla FHD+ de 120 Hz',
'Navegar, ver vídeos, consultar las redes sociales… todo es más fluido en este smartphone con pantalla con velocidad de refresco de 120 Hz con panel Dynamic AMOLED 6.55" y resolución FHD+ (2400 x 1080 píxeles). Disfruta de una interacción asombrosamente sencilla.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 29 AND title = 'Pantalla FHD+ de 120 Hz'
);

INSERT INTO description_section(product_id, title, description)
SELECT 29,
'Captura todos tus momentos',
'El equipo fotográfico de este OPPO Find X5 5G llega coronado por un tres cámaras de 50MP (f/1.8), 2 axis, 50MP (f/2.2), 13MP (f/2.4). Con tantas cámaras y megapíxeles obtendrás unas imágenes absolutamente impresionantes. Además, en el frontal cuenta con una cámara de 32MP (f/2.4) con sensor Sony IMX615 para selfies. Y todo el equipo fotográfico, trasero y frontal.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 29 AND title = 'Captura todos tus momentos'
);

INSERT INTO description_section(product_id, title, description)
SELECT 29,
'Desata tu potencial',
'El OPPO Find X5 5G utiliza una sofisticada combinación de características (Sensor cámara principal Sony IMX766, Teleobjetivo 5x hibrido, 4k Vídeo Ultra Nocturno) para grabar vídeos con colores intensos, brillantes y equilibrados, ya sea de día o de noche.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 29 AND title = 'Desata tu potencial'
);

INSERT INTO description_section(product_id, title, description)
SELECT 29,
'Carga Super rápida',
'La batería de 4800 mAh del Find X5 5G se ha diseñado para durar, independientemente del uso que le des al móvil, y para que cuando necesite cargarse, lo haga rápido. La carga SuperVOOC 80 W carga el teléfono al 100 % en solo unos minutos.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 29 AND title = 'Carga Super rápida'
);

INSERT INTO description_section(product_id, title, description)
SELECT 29,
'Preparado para la red 5G',
'El Find X5 5G de OPPO funciona con el procesador Qualcomm Snapdragon™ 888 5G y es compatible con bandas 5G. También ofrece 8 GB de RAM para un rendimiento fluido y una autonomía impresionante, más 256 GB de almacenamiento interno.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 29 AND title = 'Preparado para la red 5G'
);

INSERT INTO description_section(product_id, title, description)
SELECT 30,
'La potencia de la IA de Google en Pixel',
'Google Tensor G3 es el mismo chip que incluye Pixel 8 Pro. Hace que Pixel 8a sea rápido y eficiente. Además, incorpora la IA de Google para ayudarte de formas más inteligentes a lo largo del día.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 30 AND title = 'La potencia de la IA de Google en Pixel'
);

INSERT INTO description_section(product_id, title, description)
SELECT 30,
'Todo se ve increíble en Pixel',
'La pantalla OLED Actua de 6,1 pulgadas y alta resolución de Pixel (2400x1080p) tiene aún más brillo e intensidad, y te permite desplazarte por la interfaz, ver vídeos en streaming y cambiar de una aplicación a otra de manera superfluida.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 30 AND title = 'Todo se ve increíble en Pixel'
);

INSERT INTO description_section(product_id, title, description)
SELECT 30,
'Fotos increíbles sin complicaciones',
'La Cámara Pixel hace fotos y vídeos increíbles siempre. La IA de Google te permite conseguir fotos de grupo perfectas y arreglar imágenes borrosas. Esto es posible gracias a su doble cámara trasera de 64 MP + 13 MP y capacidad de grabar vídeo en resolución 4K.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 30 AND title = 'Fotos increíbles sin complicaciones'
);

INSERT INTO description_section(product_id, title, description)
SELECT 30,
'Alta capacidad y eficiencia',
'El Google Pixel 8a cuenta con una memoria RAM de 8 GB y una capacidad de memoria de 128 GB, por lo que tendrás memoria para todo lo que necesites.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 30 AND title = 'Alta capacidad y eficiencia'
);

INSERT INTO description_section(product_id, title, description)
SELECT 30,
'Una batería fiable que dura todo el día',
'La Batería Inteligente de tu Pixel puede durar más de 24 horas. Y si activas Ahorro de Batería Extremo, puede llegar hasta las 72 horas. Para que no te quedes sin batería cuando más la necesitas.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 30 AND title = 'Una batería fiable que dura todo el día'
);

INSERT INTO description_section(product_id, title, description)
SELECT 31,
'La potencia de la IA de Google en Pixel',
'Google Tensor G3 es el chip más potente de Pixel hasta la fecha. Está diseñado a medida con la IA de Google para ofrecerte funciones de fotografía y vídeo de vanguardia, así como maneras más inteligentes de ayudarte durante todo el día. Y hace que Pixel 8 sea superrápido y eficiente. Además, cuenta con una RAM de 8 GB y una capacidad de 128 GB, para que no te falte de nada.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 31 AND title = 'La potencia de la IA de Google en Pixel'
);

INSERT INTO description_section(product_id, title, description)
SELECT 31,
'Una pantalla impresionante',
'La pantalla de alta resolución OLED FHD+ de 6,2 pulgadas de Pixel muestra colores intensos y nítidos llenos de matices. Y tiene una tasa de refresco de hasta 120 Hz para que disfrutes de una experiencia muy fluida cuando juegues, navegues o cambies de aplicación.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 31 AND title = 'Una pantalla impresionante'
);

INSERT INTO description_section(product_id, title, description)
SELECT 31,
'Una batería superfiable que dura todo el día',
'La Batería Inteligente de Pixel puede durar más de 24 horas. Si activas Ahorro de Batería Extremo, puede durar hasta 72 horas, para que no te quedes sin batería cuando más lo necesites. Y tu Pixel se carga más rápido que nunca.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 31 AND title = 'Una batería superfiable que dura todo el día'
);

INSERT INTO description_section(product_id, title, description)
SELECT 31,
'Diseño innovador y moderno',
'Pixel 8 sube el listón con un atractivo diseño que incorpora bordes contorneados, un acabado satinado y colores sofisticados. Y está fabricado con materiales reciclados.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 31 AND title = 'Diseño innovador y moderno'
);

INSERT INTO description_section(product_id, title, description)
SELECT 31,
'Los arañazos y los líquidos derramados no son un problema',
'Con su diseño duradero y la protección IP68, Pixel 8 aguanta los descuidos, los líquidos derramados y el polvo. Además, es resistente a los arañazos gracias al recubrimiento de vidrio Corning® Gorilla® Glass Victus®.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 31 AND title = 'Los arañazos y los líquidos derramados no son un problema'
);

INSERT INTO description_section(product_id, title, description)
SELECT 32,
'La potencia de la IA de Google en Pixel',
'Google Tensor G3 es el chip más potente de Pixel hasta la fecha. Está diseñado a medida con la IA de Google para ofrecerte funciones de fotografía y vídeo de vanguardia, así como maneras más inteligentes de ayudarte durante todo el día. Y hace que Pixel 8 sea superrápido y eficiente. Además, cuenta con una RAM de 8 GB y una capacidad de 256 GB, para que no te falte de nada.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 32 AND title = 'La potencia de la IA de Google en Pixel'
);

INSERT INTO description_section(product_id, title, description)
SELECT 32,
'Una pantalla impresionante',
'La pantalla de alta resolución OLED FHD+ de 6,2 pulgadas de Pixel muestra colores intensos y nítidos llenos de matices. Y tiene una tasa de refresco de hasta 120 Hz para que disfrutes de una experiencia muy fluida cuando juegues, navegues o cambies de aplicación.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 32 AND title = 'Una pantalla impresionante'
);

INSERT INTO description_section(product_id, title, description)
SELECT 32,
'Una batería superfiable que dura todo el día',
'La Batería Inteligente de Pixel puede durar más de 24 horas. Si activas Ahorro de Batería Extremo, puede durar hasta 72 horas, para que no te quedes sin batería cuando más lo necesites. Y tu Pixel se carga más rápido que nunca.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 32 AND title = 'Una batería superfiable que dura todo el día'
);

INSERT INTO description_section(product_id, title, description)
SELECT 32,
'Fotos y vídeos magníficos, siempre',
'La Cámara Pixel se ha actualizado por completo y cuenta con un procesamiento de imagen avanzado que capta colores intensos y detalles espectaculares con cualquier luz. Y ahora, gracias a Enfoque Macro, podrás crear imágenes increíbles por muy pequeño que sea lo que quieras inmortalizar. Todo esto con un sistema de cámara trasera dual de Gran Angular 50 MP f/1.68 + Ultra Gran Angular 12 MP f/2.2 + Sensor LDAF.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 32 AND title = 'Fotos y vídeos magníficos, siempre'
);

INSERT INTO description_section(product_id, title, description)
SELECT 32,
'Vídeos increíbles en cada toma',
'La Cámara Pixel graba vídeos fluidos con una resolución asombrosa (hasta 4K a 24, 30 y 60 FPS) y un audio nítido, incluso en lugares concurridos y poco iluminados.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 32 AND title = 'Vídeos increíbles en cada toma'
);

INSERT INTO description_section(product_id, title, description)
SELECT 34,
'Sensor de imagen flagship en la cámara frontal',
'Diseñado exclusivamente por OPPO y construido con hardware Sony, el sensor IMX709 de la cámara frontal cuenta con altísimos niveles de captación de luz. La mayor entrada de luz te permite capturar imágenes brillantes y claras.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 34 AND title = 'Sensor de imagen flagship en la cámara frontal'
);

INSERT INTO description_section(product_id, title, description)
SELECT 34,
'50 MP de cámara principal',
'La cámara principal de 50 MP proporciona un nuevo nivel de claridad, garantizando que cada escena sea una obra maestra y que cada foto sea perfecta. Además, cuenta con un gran angular de 8MP y un teleobjetivo de 32MP. Para los selfies, contarás con 32MP.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 34 AND title = '50 MP de cámara principal'
);

INSERT INTO description_section(product_id, title, description)
SELECT 34,
'Más rápido que nunca',
'Rendimiento para los más exigentes, con procesador Qualcomm Snapdragon™ 778G, hardware y software se unen para darte una mejor experiencia de juego.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 34 AND title = 'Más rápido que nunca'
);

INSERT INTO description_section(product_id, title, description)
SELECT 34,
'SuperVOOC 80W',
'La batería cuenta con una capacidad de 4600 mAh, lo que te dará más de 1600 ciclos de carga. La carga rápida SuperVOOC de 80W te dará una carga del 100% en 28 minutos.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 34 AND title = 'SuperVOOC 80W'
);

INSERT INTO description_section(product_id, title, description)
SELECT 35,
'Cámara de alta resolución de 50 MP',
'vivo Y35 5G ofrece una experiencia fotográfica altamente versátil y de nivel profesional con una gama de cámaras traseras dobles de 50 MP ƒ/1.8 + 2MP ƒ/2.4, también tendrás 16 MP ƒ/2.0 de cámara frontal para selfies.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 35 AND title = 'Cámara de alta resolución de 50 MP'
);

INSERT INTO description_section(product_id, title, description)
SELECT 35,
'Pantalla LCD FHD+',
'Pantalla LCD de 6.58 pulgadas, la pantalla se actualiza y responde más rápido. Para incrementar la fluidez, especialmente en los juegos, lo que te permite tener una experiencia más fresca en la palma de tu mano. Sensor de huella integrado.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 35 AND title = 'Pantalla LCD FHD+'
);

INSERT INTO description_section(product_id, title, description)
SELECT 35,
'Procesador potente y gran almacenamiento interno',
'Con el procesador Snapdragon 680 y 8 GB RAM + 256 GB de memoria interna, podrás manejar diferentes juegos con facilidad. También te permitirá instalar y ejecutar todas las aplicaciones que quieras. Podrás ampliar el almacenamiento mediante una tarjeta microSD de hasta 256 GB.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 35 AND title = 'Procesador potente y gran almacenamiento interno'
);

INSERT INTO description_section(product_id, title, description)
SELECT 36,
'Mejoras visuales para un resultado brillante',
'La nueva pantalla de Galaxy A15 se apoya en la tecnología Vision Booster para que puedas ver imágenes, grabaciones de vídeos, documentos de texto y todo tipo de contenido en streaming en entornos exteriores, incluso a plena luz del sol, ya que el brillo de la pantalla se adapta de forma precisa a la iluminación del ambiente para que no tengas que forzar la vista. Además, con las funciones de Eye Comfort Shield, es posible disminuir la emisión de luz azul que emite la pantalla.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 36 AND title = 'Mejoras visuales para un resultado brillante'
);

INSERT INTO description_section(product_id, title, description)
SELECT 36,
'Selección de cámaras para guardar todos tus recuerdos',
'¡Luces, cámaras, diversión! Conviértete en un auténtico profesional de la fotografía con el amplio juego de lentes de Galaxy A15 y captura paisajes mágicos, selfies divertidísimos y momentos irrepetibles con una calidad excepcional. Al disponer de varias opciones, las posibilidades se multiplican: tienes la cámara principal de 50 MP con estabilización óptica de imagen, la cámara con gran angular de 5 MP, la cámara macro de 2 MP y la cámara frontal de 13 MP.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 36 AND title = 'Selección de cámaras para guardar todos tus recuerdos'
);

INSERT INTO description_section(product_id, title, description)
SELECT 36,
'Capacidad para guardar todo lo que necesitas',
'¿Estás cansado de tener que eliminar fotos y vídeos que te gustan de tu smartphone para poder disponer de espacio libre? ¡Eso ya se ha acabado! Galaxy A15 cuenta con 4 GB de memoria RAM y 128 GB de memoria interna para que puedas almacenar todos tus documentos personales en un único dispositivo. ¿No es suficiente? También puedes ampliar la capacidad con una tarjeta MicroSD de hasta 1 TB.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 36 AND title = 'Capacidad para guardar todo lo que necesitas'
);

INSERT INTO description_section(product_id, title, description)
SELECT 37,
'Comparte lo épico',
'La experiencia de visualización mejora épicamente en exteriores. La pantalla Dynamic AMOLED 2x FHD+ de 6.1” cuenta con una visibilidad adaptativa para exteriores, alcanzando 1.750 nits de brillo máximo y un modo noche más agradable. Navega y haz scroll de manera suave y fluida gracias a sus 120 Hz de tasa de refresco.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 37 AND title = 'Comparte lo épico'
);

INSERT INTO description_section(product_id, title, description)
SELECT 37,
'La mejor cámara con Nightography',
'Dale un giro íncreíble a tus fotos y vídeos con la cámara de calidad profesional de Galaxy S23 y atrévete a ser el protagonista de la noche. Galaxy S23 ofrece una calidad de imagen de alta resolución y calidad sin precedentes. Haz selfies, retratos o vídeos llenos de brillo y siempre nítidas, incluso en situaciones de poca luz.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 37 AND title = 'La mejor cámara con Nightography'
);

INSERT INTO description_section(product_id, title, description)
SELECT 37,
'Máximo rendimiento para tus partidas',
'Cuando tus partidas online son épicas, lo normal es querer compartirlas. Galaxy S23 no solo te permite jugar con la máxima calidad los últimos juegos del mercado, también te permite compartirlos con tus amigos para que sean aún más épicos. Todo gracias a su increíble potencia.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 37 AND title = 'Máximo rendimiento para tus partidas'
);

INSERT INTO description_section(product_id, title, description)
SELECT 37,
'El chipset y sistema de refrigeración más avanzado',
'Disfruta jugando, trabajando o compartiendo contenido en vivo durante muchísimo tiempo. El procesador de 4 nm de Galaxy S23 te ofrece una experiencia increíblemente fluida. Su sistema de refrigeración Vapor Cooling, aún más grande, mantendrá el calor a raya.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 37 AND title = 'El chipset y sistema de refrigeración más avanzado'
);

INSERT INTO description_section(product_id, title, description)
SELECT 38,
'Un diseño de referencia con ADN Galaxy',
'El Galaxy S24 Ultra presenta el diseño icónico de la serie Ultra, compatible con S Pen, para que crees y trabajes sin límites. Con un bonito acabado metálico y marcos aún más pequeños, tu smartphone se ajusta a tus preferencias gracias a la tecnología One UI 6.1, que te permite customizarlo a tu gusto y, además, mantener tus datos e información a buen recaudo con la seguridad de Samsung Knox.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 38 AND title = 'Un diseño de referencia con ADN Galaxy'
);

INSERT INTO description_section(product_id, title, description)
SELECT 38,
'Un dispositivo que razona, planifica y crea',
'Si hay algo que destaca del nuevo lanzamiento de Samsung, es la innovación a la hora de interactuar con la información y el medio que nos rodea. La Inteligencia Artificial resuelve tus dudas y te presenta funciones impresionantes. Por ejemplo, te permite traducir al instante llamadas y chats, encontrar información haciendo un simple gesto en tu pantalla, y ahorrar tiempo navegando por internet con su Web Assist. Además, incorpora herramientas, como Note Assist y Transcript Assist, para ayudarte a trabajar y estudiar de manera aún más productiva.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 38 AND title = 'Un dispositivo que razona, planifica y crea'
);

INSERT INTO description_section(product_id, title, description)
SELECT 38,
'Eleva tu experiencia de fotografía',
'El modelo más avanzado de la nueva Serie S te ofrece una tecnología cámara premium, con 200MP de resolución. Con Quad Zoom, solo disponible en Galaxy S24 Ultra, será como si llevaras un completo kit de lentes en el bolsillo. Y es que podrás tomar fotos y vídeos con hasta 4 niveles de zoom sin perder calidad.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 38 AND title = 'Eleva tu experiencia de fotografía'
);

INSERT INTO description_section(product_id, title, description)
SELECT 38,
'El chip más potente jamás visto en un Galaxy',
'Si algo hay que remarcar de este modelo de la Serie S24 es su procesador. El Snapdragon 8 Gen 3 de 4nm te ofrece el máximo rendimiento sin comprometer la eficiencia. Su sistema de refrigeración es un 90% más grande, lo que reduce la temperatura y te garantiza una experiencia premium.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 38 AND title = 'El chip más potente jamás visto en un Galaxy'
);

INSERT INTO description_section(product_id, title, description)
SELECT 39,
'Cámara triple de 200 MP con OIS',
'Captura la grandeza de todo tu mundo con el sistema de cámara triple del Redmi Note 13 Pro, que incluye una increíble cámara principal de 200 MP con Estabilización Óptica de la Imagen. Además, con las cámaras dedicadas ultra gran angular y macro, tendrás aún más formas de ver y capturar el entorno.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 39 AND title = 'Cámara triple de 200 MP con OIS'
);

INSERT INTO description_section(product_id, title, description)
SELECT 39,
'Pantalla AMOLED de 120 Hz',
'Con una tasa de refresco de 120 Hz, el Redmi Note 13 Pro es suave como la seda y muy agradable de usar para todo, incluido desplazarse por las redes sociales y navegar por Internet. Disfruta de colores vivos y vibrantes, un contraste nítido y un brillo impresionante. Reduce la fatiga visual con la atenuación PWM de 1920 Hz y tres certificaciones independientes de TÜV Rheinland.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 39 AND title = 'Pantalla AMOLED de 120 Hz'
);

INSERT INTO description_section(product_id, title, description)
SELECT 39,
'IP54',
'Con una clasificación IP54, Redmi Note 13 Pro 5G está bien equipado con protección contra salpicaduras y polvo. Además, la pantalla del Redmi Note 13 Pro 5G se ha optimizado para mejorar el reconocimiento y el control táctil, evitando disparos accidentales con el agua.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 39 AND title = 'IP54'
);

INSERT INTO description_section(product_id, title, description)
SELECT 40,
'Una pantalla con mucho estilo',
'Con una cubierta trasera brillante, Galaxy A35 exhibe una estética elegante y refinada. Su pantalla Super AMOLED FHD+ de 6,6” ofrece una tasa de refresco de 120 Hz, lo que garantiza una experiencia visual fluida y envolvente al disfrutar de tus series y películas favoritas. Con colores vivos y una calidad de imagen excepcional, te sumergirás por completo en la acción.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 40 AND title = 'Una pantalla con mucho estilo'
);

INSERT INTO description_section(product_id, title, description)
SELECT 40,
'Rendimiento digno de mención',
'¡Galaxy A35 es la solución perfecta si estás preocupado por la velocidad de tu smartphone! Con su avanzado procesador Octa-Core integrado, este dispositivo proporciona la potencia necesaria para ejecutar aplicaciones de manera rápida, fluida y cómoda, sin limitaciones. Es prácticamente como llevar un ordenador en la palma de la mano.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 40 AND title = 'Rendimiento digno de mención'
);

INSERT INTO description_section(product_id, title, description)
SELECT 40,
'Fotografía como un profesional',
'Conviértete en un maestro de la fotografía con el amplio conjunto de lentes del Galaxy A35 y disfruta capturando paisajes impresionantes, selfies divertidos y momentos inolvidables con una calidad excepcional. Al tener múltiples opciones disponibles, las oportunidades se multiplican: desde la cámara principal de 50 MP con estabilización óptica de imagen, hasta la cámara gran angular de 8 MP, la cámara macro de 5 MP y la cámara frontal de 13 MP.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 40 AND title = 'Fotografía como un profesional'
);

INSERT INTO description_section(product_id, title, description)
SELECT 40,
'Almacenamiento destacable',
'Despídete de tener que borrar tus imágenes y videos para liberar espacio en tu teléfono móvil. Con Galaxy A35, se acabaron las preocupaciones por la memoria. Equipado con 6 GB de RAM y 128 GB de almacenamiento interno, este dispositivo te permite guardar todos tus documentos personales en un solo lugar. ¿Necesitas aún más espacio? Podrás expandir la capacidad con una tarjeta MicroSD de hasta 1 TB.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 40 AND title = 'Almacenamiento destacable'
);

INSERT INTO description_section(product_id, title, description)
SELECT 42,
'Diseño de pantalla curvo',
'Los monitores de sobremesa ofrecen una experiencia de usuario personal, que se adapta a los diseños curvos. La pantalla curva proporciona un agradable pero sutil efecto de inmersión, para que tú seas el único centro de atención en el escritorio.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 42 AND title = 'Diseño de pantalla curvo'
);

INSERT INTO description_section(product_id, title, description)
SELECT 42,
'Frecuencias de actualización de 165 Hz',
'Si lo tuyo son los juegos intensos y competitivos, querrás una pantalla sin retardo y con imágenes ultrafluidas. Esta pantalla de Philips actualiza la imagen de la pantalla hasta 165 veces por segundo, mucho más rápido que una pantalla estándar. Una frecuencia de actualización inferior puede hacer que los enemigos parezcan saltar de una zona a otra de la pantalla, lo que los convierte en objetivos difíciles de alcanzar. Con la frecuencia de actualización de 165 Hz , disfrutarás de esas imágenes fundamentales que faltan en la pantalla y que muestran el movimiento de los enemigos con una extrema fluidez, para que puedas apuntarles fácilmente.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 42 AND title = 'Frecuencias de actualización de 165 Hz'
);

INSERT INTO description_section(product_id, title, description)
SELECT 42,
'Respuesta rápida (MPRT) de 1 ms para una imagen nítida y juegos fluidos',
'El tiempo de respuesta de la imagen en movimiento (MPRT) es la forma más intuitiva de describir el tiempo de respuesta, que hace referencia directa a la duración entre la visualización de ruido de borrosidad a la de imágenes limpias y nítidas. El monitor para juegos de Philips con MPRT de 1 ms elimina de forma eficaz el movimiento de imagen y el movimiento borroso , ofreciendo un aspecto visual más nítido y preciso para mejorar la experiencia de juego. Es la mejor elección para disfrutar de emocionantes juegos en los que prima la velocidad.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 42 AND title = 'Respuesta rápida (MPRT) de 1 ms para una imagen nítida y juegos fluidos'
);

INSERT INTO description_section(product_id, title, description)
SELECT 43,
'Formato 21:9',
'Amplía un 32% más tu superficie útil gracias al formato 21:9 UltraWide™.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 43 AND title = 'Formato 21:9'
);

INSERT INTO description_section(product_id, title, description)
SELECT 43,
'Tecnología Super Resolution+',
'Amplía contenidos en la pantalla, sin que pierdan resolución ni nitidez, gracias a la tecnología Super Resolution+.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 43 AND title = 'Tecnología Super Resolution+'
);

INSERT INTO description_section(product_id, title, description)
SELECT 43,
'Tecnología AMD FreeSync™',
'Para disfrutar de toda la acción sin parpadeos.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 43 AND title = 'Tecnología AMD FreeSync™'
);

INSERT INTO description_section(product_id, title, description)
SELECT 43,
'USB Tipo-C',
'Compatible con todas las marcas y con 94W de potencia de carga.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 43 AND title = 'USB Tipo-C'
);

INSERT INTO description_section(product_id, title, description)
SELECT 43,
'Estabilizador de Negros',
'Permite colores oscuros más diferenciados.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 43 AND title = 'Estabilizador de Negros'
);

INSERT INTO description_section(product_id, title, description)
SELECT 44,
'Resolución UHD',
'Descubre cada detalle con la máxima claridad. Con una densidad de píxeles 4 veces superior al FHD, verás los juegos como nunca antes.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 44 AND title = 'Resolución UHD'
);

INSERT INTO description_section(product_id, title, description)
SELECT 44,
'Panel IPS',
'El monitor Odyssey G7 ofrece colores claros y un amplio ángulo de visión de 178º para mayor claridad desde cualquier punto de vista. Con más píxeles y mayor profundidad, los juegos están más cerca que nunca de la realidad.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 44 AND title = 'Panel IPS'
);

INSERT INTO description_section(product_id, title, description)
SELECT 44,
'Pantalla HDR 400',
'Más contraste con negros más profundos y blancos más brillantes para ayudarte a descubrir enemigos o secretos que acechan en las sombras.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 44 AND title = 'Pantalla HDR 400'
);

INSERT INTO description_section(product_id, title, description)
SELECT 44,
'Tiempo de respuesta rápido en 4K',
'Identifica enemigos con precisión de élite con un tiempo de respuesta de 1 ms, movimientos precisos del ratón y fotogramas sin desenfoque, con imágenes fantasma minimizadas.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 44 AND title = 'Tiempo de respuesta rápido en 4K'
);

INSERT INTO description_section(product_id, title, description)
SELECT 44,
'Samsung Gaming Hub',
'Samsung Gaming Hub permite el acceso instantáneo a los mejores servicios de juego en la nube, tus consolas favoritas y PC. La fluidez de la respuesta y de las imágenes están impulsadas por avanzada tecnología de streaming, sin descargas ni límites de almacenamiento.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 44 AND title = 'Samsung Gaming Hub'
);

INSERT INTO description_section(product_id, title, description)
SELECT 44,
'Smart TV Experience',
'Ponte al día con el contenido en streaming que no puedes perderte. Está disponible en 4K HDR, solo con una simple conexión Wi-Fi. Samsung TV Plus ofrece contenido en vivo gratuito sin descargas ni registros, así como recomendaciones de contenido personalizado de Universal Guide.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 44 AND title = 'Smart TV Experience'
);

INSERT INTO description_section(product_id, title, description)
SELECT 46,
'Pantalla de gran amplitud',
'Con unas dimensiones de 68,6 cm ideal para disfrutar jugando, este monitor FHD ofrece magníficos resultados combinados con el estilo más cuidado, e incorpora tecnología IPS para ángulos de visionado de máxima amplitud de 178 grados, cobertura del espacio de color sRGB del 99% para la máxima fidelidad cromática y Freesync para que tus ojos y tu imaginación trabajen a la misma velocidad. Pantalla de 1080p con una calidad inolvidable e imágenes brillantes en una impresionante pantalla Full HD. Optimización sin fisuras optimiza tu configuración gracias a un perfil fino, una innovadora reducción de cables y un impecable diseño para trabajar con monitores contiguos.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 46 AND title = 'Pantalla de gran amplitud'
);

INSERT INTO description_section(product_id, title, description)
SELECT 46,
'Tecnología Eyesafe',
'Mayor comodidad de visionado gracias a la tecnología Eyesafe, que no compromete la calidad cromática. Monitor fabricado con conciencia medioambiental, con un 85% de materiales reciclados y empaquetado también con materiales reciclados. La combinación perfecta entre sostenibilidad y estilo.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 46 AND title = 'Tecnología Eyesafe'
);

INSERT INTO description_section(product_id, title, description)
SELECT 46,
'Fabricado respetando el Medio Ambiente',
'Basado en un análisis interno de HP. El monitor, fabricado en un 85% con plástico reciclado posconsumo, contiene un 5 % —calculado según el peso— de material plástico procedente de los océanos. El 100% del embalaje amortiguado externo en caja/cartón corrugado está elaborado a partir de fibras de origen sostenible certificadas y recicladas. Almohadillas de fibra elaboradas con un 100% de fibra de madera reciclada y material orgánico. Quedan excluidas las bolsas de plástico y el laminado de plástico.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 46 AND title = 'Fabricado respetando el Medio Ambiente'
);

INSERT INTO description_section(product_id, title, description)
SELECT 46,
'Detalles que marcan la diferencia',
'Este monitor FHD ofrece magníficos resultados combinados con el estilo más cuidado posible, e incorpora tecnología IPS para un perfecto visionado de máxima amplitud de 178 grados, cobertura del espacio de color sRGB del 99 % para la máxima fidelidad cromática y Freesync para que tus ojos y tu imaginación trabajen a la misma velocidad. La tecnología IPS te ofrece vistas claras desde casi cualquier ángulo. '
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 46 AND title = 'Detalles que marcan la diferencia'
);

INSERT INTO description_section(product_id, title, description)
SELECT 47,
'Llega más lejos',
'Sumérgete mejor en tu juego y concentrarte en tu contenido gracias al monitor gaming curvo G5 LC34G55TWWPXEN de Samsung de 34 pulgadas. Con una resolución de pantalla de 3440x1440 píxeles, el G5 ofrece imágenes nítidas. Toma el control de tu juego con movimiento épicos.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 47 AND title = 'Llega más lejos'
);

INSERT INTO description_section(product_id, title, description)
SELECT 47,
'Curva 1000R',
'El radio de curvatura del G5 con 1000R corresponde exactamente al del ojo humano y te catapulta directamente a la acción. Esto te permite sumergirte aún mejor en tu juego y concentrarte en tu contenido.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 47 AND title = 'Curva 1000R'
);

INSERT INTO description_section(product_id, title, description)
SELECT 47,
'Resolución Ultra WQHD',
'Con una resolución de pantalla de 3440x1440 píxeles, que es aproximadamente 2,4 veces la densidad de un Full HD, el G5 ofrece imágenes nítidas. Y con más píxeles, puede ver más páginas web y documentos a la vez sin tener que desplazarse o acercarse.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 47 AND title = 'Resolución Ultra WQHD'
);

INSERT INTO description_section(product_id, title, description)
SELECT 47,
'Siempre un paso adelante de tu enemigo',
'Con la frecuencia de actualización de 165Hz, disfrutará de juegos fluidos sin tartamudeo ni desenfoque de movimiento. Para que puedas desarrollar todo tu potencial.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 47 AND title = 'Siempre un paso adelante de tu enemigo'
);

INSERT INTO description_section(product_id, title, description)
SELECT 47,
'AMD FreeSync Premium',
'Las tecnologías AMD FreeSync Premium y Adaptive Sync reducen la distorsión de la imagen, el tartamudeo y el retraso de entrada para que siempre tengas una experiencia de juego fluida.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 47 AND title = 'AMD FreeSync Premium'
);

INSERT INTO description_section(product_id, title, description)
SELECT 47,
'Gráficos HDR verdaderamente realistas',
'Gráficos impactantes con HDR10. Descubre todos los secretos que se esconden en las sombras del juego con negros oscuros profundos, blancos luminosos y una resolución increíblemente detallada.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 47 AND title = 'Gráficos HDR verdaderamente realistas'
);

INSERT INTO description_section(product_id, title, description)
SELECT 48,
'Tamaño de pantalla',
'El monitor Acer Nitro KG241YM3 presenta una pantalla de 23.8 pulgadas, lo que proporciona un amplio espacio de visualización y una experiencia inmersiva.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 48 AND title = 'Tamaño de pantalla'
);

INSERT INTO description_section(product_id, title, description)
SELECT 48,
'Frecuencia de actualización',
'El monitor Acer Nitro KG241YM3 tiene una frecuencia de actualización de 180 Hz, podrás ver el siguiente fotograma rápidamente y hacer que las imágenes sean más impecables. Podrás responder rápidamente a los adversarios y apuntar a los objetivos fácilmente.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 48 AND title = 'Frecuencia de actualización'
);

INSERT INTO description_section(product_id, title, description)
SELECT 48,
'Tiempo de respuesta',
'El Acer Nitro KG241YM3 tiene tiempo de respuesta de 1 milisegundo (ms) para reducir el desenfoque de movimiento en escenas rápidas y mejorar la experiencia de juego.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 48 AND title = 'Tiempo de respuesta'
);

INSERT INTO description_section(product_id, title, description)
SELECT 48,
'Monitor 100% ergonómico',
'Con inclinación de -5°a 35°para permitir una posición de visualización más cómoda y adaptarse a tus preferencias.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 48 AND title = 'Monitor 100% ergonómico'
);

INSERT INTO description_section(product_id, title, description)
SELECT 48,
'Tecnología de sincronización',
'AMD FreeSync Premium adapta la velocidad de fotogramas del monitor a la tarjeta gráfica, garantiza un mínimo de 120 Hz en FHD y velocidades de fotogramas mínimas (LFC). Si la velocidad de fotogramas cae por debajo del mínimo admitido de la pantalla, LFC garantiza que este mínimo de la pantalla esté garantizado y que el juego se mantenga fluido.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 48 AND title = 'Tecnología de sincronización'
);

INSERT INTO description_section(product_id, title, description)
SELECT 49,
'Llega más lejos',
'Las escenas cobrarán vida con el monitor gaming Samsung Odyssey G3 LS24AG320NUXEN de 24 pulgadas. Con el monitor gaming Samsung Odyssey G3 salta sobre los enemigos tan pronto como los veas y mantente al frente con movimientos precisos de tu ratón.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 49 AND title = 'Llega más lejos'
);

INSERT INTO description_section(product_id, title, description)
SELECT 49,
'Reacción en tiempo real',
'Con la frecuencia de actualización de 165Hz, disfrutará de juegos fluidos sin retardos ni desenfoques de movimiento. Para que puedas desarrollar todo tu potencial.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 49 AND title = 'Reacción en tiempo real'
);

INSERT INTO description_section(product_id, title, description)
SELECT 49,
'1ms de tiempo de respuesta',
'Los píxeles de la pantalla cambian de color con una respuesta casi instantánea de un 1ms, lo que permite que la acción trepidante fluya con la misma precisión que en el mundo real.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 49 AND title = '1ms de tiempo de respuesta'
);

INSERT INTO description_section(product_id, title, description)
SELECT 49,
'AMD FreeSync Premium',
'Que nada detenga tu partida. AMD FreeSync Premium ofrece tecnología de sincronización adaptada para disminuir cortes, ralentizaciones y la latencia de entrada. Una velocidad inferior de fotogramas garantiza que cada escena fluya sin problemas.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 49 AND title = 'AMD FreeSync Premium'
);

INSERT INTO description_section(product_id, title, description)
SELECT 49,
'Modo Eye Saver y Flicker Free',
'Juega aún más tiempo. El modo Eye Saver minimiza la luz azul lo suficiente para mantener los ojos relajados y cómodos cuando se juega durante periodos prolongados. La tecnología Flicker Free elimina continuamente los molestos parpadeos de la pantalla para que puedas concentrarte durante más tiempo con menos distracciones o fatiga visual.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 49 AND title = 'Modo Eye Saver y Flicker Free'
);

INSERT INTO description_section(product_id, title, description)
SELECT 50,
'La nueva definición de alta definición',
'Este monitor de 23.8" incorpora tecnología IPS, cobertura del espacio de color sRGB del 99 %, una frecuencia de actualización de 75 Hz y AMD FreeSync™ para que las imágenes desfilen ante ti a la velocidad de tu imaginación'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 50 AND title = 'La nueva definición de alta definición'
);

INSERT INTO description_section(product_id, title, description)
SELECT 50,
'Excelentes resultados',
'Excelente en el plano visual Evita la fatiga ocular durante todo el día gracias a HP Eye Ease con tecnología con certificación Eyesafe® y evita que la calidad cromática se vea comprometida'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 50 AND title = 'Excelentes resultados'
);

INSERT INTO description_section(product_id, title, description)
SELECT 50,
'No creerás lo que ves; tampoco lo que oyes',
'Este monitor te ofrece no solo excelente calidad visual, sino también de sonido, gracias a su audio integrado. Trabaja o juega disfrutando de una experiencia completa y de nivel superior. Además, podrás optimizar el espacio del que dispones gracias a su fino perfil, su diseño moderno y su innovadora gestión del cableado'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 50 AND title = 'No creerás lo que ves; tampoco lo que oyes'
);

INSERT INTO description_section(product_id, title, description)
SELECT 50,
'Calidad visual con conciencia medioambiental',
'Monitor fabricado con conciencia medioambiental, con un 85 % de plástico reciclado posconsumo y empaquetado también con materiales reciclados . La combinación perfecta entre sostenibilidad y calidad visual.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 50 AND title = 'Calidad visual con conciencia medioambiental'
);

INSERT INTO description_section(product_id, title, description)
SELECT 52,
'Pantalla IPS Full HD. Color Verdadero desde cualquier ángulo',
'La tecnología IPS destaca el rendimiento de las pantallas de cristal líquido. Los tiempos de respuesta se acortan, se mejora la reproducción del color y los usuarios pueden ver la pantalla prácticamente desde cualquier ángulo.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 52 AND title = 'Pantalla IPS Full HD. Color Verdadero desde cualquier ángulo'
);

INSERT INTO description_section(product_id, title, description)
SELECT 52,
'Menos azul, mayor comodidad visual',
'Al reducir la luz azul para ayudar a disminuir la fatiga ocular, el Modo Lector proporciona una condición óptima para la lectura. Con solo unos pocos movimientos de control de joystick, puede leer más cómodamente la pantalla de su monitor.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 52 AND title = 'Menos azul, mayor comodidad visual'
);

INSERT INTO description_section(product_id, title, description)
SELECT 52,
'Imagen más clara y suave',
'Con la tecnología Radeon FreeSync™, los jugadores pueden experimentar sin problema movimiento fluido en juegos de alta resolución y ritmo rápido. Radeon FreeSync ™ prácticamente elimina el desgarro y el tartamudeo de la pantalla.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 52 AND title = 'Imagen más clara y suave'
);

INSERT INTO description_section(product_id, title, description)
SELECT 52,
'Reacciona más rápido a los oponentes',
'Minimiza el input lag con Dynamic Action Sync para que los jugadores puedan ver cada momento en tiempo real.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 52 AND title = 'Reacciona más rápido a los oponentes'
);

INSERT INTO description_section(product_id, title, description)
SELECT 52,
'Interfaz de usuario más fácil',
'Puedes personalizar el espacio de trabajo dividiendo la pantalla o ajustando las opciones básicas del monitor con solo unos pocos clics del mouse.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 52 AND title = 'Interfaz de usuario más fácil'
);

INSERT INTO description_section(product_id, title, description)
SELECT 54,
'WebOS 23: nueva home: Descubre lo que te espera',
'Con WebOS 23, podrás explorar y disfrutar de todos tus contenidos favoritos como Netflix, Prime Video, Disney+, YouTube, Spotify, Twitch, Apple TV, RTVE Play, OrangeTV, MiTele y muchos más. Además, puedes obtener recomendaciones personalizadas, desde el contenido hasta la música y disfruta de aplicaciones incorporadas como deportes, juegos y LG Fitness.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 54 AND title = 'WebOS 23: nueva home: Descubre lo que te espera'
);

INSERT INTO description_section(product_id, title, description)
SELECT 54,
'Pantalla UHD 4K IP de 31.5 pulgadas: Gran pantalla tanto para el trabajo como para el entretenimiento',
'La pantalla IPS de 4K UHD (3840x2160), con una cobertura de hasta el 95% del espacio de color DCI-P3, reproduce imágenes nítidas y colores precisos desde ángulos amplios. Esto te permite experimentar una gran inmersión visual, ya sea disfrutando de entretenimiento o realizando tareas de trabajo.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 54 AND title = 'Pantalla UHD 4K IP de 31.5 pulgadas: Gran pantalla tanto para el trabajo como para el entretenimiento'
);

INSERT INTO description_section(product_id, title, description)
SELECT 54,
'IA concierge: Escuchando tus gustos',
'Para activar el asistente personal AI Concierge simplemente presiona el botón del mando Magic remote y recibirás recomendaciones basadas en tus preferencias en cualquier momento.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 54 AND title = 'IA concierge: Escuchando tus gustos'
);

INSERT INTO description_section(product_id, title, description)
SELECT 54,
'Panel de control de ThinQ: Controla fácilmente tus electrodomésticos LG',
'El panel de control de Thinq te hace la vida más fácil. Puedes verificar y controlar el estado de tus electrodomésticos LG en una sola pantalla con el mando a distancia.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 54 AND title = 'Panel de control de ThinQ: Controla fácilmente tus electrodomésticos LG'
);

INSERT INTO description_section(product_id, title, description)
SELECT 54,
'AirPlay 2 + Screen Share + Bluetooth: Refleja directamente de sus dispositivos',
'Comparte fácilmente el contenido de tu dispositivo inteligente a tu monitor con AirPlay 2 (para dispositivos Apple) o Screen share (para dispositivos Android). También disfruta de una buena calidad de sonido con Bluetooth.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 54 AND title = 'AirPlay 2 + Screen Share + Bluetooth: Refleja directamente de sus dispositivos'
);

INSERT INTO description_section(product_id, title, description)
SELECT 55,
'Diseñado para la máxima velocidad',
'Con IPS 1ms comparable a la velocidad TN, te ofrece menor imagen residual y un tiempo de respuesta rápido, disfrutarás de un rendimiento del juego totalmente nuevo.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 55 AND title = 'Diseñado para la máxima velocidad'
);

INSERT INTO description_section(product_id, title, description)
SELECT 55,
'Cuando juegas a 144Hz y 1ms cambia la historia',
'Con una tasa de actualización de 144 Hz, podrás ver el siguiente fotograma rápidamente y hacer que las imágenes sean más impecables. Podrás responder rápidamente a los adversarios y apuntar a los objetivos fácilmente.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 55 AND title = 'Cuando juegas a 144Hz y 1ms cambia la historia'
);

INSERT INTO description_section(product_id, title, description)
SELECT 55,
'Sumérgete en el combate real con True Colors',
'Este monitor es compatible con HDR10 con sRGB 99 % (Typ.), lo que permite una inmersión visual realista con colores y contraste más ricos. Independientemente del campo de batalla, te ayudará a ver todos los colores impresionantes tal y como los pensaron los desarrolladores de los juegos.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 55 AND title = 'Sumérgete en el combate real con True Colors'
);

INSERT INTO description_section(product_id, title, description)
SELECT 55,
'Más nítido, más fluido y más rápido',
'Con la tecnología FreeSync™ Premium, podrás experimentar un movimiento fluido y perfecto en los juegos de alta resolución y ritmo rápido. Reduce prácticamente los cuadros interrumpidos y la fragmentación de la imagen.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 55 AND title = 'Más nítido, más fluido y más rápido'
);

INSERT INTO description_section(product_id, title, description)
SELECT 55,
'Ambiente Gaming Impresionante',
'Mejora tu experiencia de juego con un diseño atractivo y prácticamente sin bordes. La base se puede ajustar para modificar la inclinación del monitor, para que puedas jugar más cómodamente.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 55 AND title = 'Ambiente Gaming Impresionante'
);

INSERT INTO description_section(product_id, title, description)
SELECT 56,
'Frecuencia de actualización de 75 Hz',
'Disfruta de unos vídeos fluidos y realistas, así como de unos detalles claros, gracias a la frecuencia de actualización de 75 Hz que proporciona un movimiento fluido de fotograma a fotograma.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 56 AND title = 'Frecuencia de actualización de 75 Hz'
);

INSERT INTO description_section(product_id, title, description)
SELECT 56,
'Panel IPS',
'Independientemente de dónde te encuentres, la tecnología IPS garantiza la precisión y uniformidad de la imagen desde amplios ángulos de visión horizontales y verticales de 178 grados.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 56 AND title = 'Panel IPS'
);

INSERT INTO description_section(product_id, title, description)
SELECT 56,
'AMD FreeSync™',
'La tecnología AMD FreeSync™ proporciona fluidez y una visualización perfecta de los vídeos al reducir la latencia de entrada, el rasgado de pantalla y la intermitencia.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 56 AND title = 'AMD FreeSync™'
);

INSERT INTO description_section(product_id, title, description)
SELECT 56,
'Modo de luz azul baja',
'Mantén tu vista descansada gracias a los colores sutilmente más cálidos de la pantalla.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 56 AND title = 'Modo de luz azul baja'
);

INSERT INTO description_section(product_id, title, description)
SELECT 57,
'Descubre el monitor HDR UHD 4K',
'Este monitor, compatible con HDR10, representa todos los detalles en las partes brillantes y oscuras del contenido de alto rango dinámico.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 57 AND title = 'Descubre el monitor HDR UHD 4K'
);

INSERT INTO description_section(product_id, title, description)
SELECT 56,
'Colores auténticos y visión más amplia',
'La pantalla IPS de LG tiene una precisión de color extraordinaria; cubre el 98 % del espectro de color sRGB. Asimismo, el ángulo de visualización también es más amplio para que puedas disfrutar más fácilmente de imágenes con colores auténticos.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 57 AND title = 'Colores auténticos y visión más amplia'
);

INSERT INTO description_section(product_id, title, description)
SELECT 57,
'Calibración del color',
'El color se ha calibrado para que sea más preciso en la pantalla y evitar así los cambios graduales; de esta manera se conserva el color previsto originalmente.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 57 AND title = 'Calibración del color'
);

INSERT INTO description_section(product_id, title, description)
SELECT 57,
'Imagen más suave y nítida',
'La función Radeon FreeSync™ reduce la fragmentación y la interrupción de la imagen que se producen entre la velocidad de imagen de la tarjeta gráfica y la frecuencia de actualización del monitor, lo que permite que el movimiento sea más suave y con menos interrupciones en los juegos exigentes.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 57 AND title = 'Imagen más suave y nítida'
);

INSERT INTO description_section(product_id, title, description)
SELECT 57,
'Modos personalizados para cualquier juego',
'Los usuarios pueden elegir entre el modo FPS y el modo RTS, y personalizarlo. Los ajustes se pueden modificar y personalizar para cualquier tipo de juego.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 57 AND title = 'Modos personalizados para cualquier juego'
);

INSERT INTO description_section(product_id, title, description)
SELECT 60,
'Amplio ángulo de visión',
'La tecnología IPS está optimizada para obtener la mejor calidad de imagen con un ángulo de visión amplio de 178°. Soporte de diseño ergonómico con ajustes de inclinación, giro, pivote y altura.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 60 AND title = 'Amplio ángulo de visión'
);

INSERT INTO description_section(product_id, title, description)
SELECT 60,
'Compatible con VESA',
'Diseño de panel sin marco para una configuración ideal de múltiples pantallas. Compatible con el estándar de montaje en pared VESA (100 x 100 mm).'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 60 AND title = 'Compatible con VESA'
);

INSERT INTO description_section(product_id, title, description)
SELECT 60,
'ASUS Flicker-Free',
'La tecnología ASUS Flicker-Free elimina el parpadeo que distrae y brinda comodidad de visualización.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 60 AND title = 'ASUS Flicker-Free'
);

INSERT INTO description_section(product_id, title, description)
SELECT 60,
'Reduce el estrés ocular',
'Cuatro niveles de filtro de luz azul que ayudan a los usuarios a reducir eficazmente la luz azul dañina que provoca fatiga ocular.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_section WHERE product_id = 60 AND title = 'Reduce el estrés ocular'
);