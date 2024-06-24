INSERT INTO description_list(product_id, title, description)
SELECT 11,
'Características',
'La potencia hecha chip. Ya está aquí. Nuestro primer chip diseñado específicamente para el Mac. El M1 de Apple es un sistema en chip (SoC) que reúne 16.000 millones de transistores e integra la CPU, la GPU, el Neural Engine, E/S y mucho más en un diseño minúsculo. Con un rendimiento top, tecnologías a medida y la mayor eficiencia del sector, el M1 no solo es un nuevo paso para el Mac. Es un antes y un después en su historia.//Ávida de trabajo. No de batería. El chip M1 lleva la CPU más rápida que hemos desarrollado. Con semejante potencia en la recámara, el MacBook Air pisa a fondo al realizar procesos tan exigentes como editar vídeo con calidad profesional o echar partidas épicas. Y eso es solo el principio, porque además de multiplicar por hasta 3,5 la velocidad de la generación anterior,2 la CPU de ocho núcleos del chip M1 equilibra los núcleos de alto rendimiento y los de eficiencia, que se ocupan de las tareas cotidianas, para consumir solo una décima parte de la energía. Ahí es nada.//La potencia de macOS Big Sur con el chip M1. macOS Big Sur se ha desarrollado para aprovechar el potencial del chip M1 y transformar el Mac. ¿El resultado? Un rendimiento superior, mejoras en las apps, un nuevo diseño espectacular y prestaciones de privacidad y seguridad líderes del sector. Es nuestro software más potente, y está a la altura de nuestro hardware más avanzado.//Colores tan reales que no te lo crees. La resolución de 2.560 por 1.600 píxeles de la pantalla Retina de 13,3 pulgadas ofrece un nivel de detalle y realismo asombroso. El texto se ve con la máxima claridad, los colores brillan con luz propia y el vidrio llega hasta el borde de la carcasa para que nada te distraiga.//Tecnología True Tone. Disfruta las vistas. Descansa los ojos. El MacBook Air sabe ajustar de forma automática el punto blanco de la pantalla según la temperatura del color ambiental, así resulta más cómodo mirarla.//Cámara y micrófonos Saca tu mejor tú. El chip M1 lleva nuestro procesador de señal de imagen más avanzado para que siempre salgas estupendamente en tus videollamadas de FaceTime. A los tres micros integrados no se les escapa nada, ya estés en una llamada, dictando una nota o preguntándole a Siri qué tiempo hace.//Un teclado con mayúsculas. Disfruta de una comodidad absoluta de la A a la Z. Además de escribir a tus anchas, con los atajos preprogramados de este teclado puedes acceder al instante a las prestaciones que más usas. Habla con Siri, cambia el idioma del teclado, responde con el emoji perfecto, encuentra documentos con Spotlight… Ni te imaginas todo lo que puedes hacer con un toque. Y la retroiluminación con sensor de luz ambiental te permite escribir incluso cuando estás medio a oscuras.//Touch ID. Un solo toque basta para bloquear y desbloquear el MacBook Air. Tu huella sirve para alquilar una peli, comprar una app o acceder a documentos protegidos y a los ajustes del sistema sin teclear la contraseña. Y cuando usas Apple Pay para comprar online, Touch ID añade tu dirección y datos de facturación sin compartir el número de tu tarjeta de crédito.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_list WHERE product_id = 11 AND title = 'Características'
);

INSERT INTO description_list(product_id, title, description)
SELECT 12,
'Características',
'Una de las ventajas que te ofrece Galaxy Book4 Pro y Galaxy Book4 Pro 360 es Vision Booster. Una funcionalidad que detecta automáticamente la cantidad de luz solar y ajusta el contraste y color de la pantalla. Así, podrás disfrutar de todo tipo de contenido sin importar las condiciones de luz del ambiente.//Hasta 17 horas de autonomía para que, vayas donde vayas, nada te pare//El conector MagSafe 3 se acopla al instante y carga tu MacBook Pro a toda pastilla//El Magic Keyboard con Touch ID ofrece autenticación sencilla, rápida y segura para iniciar sesión y comprar//Con macOS Monterey y sus nuevas prestaciones de rendimiento, puedes trabajar, crear y colaborar como nunca en tu Mac'
WHERE NOT EXISTS (
    SELECT 1 FROM description_list WHERE product_id = 12 AND title = 'Características'
);

INSERT INTO description_list(product_id, title, description)
SELECT 15,
'Características',
'Hazlo todo con estilo, rendimiento y velocidad: Ahora hasta un 70% más rápido que antes con una batería que dura significativamente más que ofrece hasta 19 horas de autonomía en el dispositivo de 13,5" con el procesador AMD Ryzen™ 5 Microsoft Surface® Edition. Destaca durante las videollamadas HD, captura ideas en la pantalla táctil de PixelSense™ y disfruta del audio envolvente de Dolby Atmos.//Moderno, elegante y silencioso: Abre el dispositivo fácilmente con un dedo y disfruta de una productividad sin interrupciones en la pantalla táctil PixelSense™ gracias a la refrigeración ultra silenciosa. Personalízalo con la opción de dos tamaños y acabados de teclado, Alcantara® cálido o metálico moderno.//Rendimiento para multitarea, videollamadas y entretenimiento: Aprovecha al máximo tu día con más potencia multitarea y hasta un 70% más de velocidad que antes, pon tu mejor cara y voz durante las videollamadas y disfruta de audio envolvente Dolby Atmos® para películas,5 todo ello respaldado por un potente poder de procesamiento.//Comodidad, conveniencia y todas las conexiones que necesites: Aprovecha al máximo tu creatividad gracias a la batería que dura todo el día,1 carga rápida y una comodidad excepcional de escritura. Conéctate fácilmente con los puertos USB-C® y USB-A.//Poder para hacer lo que quieras: Ejecuta Microsoft 365 y apps de creatividad.* Protege tus archivos y fotos en la nube con OneDrive. Disfruta de una navegación rápida con Microsoft Edge. Mira una película o disfruta de tu juego favorito.//Dos procesadores increíbles, rendimiento de portátil excepcional: Diseñamos Surface Laptop 4 con procesadores Intel® Core™ de 11.ª generación y AMD Ryzen™ Microsoft Surface® Edition personalizados para ofrecer un rendimiento de portátil excepcional, fluidez entre pestañas de navegador y velocidad rápida para multitarea entre todas tus apps.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_list WHERE product_id = 15 AND title = 'Características'
);

INSERT INTO description_list(product_id, title, description)
SELECT 17,
'Características',
'Rendimiento profesional. El portátil Lenovo ThinkPad L15 Gen 4 inspira productividad. Equipado con procesadores Intel vPro® con Intel® Core™ serie U de 13.ª generación, este dispositivo de 39,62 cm (15,6?) también incorpora excelentes opciones de tarjetas gráficas. Además, gracias a las baterías más grandes opcionales, disfrutarás de autonomía todo el día con este compañero que te ofrece el máximo rendimiento y con el que podrás trabajar desde cualquier lugar.//No pierdas la conexión, no importa dónde ni cuándo. Al igual que un smartphone, el portátil ThinkPad L15 Gen 4 ofrece conectividad WiFi 6 rápida. También cuenta con cancelación de ruido Dolby Voice® basada en IA que, en combinación con la cámara HD, hará que parezca que todos se encuentran en la misma sala durante las videoconferencias.//Diseñado para mejorar la colaboración. La serie L ofrece también procesamiento de imágenes y un marco de visión artificial avanzada que mejora la calidad de la cámara, todo ello a través de Lenovo View 3.0.//Lleva la fiabilidad al siguiente nivel. Usamos los estándares MIL-STD 810H del Departamento de Defensa de EE. UU. para crear un equilibrio entre fiabilidad y durabilidad con nuestros portátiles ThinkPad. Los probamos con 12 estándares y más de 200 pruebas de calidad para asegurarnos de que funcionan en condiciones extremas. Estas pruebas incluyen variables extremas, como la aridez ártica y las tormentas de arena del desierto, como la temperatura, la presión, la humedad y la vibración, entre otros factores.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_list WHERE product_id = 17 AND title = 'Características'
);

INSERT INTO description_list(product_id, title, description)
SELECT 18,
'Características',
'Espectacular pantalla Liquid Retina XDR con rango dinámico extremo y un contraste increíble//Tres puertos Thunderbolt 4, ranura para tarjetas SDXC y puerto HDMI para conectar lo que haga falta//Nueva cámara FaceTime HD a 1080p, sistema de sonido de seis altavoces de alta fidelidad y micrófonos con calidad de estudio para que te vean y oigan en tu mejor versión//Hasta 17 horas de autonomía para que, vayas donde vayas, nada te pare//El conector MagSafe 3 se acopla al instante y carga tu MacBook Pro a toda pastilla//El Magic Keyboard con Touch ID ofrece autenticación sencilla, rápida y segura para iniciar sesión y comprar//Con macOS Monterey y sus nuevas prestaciones de rendimiento, puedes trabajar, crear y colaborar como nunca en tu Mac'
WHERE NOT EXISTS (
    SELECT 1 FROM description_list WHERE product_id = 18 AND title = 'Características'
);

INSERT INTO description_list(product_id, title, description)
SELECT 26,
'Características',
'Pantalla AdaptiveSync de 90 Hz para una experiencia fluida. Con una pantalla FHD + DotDisplay de 6.5 ”con frecuencia de actualización de 90Hz, Redmi Note 10 5G ofrece una hermosa pantalla con un uso más suave.//Cámara trasera triple para una creatividad infinita. ¡Con una cámara trasera triple de 48MP, Redmi Note 10 5G fue creado para crear! Su configuración de triple cámara incluye una cámara principal de 48MP, una cámara macro de 2MP y un sensor de profundidad de 2MP.//Energía todo el día con alta eficiencia. Redmi Note 10 5G promociona una batería masiva de 5,000 mAh (típica) con carga rápida de 18 W, por lo que los usuarios pueden permanecer encendidos durante todo el día, incluso durante períodos de uso intensivo.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_list WHERE product_id = 26 AND title = 'Características'
);

INSERT INTO description_list(product_id, title, description)
SELECT 33,
'Características',
'El nuevo ultra gran angular muestra más detalle en las zonas oscuras de tus fotos.//El nuevo gran angular captura un 47 % más de luz para lograr mejores instantáneas.//•	En el cine se utiliza una técnica que consiste en cambiar el enfoque de manera selectiva para dirigir la atención del público hacia el sujeto protagonista de cada escena. Y ahora con el iPhone puedes usar este mismo recurso narrativo en tus vídeos.//•	El modo Noche detecta los entornos con poca luz y ajusta de forma automática los parámetros para ofrecerte fotos más luminosas con colores intensos.//•	El modo Retrato difumina el fondo y da más protagonismo al sujeto. Puedes ir deslizando entre los seis efectos de iluminación para elegir el que más te llame.//•	El HDR Inteligente 4 ahora detecta hasta cuatro personas distintas en el plano y optimiza el contraste, la iluminación y el tono de piel de forma independiente. Lo mejor de cada casa, pero con mucha mejor cara.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_list WHERE product_id = 33 AND title = 'Características'
);

INSERT INTO description_list(product_id, title, description)
SELECT 41,
'Especificaciones',
'Marca: Lenovo.//Series: G34W-30//Color: Negro//Tamaño del monitor: 34.0"//Resolución máxima: 3440 x 1440 Píxeles//Resolución: UWQHD//Tiempo de respuesta: 4 Milisegundos//Frecuencia de actualización: 165 Hz//Interfaz de hardware: DisplayPort, HDMI//Brillo: 350 cd//Relación de aspecto: 21//Relación de contraste: 2500//Tipo de conexión: 2 HDMI 2.0; 1 DP 1.4; 1 salida de audio (3,5 mm)//Número de modelo del producto: 66F1GAC1EU//Dimensiones del producto: 104,5 mm x 365,8 mm x 809,3 mm; 6.6 kilogramos'
WHERE NOT EXISTS (
    SELECT 1 FROM description_list WHERE product_id = 41 AND title = 'Especificaciones'
);

INSERT INTO description_list(product_id, title, description)
SELECT 45,
'Características',
'Frecuencia de actualización de 100 Hz: responda más rápido con fotogramas más suaves.//Amplia gama de colores: los colores y detalles del juego se verán más realistas y refinados.//Diseño sin marco : disfruta de la mejor experiencia de juego con biseles superestrechos.//Antiparpadeo (Flicker-free) y menos luz azul (Low Blue Light): Trabaje o juegue incluso más tiempo y evite la fatiga visual y la fatiga.//Ángulo de visión amplio de 178°: los colores y los detalles permanecerán nítidos en más ángulos con un ángulo de visión amplio de 178°'
WHERE NOT EXISTS (
    SELECT 1 FROM description_list WHERE product_id = 45 AND title = 'Características'
);

INSERT INTO description_list(product_id, title, description)
SELECT 51,
'Características',
'Diseño minimalista sin bisel//Sincronización adaptativa//Color verdadero en FHD//Luz azul baja'
WHERE NOT EXISTS (
    SELECT 1 FROM description_list WHERE product_id = 51 AND title = 'Características'
);

INSERT INTO description_list(product_id, title, description)
SELECT 53,
'Características',
'Panel IPS: optimice los colores y el brillo de la pantalla para mejorar su experiencia visual.//Frecuencia de actualización de 100 Hz: responda más rápido con fotogramas más suaves.//Amplia gama de colores: los colores y detalles del juego se verán más realistas y refinados.//Diseño sin marco: disfruta de la mejor experiencia de juego con biseles superestrechos.//Antiparpadeo (Flicker-free) y menos luz azul (Low Blue Light): Trabaje o juegue incluso más tiempo y evite la fatiga visual y la fatiga.//Ángulo de visión amplio de 178°: los colores y los detalles permanecerán nítidos en más ángulos con un ángulo de visión amplio de 178°'
WHERE NOT EXISTS (
    SELECT 1 FROM description_list WHERE product_id = 53 AND title = 'Características'
);

INSERT INTO description_list(product_id, title, description)
SELECT 58,
'Características',
'Panel IPS: Optimizado para entornos de trabajo profesionales. Los monitores Samsung de alta resolución incluyen un panel IPS, ofreciendo una calidad de color nítida y un amplio ángulo de visión de 178º.//Mil millones de colores con HDR 10: Disfruta de cualquier contenido con una precisión y detalle de color impresionantes. Con un amplio rango de colores, tonalidades casi ilimitadas y HDR10, que hace que los tonos negros sean más oscuros y los tonos claros más brillantes, cada pieza de contenido se convierte en un placer a la vista.//Maximiza la comodidad, minimiza las distracciones: Coloca tu monitor cómo te sea más cómodo. Su diseño sin bordes, compatibilidad con montaje VESA y una variedad de posiciones de inclinación, giro y pivote te permiten montar tu monitor en cualquier entorno.//Auto Source Switch: Con Automatic Source Switch, el monitor detecta los dispositivos que se acaban de conectar y les muestra la señal correcta. Se acabaron las búsquedas de la entrada correcta en el menú.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_list WHERE product_id = 58 AND title = 'Características'
);

INSERT INTO description_list(product_id, title, description)
SELECT 59,
'Características',
'El único con el que disfrutar de más contenidos en streaming como: RTVE, Mitele, Orange, Netflix, Prime Video, Disney+, Apple TV , YouTube, videojuegos y mucho más. Smart TV WebOS23, más fácil, intuitivo y seguro.//Crea perfiles por usuario y controla todos tus contenidos a través de tus periféricos y/o mando a distancia. Magic Remote opcional. El mando a distancia Magic Remote se vende por separado. Solo compatible con el modelo del mando MR23//Comparte fácilmente contenido o música desde tu dispositivo inteligente con AirPlay 2, Screen Share o Bluetooth.//Colores más vivos y mejor contraste con HDR10. Panel IPS que permite colores constantes a 178º de ángulo de visión.'
WHERE NOT EXISTS (
    SELECT 1 FROM description_list WHERE product_id = 59 AND title = 'Características'
);