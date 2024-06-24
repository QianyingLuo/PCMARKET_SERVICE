INSERT INTO description_dictionary(product_id, title, description)
SELECT 12,
'Especificaciones',
'{"Chip": ["Chip M1 Pro de Apple","CPU de 10 núcleos con 8 núcleos de rendimiento y 2 de eficiencia","GPU de 16 núcleos","Neural Engine de 16 núcleos","200 GB/s de ancho de banda de memoria"],"Motor multimedia": ["Aceleración por hardware para H.264, HEVC, ProRes y ProRes RAW","Motor de decodificación de vídeo","Motor de codificación de vídeo","Motor de codificación y decodificación ProRes"],"Pantalla Liquid Retina XDR": ["Pantalla Liquid Retina XDR de 16,2 pulgadas (41,05 cm) en diagonal;10 resolución nativa de 3.456 por 2.234 a 254 píxeles por pulgada","Hasta 1.000 nits de brillo sostenido (a pantalla completa), 1.600 nits de brillo máximo","Contraste de 1.000.000:1","1.000 millones de colores","Gama cromática amplia (P3)","Tecnología True Tone/Frecuencias de actualización","Tecnología ProMotion con frecuencia de actualización adaptativa de hasta 120 Hz","Frecuencias de actualización fijas: 47,95 Hz, 48 Hz, 50 Hz, 59,94 Hz y 60 Hz"],"Memoria": ["16 GB","16 GB de memoria unificada"]}'
WHERE NOT EXISTS (
    SELECT 1 FROM description_dictionary WHERE product_id = 12 AND title = 'Especificaciones'
);

INSERT INTO description_dictionary(product_id, title, description)
SELECT 15,
'Especificaciones',
'{"Escenarios":["Diseño de nueva generación, con potencia, velocidad y sonido mejorados para disfrutar de una productividad diaria increíble, Microsoft Teams* y videollamadas, Microsoft 365,* streaming de música y series, compras y navegación"], "Dimensiones": ["Surface Laptop 4 13,5 pulgadas: 308 mm x 223 mm x 14,5 mm"], "Pantalla": ["Surface Laptop 4 13,5 pulgadas:","Pantalla: pantalla PixelSense™ de 13,5 pulgadas", "Resolución: 2256 x 1504 (201 ppp)", "Relación de aspecto: 3:2", "Compatible con el Lápiz para Surface*","Función táctil: multitoque de 10 puntos"], "Memoria":["Surface Laptop 4 13,5 pulgadas","RAM LPDDR4x de 8 GB"], "Procesador":["Surface Laptop 4 13,5 pulgadas:", "Procesador Intel® Core™ i5-1135G7 de cuatro núcleos y 11.ª generación"], "Duración de la batería":["Surface Laptop 4 de 13,5 pulgadas con procesador Intel® Core™, hasta 17 horas de autonomía (para uso típico del dispositivo)"]}'
WHERE NOT EXISTS (
    SELECT 1 FROM description_dictionary WHERE product_id = 15 AND title = 'Especificaciones'
);

INSERT INTO description_dictionary(product_id, title, description)
SELECT 17,
'Especificaciones',
'{"Procesador":["Intel Core i5-1335U, 10C (2P + 8E) / 12T, P-core 1.3 / 4.6GHz, E-core 0.9 / 3.4GHz, 12MB"], "Memoria RAM": ["16GB SO-DIMM DDR4-3200"], "Almacenamiento": ["512GB SSD M.2 2242 PCIe® 4.0x4 NVMe® Opal 2.0"], "Display":["15.6 pulgadas FHD (1920x1080) IPS 250nits Anti-glare, 45% NTSC"], "Controlador gráfico":["Integrada Intel Iris Xe"], "Conectividad":["Intel Wi-Fi 6 (11ax, 2x2)", "Bluetooth 5.1"], "Audio":["Altavoces 2W x2, Dolby® Audio™", "Posibilidad de conexión por Bluetooth a dispositivos de reproducción de audio externos (altavoces, auriculares, etc.)"],"Batería":["Polímero de Litio de 57Wh","Cargador 65W USB-C® (3-pin)"], "Conexiones":["1x Ethernet (RJ-45)","1x HDMI® 2.1, up to 4K/60Hz","1x Thunderbolt™ 4 / USB4® 40Gbps (support data transfer, Power Delivery 3.0 and DisplayPort™ 1.4)","1x USB 3.2 Gen 1","1x USB 3.2 Gen 1 (Always On)","1x USB-C® 3.2 Gen 2 (support data transfer, Power Delivery 3.0 and DisplayPort™ 1.4)","1 x Jack combo (auriculares+micro)"], "Sistema Operativo":["Windows 11 Pro"]}'
WHERE NOT EXISTS (
    SELECT 1 FROM description_dictionary WHERE product_id = 17 AND title = 'Especificaciones'
);

INSERT INTO description_dictionary(product_id, title, description)
SELECT 18,
'Especificaciones',
'{"Chip":["Chip M1 Pro de Apple","CPU de 8 núcleos con 6 núcleos de rendimiento y 2 de eficiencia","GPU de 14 núcleos","Neural Engine de 16 núcleos","200 GB/s de ancho de banda de memoria"], "Motor Multimedia":["Aceleración por hardware para H.264, HEVC, ProRes y ProRes RAW", "Motor de decodificación de vídeo","Motor de codificación de vídeo","Motor de codificación y decodificación ProRes"], "Pantalla Liquid Retina XDR":["Pantalla Liquid Retina XDR de 14,2 pulgadas (35,97 cm) en diagonal;1 resolución","nativa de 3.024 por 1.964 a 254 píxeles por pulgada","XDR (rango dinámico extremo)","Hasta 1.000 nits de brillo sostenido (a pantalla completa), 1.600 nits de brillo máximo","Contraste de 1.000.000:1","1.000 millones de colores","Gama cromática amplia (P3)","Tecnología True Tone","Frecuencias de actualización","Tecnología ProMotion con frecuencia de actualización adaptativa de hasta 120 Hz","Frecuencias de actualización fijas: 47,95 Hz, 48 Hz, 50 Hz, 59,94 Hz y 60 Hz"], "Memoria":["16GB", "16 GB de memoria unificada"], "Batería y alimentación":["Hasta 17 horas de reproducción de vídeo en la app Apple TV","Hasta 11 horas de navegación web inalámbrica","Batería de polímeros de litio de 70 vatios-hora2","Adaptador de corriente USBC de 67 W (incluido con el M1 Pro con CPU de 8 núcleos)","Cable de USBC a MagSafe 3","Carga rápida con el adaptador de corriente USBC de 96 W"], "Capacidad":["512GB SSD"]}'
WHERE NOT EXISTS (
    SELECT 1 FROM description_dictionary WHERE product_id = 18 AND title = 'Especificaciones'
);

INSERT INTO description_dictionary(product_id, title, description)
SELECT 26,
'Especificaciones',
'{"Actuación":["MediaTek Dimensity 700","CPU de ocho núcleos, hasta 2,2 GHz","Proceso de fabricación de 7 nm","Arm MailG57 MC2 GPU, hasta 950MHz","4GB + 64GB, 4GB + 128GB, 6GB + 128GB *", "LPDDR4X RAM","Almacenamiento UFS 2.2","MIUI 12 basado en Android 11"], "Pantalla y diseño":["Pantalla de puntos AdaptiveSync de 6.5 ”de 90Hz","Pantalla AdaptiveSync: 30Hz ** / 50Hz / 60Hz / 90Hz","Relación de contraste: 1500: 1","Brillo: 400 nits (típico), HBM 500 nits (típico)","Resolución: 2400 x 1080","Dimensiones: 161,81 mm x 75,34 mm x 8,92 mm","Peso: 190 g"], "Cámara":["Triple cámara de 48MP","Cámara gran angular de 48 MP","Cámara frontal de 8MP f / 2.0"], "Batería cargando":["Batería de 5000 mAh (típica)", "Carga rápida de 18 W", "Cargador integrado de 22,5 W"]}'
WHERE NOT EXISTS (
    SELECT 1 FROM description_dictionary WHERE product_id = 26 AND title = 'Especificaciones'
);

INSERT INTO description_dictionary(product_id, title, description)
SELECT 28,
'Características',
'{"¿Cómo conseguimos introducir tanta innovación en la cámara? Pensando en diagonal.":["El nuevo ultra gran angular muestra más detalle en las zonas oscuras de tus fotos.","El nuevo gran angular captura un 47 % más de luz para lograr mejores instantáneas.","La estabili¬zación óptica de imagen por desplazamiento del sensor consigue planos estables aunque tú te muevas."], "El iPhone ha estudiado cine. Así no tienes que hacerlo tú.":["El modo Cine crea de forma automática bellos efectos de profundidad y cambios de enfoque. Al empezar a grabar en modo Cine, el iPhone enfoca el sujeto y desenfoca el fondo para crear un increíble efecto de profundidad de campo. Cuando percibe que un nuevo protagonista va a entrar en escena, el modo Cine cambia el enfoque automáticamente.","Puedes incluso ajustar la profundidad de campo después de terminar la grabación. Si al ver el resultado no te convence el enfoque o quieres ajustar el difuminado, no pasa nada. Con tocar aquí y deslizar allá lo tienes todo hecho. Ni las cámaras de cine profesionales llegan a tanto.","El modo Cine graba vídeos en HDR con Dolby Vision."], "Haz un fotón sin mover un dedo. Vale, solo uno.":["El modo Noche detecta los entornos con poca luz y ajusta de forma automática los parámetros para ofrecerte fotos más luminosas con colores intensos.","El modo Retrato difumina el fondo y da más protagonismo al sujeto. Puedes ir deslizando entre los seis efectos de iluminación para elegir el que más te llame.","El HDR Inteligente 4 ahora detecta hasta cuatro personas distintas en el plano y optimiza el contraste, la iluminación y el tono de piel de forma independiente. Lo mejor de cada casa, pero con mucha mejor cara.","Deep Fusion se activa en ambientes con poca luz y analiza las distintas exposiciones píxel a píxel para captar todas las texturas y los detalles, por minúsculos que sean.","El ultra gran angular amplía el campo de visión incluso cuando enfocas algo que está muy cerca. Así cabe todo en la imagen sin tener que alejarte."], "Una cámara con un estilo tan tú. Presentamos los Estilos Fotográficos.":["Los Estilos son tan inteligentes que suben o bajan los colores manteniendo la naturalidad de los tonos de piel.","Elige Brillante para dar luminosidad y brillo a las fotos, Contraste Intenso para sombras más oscuras y colores más vivos, y Frío o Cálido para acentuar los subtonos azules o dorados. A esto se le llama tener estilo."]}'
WHERE NOT EXISTS (
    SELECT 1 FROM description_dictionary WHERE product_id = 28 AND title = 'Características'
);

INSERT INTO description_dictionary(product_id, title, description)
SELECT 33,
'Especificaciones',
'{"Sistema operativo":["iOS 15", "iOS es el sistema operativo móvil más personal y seguro del mundo. Está repleto de funciones avanzadas y se ha diseñado para proteger tu privacidad."], "Procesador":["Chip A15 Bionic", "Nueva CPU de 6 núcleos con 2 núcleos de rendimiento y 4 de eficiencia","Nueva GPU de 4 núcleos","Nuevo Neural Engine de 16 núcleos"], "Pantalla":["Pantalla Super Retina XDR","Pantalla OLED de 6,1 pulgadas (15,40 cm) en diagonal","Resolución de 2.532 por 1.170 píxeles a 460 p/p","Pantalla HDR","True Tone","Gama cromática amplia (P3)","Respuesta háptica","Contraste de 2.000.000:1 (típico)","Brillo máximo de 800 nits (típico) o de 1.200 nits (HDR)","Cubierta oleófuga antihuellas"], "SIM":["Doble SIM (Nano SIM y eSIM)","Compatible con doble eSIM","El iPhone 13 y el iPhone 13 mini no son compatibles con las tarjetas Micro SIM"], "Memoria":["Almacenamiento interno: 128 GB"]}'
WHERE NOT EXISTS (
    SELECT 1 FROM description_dictionary WHERE product_id = 33 AND title = 'Especificaciones'
);

INSERT INTO description_dictionary(product_id, title, description)
SELECT 45,
'Especificaciones',
'{"CHiQ 22F650":["Tamaño: 21.5","Tipo panel: VA","Resoción (H x V): 1920*1080","Tasa de refresco: 100Hz","Curvature: Flat","Aspect Ratio: 16:9","Viewing Angle: ≥178(H), ≥178°(V)","Ratio contraste: 1000:1","DCR(Dynamic Contrast Ratio): 1M:1","Brillo: 250cd/m2","Tiempo respuesta: 6ms","Panel Surface: Anti-glare","Display Colors: 16.7M colors","HDMI 1 | VGA 1 | Audio Output 1","Frameless Design: Sí","Kensington Lock: Sí","Height Adjustable Stand: No","Filter Blue Light: Sí","Flicker-free: Sí","FPS/RTS Game Profiles Shifting: Sí","Freesync: Sí","PIP/PBP: No","HDMI Cable(option): 1.5m","Peso Neto: 1.92Kg","Peso con caja: 2.5Kg","Dimensiones con peana (AxPxA) 492.6*139*376.5 mm","Dimensiones sin peana (LxWxH) 492.6*43.9*283.9 mm"]}'
WHERE NOT EXISTS (
    SELECT 1 FROM description_dictionary WHERE product_id = 45 AND title = 'Especificaciones'
);

INSERT INTO description_dictionary(product_id, title, description)
SELECT 51,
'Especificaciones',
'{"Pantalla":["Tratamiento de superficies: Anti-Glare, Hard Coating (3H)","Diseño plano","Tipo de panel (modo de visualización): IPS panel","Brillo (Tipico): 300 cd/m² (Max.)","Contraste: 1000 : 1","Paso de píxel de color (mm): 0.3114(H) x 0.3114(V)","Resolución (H x V) : 1920*1080","Relación de aspecto: 16:9","Tiempo de respuesta (típico): 14 ms Typ (con OD 5ms)","Colores de pantalla: 16.7M","Frecuencia horizontal: 52.32k-109KHzz","Frecuencia vertical: 48 -100HZ","Máx. frecuencia de visualización (Resolución H*V/Fv): 1920*1080 100Hz para HDMI"], "Fuerza":["Consumo (tipico): On: <48W, Off<=0.5W","Rango de alimentación de CA: 100-240V~, 50/60Hz","Modo de energía: Adaptador 12V 4A","Enchufe de audífonos: Sí","Altavoz (típico, salida del amplificador): Sí 4ohms 3W*2 , soporte de placa base 4ohms 2W*2"], "Dimensiones Físicas":["Dimensión con soporte (ancho x profundidad x altura): 614.47*443.18*187.69mm","Dimensión sin soporte (W*D*H):614.47*43.72*359.27mm","Dimensión con el paquete (W*D*H): 673*100*432mm","Peso neto: 3.51 kg","Peso del paquete: 5.16 kg"], "Ergonomía":["Inclinación: -5°~15°(+/-2°)","Cerradura Kensington: Sí","Montaje VESA: 100*100 (agujero de tornillo: 4 agujeros con M4 x 8 mm)"], "Otra información":["Contra parpadeo: Sí","Sincronización adaptativa: Sí","Sincronización gratuita: adaptativa","Anti-luz azul: Sí","Anti reflejante: Sí","Control de espalda: Sí","Visualización en pantalla: 12 Idioma: inglés, francés, alemán, chino, italiano, Español, portugués, turco, polaco, holandés, japonés, coreano","Clase de eficiencia energética: E"]}'
WHERE NOT EXISTS (
    SELECT 1 FROM description_dictionary WHERE product_id = 51 AND title = 'Especificaciones'
);

INSERT INTO description_dictionary(product_id, title, description)
SELECT 53,
'Especificaciones',
'{"CHiQ 24F650":["Tamaño: 23.8 pulgadas","Tipo panel: IPS","Resoción (H x V): 1920*1080","Tasa de refresco: 100Hz","Curvature: Flat","Aspect Ratio: 16:9","Viewing Angle: ≥178(H), ≥178°(V)","Ratio contraste: 1000:1","DCR(Dynamic Contrast Ratio): 1M:1","Brillo: 250cd/m2","Tiempo respuesta: 6ms","Panel Surface: Anti-glare","Display Colors: 16.7M colors","HDMI 1 | DP 1 | VGA 1 | Audio Output 1","GAME PLUS: Sí","Filter Blue Light: Sí","Freesync: Sí","G-sync compatible: No","HDR Ready: No","HDMI Cable(option): 1.5m","Peso Neto: 2.6Kg","Peso con caja: 4.3Kg","Dimensiones con peana (AxPxA) 539.6*139*411.4 mm","Dimensiones sin peana (LxWxH) 539.6*45.7*319.1 mm","VESA Wall Mount (mm): 75*75mm"]}'
WHERE NOT EXISTS (
    SELECT 1 FROM description_dictionary WHERE product_id = 53 AND title = 'Especificaciones'
);

INSERT INTO description_dictionary(product_id, title, description)
SELECT 58,
'Especificaciones',
'{"Exibición":["Diagonal de la pantalla: 68,6 cm (27 pulgadas)","Brillo de la pantalla (típico): 300 cd / m²","Resolución de la pantalla: 3840 x 2160 Pixeles","Relación de aspecto nativa: 16:9","Tiempo de respuesta: 5 ms","Tecnología de visualización: LCD","Forma de la pantalla: Plana","Formatos gráficos soportados: 3840 x 2160","Razón de contraste (típica): 1000:1"], "Diseño":["Posicionamiento de mercado: Negocios","Color del producto: Negro"], "Puertos e interfaces":["Conector USB incorporado: Si","Cantidad de puertos downstream USB tipo C: 1 90W","HDMI: Si","Número de puertos HDMI: 1","Cantidad de DisplayPorts: 1","Salida de auriculares: Si"], "Ergonomía":["Interfaz de panel de montaje: 100 x 100 mm","montaje VESA: Si","Ajustes de altura: Si","Ajuste de altura: 12 cm","Eje: Si","Ángulo de pivote: -2 - 92°","Giratorio: Si","Ángulo de giro (alcance): -30 - 30°","Inclinable: Si","Ángulo de inclinación: -2 - 25°"], "Peso y dimensiones":["Ancho del dispositivo (con soporte): 615,5 mm","Profundidad dispositivo (con soporte): 196,4 mm","Altura del dispositivo (con soporte): 551,9 mm","Peso (con soporte): 6,7 kg","Ancho (sin base): 61,5 cm","Profundidad (sin base): 4,27 cm","Altura (sin base): 36,8 cm"]}'
WHERE NOT EXISTS (
    SELECT 1 FROM description_dictionary WHERE product_id = 58 AND title = 'Especificaciones'
);

INSERT INTO description_dictionary(product_id, title, description)
SELECT 59,
'Especificaciones',
'{"Exibición":["Diagonal de la pantalla: 68,6 cm (27 pulgadas)","Resolución de la pantalla: 1920 x 1080 Pixeles","Tipo HD: Full HD","Relación de aspecto nativa: 16:9","Tecnología de visualización: LED","Tipo de pantalla: IPS","Tipo de retroiluminación: LED","Pantalla táctil: No","Formatos gráficos soportados: 1920 x 1080 (HD 1080)","Formato de vídeo soportado: 360p, 480p, 720p, 1080p","Relación de aspecto: 16:9","Razón de contraste (típica): 1000:1"], "Desempeño":["NVIDIA G-SYNC: No","AMD FreeSync: No","Compatibilidad con Adaptive Sync de VESA: No","Tecnología Flicker free (reduce el parpadeo de la pantalla): Si","Tecnología Low Blue Light (baja luz azul): No","Tiempo de latencia bajo: No","Contador de FPS: No","Dial point (cruceta de puntería): No"], "Multimedia":["Altavoces incorporados: Si","Cámara incorporada: No","Número de altavoces: 2","Potencia estimada RMS: 10 W","Micrófono incorporado: No"], "Puertos e interfaces":["Conector USB incorporado: Si","Versión de conector USB: 3.2 Gen 1 (3.1 Gen 1)","Cantidad de puertos USB descendentes de tipo A: 2","USB Type-C DisplayPort Alternate Mode: No","Suministro de potencia USB: No","Puerto táctil USB: No","Puerto DVI: No","HDMI: Si","Número de puertos HDMI: 2","Versión HDMI: 2.1","Entrada de audio: No"]}'
WHERE NOT EXISTS (
    SELECT 1 FROM description_dictionary WHERE product_id = 59 AND title = 'Especificaciones'
);