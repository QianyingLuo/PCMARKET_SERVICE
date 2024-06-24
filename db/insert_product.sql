INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - Samsung Galaxy Book4 Pro, 16" WQXGA+, Intel® Evo™ Edition Core™ Ultra 7-155H, 16GB RAM, 512GB, Arc®, W11H, IA, Gris', 
       '',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil gaming - Lenovo IdeaPad Gaming 3 15ACH6, 15.6" Full-HD, AMD Ryzen™ 5 5500H, 16GB RAM, 512GB SSD, GeForce RTX™ 2050, Sin sistema operativo', 
       'Potencia y rendimiento a raudales es lo que vas a encontrar con el portátil gaming IdeaPad Gaming 3 15ACH6 en color Shadow Black. Equipado con un procesador AMD Ryzen™ 5 5500H, una gráfica GeForce® RTX™ 2050 de 4 GB y con 16 GB de RAM, podrás jugar durante horas y hacer maratones gaming con gran fluidez, sin que el equipo se resienta. Con un almacenamiento de 512 GB podrás guardar todo aquello que necesites, y al ser SSD, el equipo trabajará y cargará aplicaciones y juegos a gran velocidad.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - Lenovo IdeaPad Slim 3 15IAH8, 15.6" Full-HD, Intel® Core™ i5-12450H, 16GB RAM, 512GB SSD, UHD Graphics, Sin sistema operativo, Gris', 
       'El portátil IdeaPad Slim 3 15IAH8 de Lenovo combina un perfil fino, potencia y velocidad para que salgas a la carretera día y noche. Es lo suficientemente resistente como para afrontar cualquier cosa que le pidas y lo suficientemente ligero como para transportarlo sin esfuerzo. No renuncies a nada con este dispositivo Smart, ligero y basado en pruebas de especificaciones militares.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - Acer Chromebook CB315-3H-C27W, 15.6" HD, Intel® Celeron® N4120, 4GB RAM, 64GB eMMC, Intel® UHD 600, Google Chrome OS', 
       'Diseñado para la vida móvil, este portátil Acer Chromebook CB315-3H-C27W antirreflejante de 15.6" con bisel delgado de 9,5 mm, ofrece una pantalla más grande para hacer más y una batería de larga duración de hasta 12.5 horas de autonomía. Gracias a su potente procesador Intel® Celeron® N4500 proporciona un bajo consumo de energía y una respuesta rápida. Cuenta con 4 GB de memoria RAM, también cuenta con 64 GB eMMC de almacenamiento.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - HP 15S-FQ5048NS , 15.6" Full HD, Intel® Core™ i7-1255U, 16GB RAM, 512GB SSD, Iris® Xᵉ, W11 Home', 
       'Permanece conectado para trabajar o jugar siempre que lo necesites gracias al ordenador portátil HP Laptop HP 15s-fq5048ns de 15,6 pulgadas. Este dispositivo tiene una batería de larga duración, un fino y ligero diseño ligero con una pantalla microborde, pantalla Full HD y viene con tecnología antirreflectante.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - Lenovo IdeaPad 1 15ALC7, 15.6" Full-HD, AMD Ryzen™ 5 5500U, 16GB RAM, 512GB SSD, Radeon™ Onboard Graphics, Windows 11 Home, Gris', 
       'Con el portátil Lenovo IdeaPad 1 15ALC7 en color Cloud Grey, no encontrarás rival en tu proyectos y trabajos. Además de ser ultra ligero y fino, tiene una autonomía de 9.32h y unos gráficos Radeon™ Graphics que te harán elevar tus diseños a otra dimensión.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - Acer Aspire Go 15 AG15-31P, 15.6" Full HD, Intel® Core™ i3-N305, 8GB RAM, 512GB SSD, UHD Graphics, Windows 11 Home', 
       'El portátil Acer Aspire Go 15 AG15-31P en color plata con pantalla de 15.6" Full HD y tiene un diseño ligero y fino y con él podrás realizar todas tus tareas gracias a su potente procesador Intel® Core™ i3-N305.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - HP 15s-fq5099ns, 15.6" Full HD, Intel® Core™ i7-1255U, 16GB RAM, 512GB SSD, Intel® Iris® Xᵉ, Sin sistema operativo, Plata', 
       '¿Buscas un notable portátil ligero para trabajar y/o jugar siempre que quieras? Disfruta de una pantalla con tecnología antirreflectante, batería de larga duración y con un rendimiento fiable para el día a día, gracias al dispositivo HP 15s-fq5099ns',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - ASUS VivoBook 15 F1504ZA-NJ707W, 15.6" Full HD, Intel® Core™ i7-1255U, 16GB RAM, 512GB SSD, Iris® Xe, Windows 11 Home', 
       'Convierte las tareas cotidianas en algo especial con VivoBook 15 F1504ZA-NJ707W, tu herramienta esencial para hacer las cosas más fácilmente, en cualquier lugar. También es completamente fácil de usar, con su bisagra plana de 180° y su protector físico para la cámara web. ASUS Antimicrobian Guard Plus protege las superficies que se tocan con frecuencia de bacterias, salvaguardando su salud. ¡Haz que todos tus días sean más agradables con Vivobook 15!',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image) 
SELECT 'Portátil - Acer Chromebook CB315-4H-C4BQ, 15.6" Full HD, Intel® Celeron® N4500, 8GB RAM, 128GB eMMC, Intel® UHD Graphics, Google Chrome OS', 
       'Diseñado para la vida móvil, este portátil Acer Chromebook CB315-4H-C4BQ antirreflejante de 15.6" con bisel delgado de 9,5 mm, ofrece una pantalla más grande para hacer más y una batería de larga duración de hasta 10 horas de autonomía. Gracias a su potente procesador Intel® Celeron® N4500 proporciona un bajo consumo de energía y una respuesta rápida. Cuenta con 8GB de memoria RAM, también cuenta con 128GB eMMC de almacenamiento.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - Apple MacBook Air Apple M1/8GB/256GB SSD/GPU Hepta Core/13.3" Plata', 
       'El poder no ocupa lugar. El chip M1 de Apple redefine nuestro portátil más fino y ligero. La CPU es hasta 3,5 veces más potente. Los gráficos, hasta cinco veces más rápidos. Un Neural Engine más avanzado llega a multiplicar por nueve la velocidad del aprendizaje automático. Además tiene la mayor autonomía en un MacBook Air y un diseño sin ventilador que lo vuelve ultrasilencioso. Descubre un talento sin precedentes listo para seguirte a cualquier parte.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - Apple MacBook Pro Apple M1 Pro/16GB/512GB SSD/16.2" Gris Espacial Reacondicionado', 
       'Ya está aquí el MacBook Pro más potente de la historia. Su rendimiento y eficiencia son enormes gracias a los chips M1 Pro y M1 Max, los primeros que Apple diseña para profesionales. Incluye una asombrosa pantalla Liquid Retina XDR, la mejor cámara y el mejor sistema de sonido en un portátil Mac, además de todos los puertos que vas a necesitar. Estás ante el primer portátil de una nueva especie. Y es una bestia.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - HP 255 G10, 15.6 " Full HD, AMD Ryzen 7 7730U, 32GB RAM, 512GB SSD, AMD Radeon™, Windows 11 H', 
       'El portátil HP 255 G10 ofrece funciones esenciales para el negocio en un diseño compacto y ligero que permite llevarlo contigo a todas partes. Se trata de un equipo con pantalla de 15,6 pulgadas con una proporción entre pantalla y estructura del 85%, un sólido procesador AMD Ryzen™, una rápida memoria y opciones de almacenamiento diseñado para potenciar tu productividad y para que puedas conectar tus periféricos a los puertos que incluye...y todo ello por un precio que no te dejará indiferente.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - Microsoft Surface Laptop 5, 13.5" WQHD, Intel® Evo™ Core™ i5-1235U, 8GB RAM, 256GB SSD, Iris® Xe Graphics, Windows 11 Home', 
       'Desbloquea más posibilidades que nunca con el Pro diseñado para un profesional como tú. El portátil para consumidores y diseñado para destacar lo mejor de Windows 11, Microsoft Surface Laptop 5, de color platinum, combina el poder de un portátil con la flexibilidad de una tableta, y todos los ángulos entremedios, con el icónico soporte trasero y teclado extraíble. Haz grandes cosas con una pantalla táctil más grande de 13.5", conexiones más rápidas y velocidad adicional cuando la necesitas.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - Microsoft Surface Laptop 4 Negro Intel Core i5-1145G7/8GB/512 GB SSD/13.5" Táctil Reacondicionado', 
       'Estilo y velocidad. Destaca en las videollamadas HD respaldadas con micrófonos de estudio. Captura ideas en la vibrante pantalla táctil. Hazlo todo con el equilibrio perfecto entre diseño moderno, velocidad, audio envolvente y una batería que dura significativamente más que antes.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil gaming - Lenovo LOQ 15IRH8, 15.6" FullHD, Intel® Core™ i5-12450H, 16GB RAM, 512GB SSD, GeForce RTX™ 4050, Windows 11 Home', 
       'El portátil gaming Lenovo LOQ 15IRH8, funciona rápido con un procesador Intel® Core™ de 12va generación y tarjeta gráfica NVIDIA® GeForce RTX™ 4050. Disfruta de imágenes nítidas en una pantalla FHD de hasta 39.62 cm (15.6"), con una precisión de color asombrosa y Dolby Vision™. Por su parte, el sonido Nahimic Gaming Audio y el teclado te ayudan a atacar con precisión milimétrica.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - Lenovo ThinkPad L15 Gen 4 Intel Core i5-1335U/16GB/512GB SSD/15.6"', 
       'Rendimiento y fiabilidad para tu empresa. Portátil Lenovo ThinkPad L15 de 39,62 cm con teclado numérico, ideal para las finanzas, la contabilidad y la introducción de datos. Equipado con un procesador hasta Intel vPro® con Intel® Core™ de 13.a generación. Compatible con PC con núcleo protegido de Microsoft 11 para una mayor seguridad en el trabajo.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - Apple MacBook Pro Apple M1 Pro/16GB/512GB SSD/14.2" Plata Reacondicionado', 
       'Ya está aquí el MacBook Pro más potente de la historia. Su rendimiento y eficiencia son enormes gracias a los chips M1 Pro y M1 Max, los primeros que Apple diseña para profesionales. Incluye una asombrosa pantalla Liquid Retina XDR, la mejor cámara y el mejor sistema de sonido en un portátil Mac, además de todos los puertos que vas a necesitar. Estás ante el primer portátil de una nueva especie. Y es una bestia.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil gaming - ASUS TUF A15 FA507NV-LP031W, 15.6" Full HD, AMD Ryzen 7 7735HS, 16GB RAM, 512GB SSD, GeForce RTX™ 4060, Windows 11 Home', 
       'Salta directamente a la acción con el portátil gaming TUF Gaming A15. Con Windows 11 listo para usar, TUF Gaming A15 viene equipado con hasta un procesador AMD Ryzen™ 7 7735HS y hasta 16GB de RAM DDR5 de 4800 MHz increíblemente rápida que harán que tus streamings y todas tus tareas se manejen con gran facilidad. Aprovecha todo el potencial gaming con hasta una GPU para portátiles NVIDIA® GeForce RTX™ 4060 con MUX Switch dedicado. La ranura SSD M.2 NVMe te permitirá seguir llenando tu catálogo de juegos cuando tu biblioteca esté llena, haciendo muy fácil la capacidad para ampliar la memoria.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Portátil - ASUS Chromebook CX1400FKA-EC0077, 14" Full HD, Intel® Celeron® N4500, 8GB RAM, 128GB eMMC, UHD Graphics, Chrome OS', 
       'El ASUS Chromebook CX1400FKA-EC0077 está hecho para potenciar la productividad y la multitarea sin que pare la diversión todo el día, todos los días. Además, el ASUS Chromebook Flip CX1 es tu puerta de entrada a lo mejor de Google, incluida la rica biblioteca de aplicaciones para trabajar o jugar en Google Play. El ASUS Chromebook Flip CX1 cuenta con un rendimiento fluido, una seguridad de gran solidez y unas funciones muy prácticas, por lo que es perfecto para que cualquiera pueda disfrutar de un entretenimiento y una productividad sin interrupciones.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Samsung Galaxy S24, Onyx, 256GB, 8GB RAM, 6.2" FHD+, con IA, Exynos 2400, 4000 mAh, Android 14', 
       '',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Apple iPhone 15 Pro Max, Titanio Natural, 256 GB, 5G, 6.7" Pantalla Super Retina XDR, Chip A17 Bionic, iOS', 
       '',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Samsung Galaxy A55 5G, Light Violet, 256GB, 8GB RAM, 6.6" FHD+ Super AMOLED, Exynos 1480 Octa-Core, 5000 mAh, Android', 
       '',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - OPPO Reno 11 F, Verde, 256GB, 8GB RAM, 6.7" AMOLED FHD+, MediaTek Dimensity 7050, 5000mAh, Android', 
       'Descripción
El móvil Reno11 F 5G de OPPO trae un nuevo acabado denominado Particle Magnetic Design, para darle un aspecto único en diseño y color, junto con OPPO Glow, que le da a este terminal un efecto Premium que hará las delicias de aquellos que buscan algo diferente, que llame la atención y sea ligero y cómodo en la mano con sus 177g de peso y sus 7,54mm de grosor.  Además, es perfecto para no llevar funda, ya que no deja huellas y es resistente a arañazos.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Xiaomi Redmi Note 13 Pro+ 5G, Moonlight White, 512 GB, 12 GB RAM, 6.67" AMOLED 1.5K, MediaTek Dimensity 7200, 5000 mAh', 
       '',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - XIAOMI Redmi Note 10 5G, Azul, 128 GB, 4 GB RAM, 6,5 ", Full HD+, MediaTek, 5,000 mAh, Android', 
       'Descripción
El Xiaomi Redmi Note 10 5G está listo para desafiar los límites del rendimiento de los juegos. Su tecnología de procesamiento de 7 nm y su módem integrado ofrecen un mayor rendimiento con un menor consumo de energía para que los usuarios puedan disfrutar de un uso prolongado de su dispositivo sin preocuparse por el consumo de energía. Con soporte para 5G dual SIM, Redmi Note 10 5G es una bestia de productividad.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - realme 12+ 5G, Beige, 512 GB, 12 GB RAM, 6.67" Full HD+ AMOLED 120Hz, MediaTek Dimensity 7050 5G, 5000 mAh, Android', 
       'Descripción
Sé un maestro de las imágenes y la comunicación con el móvil realme 12+ 5G. Cuenta con la triple cámara de 50 megapíxels y el procesador MediaTek Dimensity 7050 5G.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Apple iPhone 13, Rosa, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS', 
       'Descripción
iPhone 13: Tu nuevo superpoder. Nuestro sistema de cámara dual más avanzado. El chip que hace morder el polvo a la competencia. Un subidón de autonomía que vaya si notarás. Ceramic Shield, más duro que cualquier vidrio de smartphone. Pantalla Super Retina XDR de 6,1 pulgadas. Diseño robusto con bordes planos y resistente al agua.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - OPPO FIND X5, Negro, 256 GB, 8 GB RAM, 6,55 ", Qualcomm Snapdragon™ 888 5G, 4800 mAh, Android', 
       'Descripción
Vive el momento con el móvil OPPO Find X5 5G, en color negro. Con la capacidad para grabar vídeos asombrosos al alcance de tu mano, el límite lo marca tu imaginación, así que piensa a lo grande.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Google Pixel 8a, Porcelana, 128 GB, 8 GB RAM, 6.1" OLED, Google Tensor G3, 4492 mAh, Android', 
       'Descripción
Descubre Pixel 8a, creado por Google. Saca fotos magníficas con la Cámara Pixel. Haz más en menos tiempo con la IA de Google, como arreglar imágenes borrosas, filtrar llamadas y aprender cosas nuevas. Sus funciones de seguridad del más alto nivel ayudan a proteger tus datos. Y se ha diseñado para durar. Todo, a un precio excepcional.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Google Pixel 8, Rosa, 128 GB, 8 GB RAM, 6.2 " OLED Full HD+, Google Tensor G3, 4.575 mAh, Android', 
       'Descripción
Descubre Pixel 8 en color rosa, creado por Google. El chip Google Tensor G3 permite que tu teléfono sea rápido, y la Cámara Pixel hace fotos y vídeos increíbles. Pixel 8 incorpora las funciones mejor valoradas en materia de seguridad y además, la batería dura todo el día.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Google Pixel 8, Verde liquen, 256 GB, 8 GB RAM, 6.2 " OLED Full HD+, Google Tensor G3, 4.575 mAh, Android', 
       'Descripción
Descubre Pixel 8 en color verde liquen, creado por Google. El chip Google Tensor G3 permite que tu teléfono sea rápido, y la Cámara Pixel hace fotos y vídeos increíbles. Pixel 8 incorpora las funciones mejor valoradas en materia de seguridad y además, la batería dura todo el día.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Apple iPhone 13, Verde, 128 GB, 5G, 6.1" OLED Super Retina XDR, Chip A15 Bionic, iOS', 
       'Descripción
iPhone 13: Tu nuevo superpoder. Nuestro sistema de cámara dual más avanzado. El chip que hace morder el polvo a la competencia. Un subidón de autonomía que vaya si notarás. Ceramic Shield, más duro que cualquier vidrio de smartphone. Pantalla Super Retina XDR de 6,1 pulgadas. Diseño robusto con bordes planos y resistente al agua.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - OPPO Reno10 Pro 5G, Silvery Grey, 256 GB, 12 GB RAM, 6.7" AMOLED Full HD+, Qualcomm Snapdragon™ 778G, 4600 mAh, Android', 
       'Descripción
Disfruta del móvil OPPO Reno10 Pro 5G, el experto en retratos. Conn una capacidad de memoria de 256 GB, RAM de 12 GB y pantalla AMOLED de 6.7", sus cámaras y su batería acabarán de enamorarte.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - VIVO Snapdragon 6802.4GHZ*4 + 1.9GHZ*48 núcleos, Oro, 256 GB, 8 GB RAM, 6,58 ", Full HD+, Snapdragon, 5000 mAh, Android', 
       'Dispositivo móvil vivo Y35 Dawn Gold, con un procesador Snapdragon 680,doble cámara, pantalla brillante Full-HD+ y una gran batería de 5000 mAh.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Samsung Galaxy A15 LTE, Azul, 128GB, 4GB RAM, 6.5" FHD+, MediaTek G99 Octa-Core, 5000mAh, Android 14', 
       '',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Samsung Galaxy S23 5G, Botanic Green, 256GB, 8GB RAM, con IA, 6.1" FHD+, Qualcomm Snapdragon, 3900mAh, Android 13', 
       '',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Samsung Galaxy S24 Ultra, Titanium Gray, 512GB, 12GB RAM, 6.8" QHD+, con IA, S Pen, Qualcomm Snapdragon 8, 5000mAh, Android 14', 
       '',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Xiaomi Redmi Note 13 Pro, Morado, 512 GB, 12 GB, 6.67" Full HD+AMOLED, MediaTek Helio G99 Ultra, 5000 mAh, Android', 
       '',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Móvil - Samsung Galaxy A35 5G, 128GB, 6GB RAM, 6.6" FHD+, Exynos 1380, 5000 mAh, Android 14, Light Blue', 
       '',
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


INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor - LENOVO G34w-30, 34 ", UWQHD, 5 ms, 165 Hz, Negro', 
       'Mejore su juego con el monitor Lenovo G34w-30 cargado de características. Su suave curvatura de 1500R acomoda su campo de visión natural para que pueda ver las cosas incluso en los bordes, sin cambiar de enfoque. La pantalla ultraancha de 86,3 cm (34") WQHD (3440 x 1440) del monitor tiene una relación de aspecto de 21:9 que le entrega una ventaja competitiva a través de un campo de visión expandido y detalles visuales más nítidos y precisos. Deje que su alta frecuencia de actualización acelerada de 170 Hz le ayude a mantener el ritmo de todos los movimientos en el juego.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor gaming - PHILIPS 27M1C3200VL/00, 27 ", Full-HD, 1 ms, 165 Hz, Negro', 
       'Este monitor para juegos de Philips 27M1C3200VL es la pantalla ideal para los juegos de PC intensos. La tecnología de sincronización, la frecuencia de actualización de 165 Hz y el tiempo de respuesta de 1 ms ofrecen una experiencia de juego fluida. Incluye una pantalla con marco fino visualmente envolvente y la tecnología Ultra Wide-Color.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor - LG 34WQ650-W, 34", FHD, 5ms (GTG), 56/61 Hz, HDMI x1, DisplayPort, USB-C, Auriculares, Blanco High Glossy', 
       'Disfruta de una increíble experiancia visual con el monitor LG 34WQ650-W de 34 pulgadas de color blanco High Glossy.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor gaming - Samsung Odyssey G7 LS28BG700EPXEN, 28",4K UHD, 1 ms, 144 Hz, USB, Bluetooth, Negro', 
       'Imágenes hiperrealistas verás en el monitor gaming Samsung Odyssey G7 LS28BG700EPXEN de 28 pulgadas. El monitor Odyssey G7 LS28BG700EPXEN de Samsung tiene una tasa de refresco de 144 Hz y un tiempo de respuesta de 1ms que elimina el retardo para un juego emocionante con una acción ultrafluída.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor - CHIQ 22F650, 22 ", Full-HD, 6 s, 100 Hz, Gris', 
       'Monitor LED de 21.5" con resolución Full HD con un diseño minimalista sin marco.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor - HP M27F, 27", Full HD, 5 ms, 75Hz, HDMI, VGA, Negro, Plata', 
       'Sumérgete en las perfectas imágenes que te ofrece este Monitor HP M27F, un espectacular lienzo diseñado para redefinir los conceptos de comodidad, bienestar y sostenibilidad. Juega, trabaja o simplemente disfruta gracias a esta redefinición del concepto de alta definición.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor gaming - Samsung G5 LC34G55TWWPXEN, 34", UWQHD, 1 ms, 165Hz, Negro', 
       '',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor gaming - Acer Nitro KG241YM3, 23.8" Full HD, 1 ms, 180Hz, 2 x HDMI(2.0)+1 x DisplayPort(1.2)+SPK+Audio out, FreeSync Premium, Negro', 
       'El monitor gaming Acer Nitro KG241YM3 de 23.8" Full HD, ofrece una experiencia de visualización adecuada para juegos y otras actividades multimedia',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor gaming - Samsung Odyssey G3 LS24AG320NUXEN , 24", Full-HD, 1 ms, FreeSync Premium, Negro', 
       '',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor - HP M24fwa, 24", Full HD, 75Hz, 5ms, IPS, 16:9, HDMI, VGA, Antirreflejo, Eye Ease, Blanco', 
       '¿Estás buscando un monitor que lo aguante todo y ocupe poco? Disfruta al máximo de este monitor ultrafino con la máxima calidad de imagen, audio integrado y HP Eye Ease con tecnología con certificación Eyesafe® , con un diseño que te ofrece un nuevo concepto de comodidad, bienestar y sostenibilidad.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor - SMART TECH 270N02XIF, 27 ", Full-HD, 4 ms, 75 Hz, Black', 
       'El monitor Smart Tech 270N02XIF es un dispositivo de visualización avanzado y versátil. Con una pantalla de alta resolución y tecnología inteligente, ofrece una experiencia visual impresionante. Sus características incluyen una pantalla de 27 pulgadas con resolución FullHD, lo que permite una reproducción de colores vívida y detalles nítidos.
También incluye puertos HDMI y USB-C para facilitar la conexión con otros dispositivos. En general, el monitor Smart Tech 270N02XIF combina calidad de imagen excepcional con funcionalidades para satisfacer las necesidades tanto de usuarios profesionales como de entretenimiento en el hogar.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor - LG 32MN500M-B, 31.5" Full-HD, 5 ms, 75 Hz, 2 x HDMI, Radeon FreeSync, Negro', 
       'Trabaja con toda la comodidad que necesitas gracias al monitor LG 32MN500M-B de 31.5 pulgadas. Su resolución de 1920 x 1080 píxeles te asegura que está a la altura de las tareas que debes realizar. Si necesitas tener una calidad alta de imagen o bien debes pasar horas y horas delante de la pantalla, lo necesitas.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor - CHIQ 24F650, 23,8 ", Full-HD, 6 ms, 100 Hz, Gris', 
       'Monitor LED IPS de 23.8" con resolución Full HD con un diseño minimalista sin marco.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor - LG 32SR85U-W, 31.5", UHD 4K, 5 ms, 60 Hz, HDMI x2, USB-C x1, Blanco', 
       'Infinitas posibilidades de entretenimiento en streaming y teletrabajo con el Monitor LG 32SR85U-W. LG MyView Smart Monitor está diseñado para el trabajo y el entretenimiento. Mira tus series favoritas fácilmente desde múltiples plataformas de streaming y configura tu espacio de trabajo de manera rápida, con ordenador o sin él.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor gaming - LG 24GN60R-B, 23,8", Full-HD, 1 ms, 144Hz, HDMI x1 , Display Port x1, Negro', 
       'El Monitor Gaming LG 24GN600-B UltraGear, un equipo increíblemente potente, aumenta tus posibilidades de victoria.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor - HP V24i G5 FHD, 23.8 ", Full HD, 5 ms, 75Hz, Panel IPS, Modo de luz azul baja, Negro', 
       'Amplía tu visión y productividad con el monitor HP V24i G5 mientras trabajas o estudias con este monitor FHD de 60,5 cm (23,8 pulgadas) en diagonal. Este dispositivo elegante y de gran tamaño simplifica y completa tus tareas informáticas gracias a la suavidad y definición de sus imágenes, además de su sencillo diseño, para que puedas mejorar tu rendimiento diariamente.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor - LG 27UL500-W (versión 2023), 27 " UHD 4K, 5ms, 60 Hz, DP, HDMI, Plata', 
       'Colores más vivos y mejor contraste con HDR10 con el monitor LG 27UL500-W (versión 2023).',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor - SAMSUNG LS27A800UJUXEN, 27 ", UHD 4K, 5 ms, 60 Hz, Negro', 
       'Optimizado para entornos de trabajo profesionales. Los monitores Samsung de alta resolución incluyen un panel IPS, ofreciendo una calidad de color nítida y un amplio ángulo de visión de 178º. Todos los usuarios podrán disfrutar de una increíble experiencia de visualización desde cualquier ángulo, con colores vívidos y vibrantes.
Explora y sumérgete en cada detalle. Con 4 veces los píxeles de Full HD, cada pequeño detalle se ve con mayor profundidad, mientras que la amplia pantalla proporciona más espacio para ver múltiples herramientas, aplicaciones y programas a lo largo de tu jornada. Disfruta de una experiencia de visualización de contenido con calidad cinematográfica 4K, durante el día y la noche.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor - LG MyView Smart Monitor 27SR50F-W 27" LED IPS FullHD', 
       'Si combinas trabajo y entretenimiento, cambia la historia. LG MyView Smart Monitor está diseñado para el trabajo y el entretenimiento. Mira tus series favoritas fácilmente desde múltiples plataformas de streaming y configura tu espacio de trabajo de manera rápida, con ordenador o sin él.',
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

INSERT INTO product (name, description, type, brand, stock, price, discount_decimal, stars, image)
SELECT 'Monitor gaming - ASUS PA278CV, 27 ", WQHD, 5 ms, Negro', 
       'Aprovecha y llevaté el monitor ASUS ProArt Display PA278CV de color negro especialmente diseñado para el trabajo en la oficina. Gracias a su resolución QHD y gran dimensión de 27", podrás trabajar fácilmente con grandes hojas de cálculo sin ningún tipo de problemas.',
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