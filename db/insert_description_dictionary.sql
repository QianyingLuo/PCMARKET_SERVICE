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