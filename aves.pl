% aves.pl
% Hechos sobre aves mexicanas
ave(quetzal).
ave(cucaracha_maya).
ave(huilotl).
ave(calakmul).
ave(ajolote).
ave(colibri_orejiviolaceo).
ave(chipe_gorrero).
ave(perico_verde).
ave(aguililla_cafe).
ave(tordo_palido).

% Relación de aves mexicanas con su tamaño
tamano(quetzal, pequeno).
tamano(cucaracha_maya, pequeno).
tamano(huilotl, pequeno).
tamano(calakmul, mediano).
tamano(ajolote, mediano).
tamano(colibri_orejiviolaceo, pequeno).
tamano(chipe_gorrero, pequeno).
tamano(perico_verde, pequeno).
tamano(aguililla_cafe, mediano).
tamano(tordo_palido, mediano).

% Relación de aves mexicanas con su hábitat y población
habitat(quetzal, selva_nublada).
habitat(cucaracha_maya, bosque_humedo).
habitat(huilotl, selva_seca).
habitat(calakmul, manglar).
habitat(ajolote, lago).
habitat(colibri_orejiviolaceo, bosque_seco).
habitat(chipe_gorrero, bosque_lluvioso).
habitat(perico_verde, selva_seca).
habitat(aguililla_cafe, montanas).
habitat(tordo_palido, praderas).

% Relación de hábitats con los estados de México
lugar_de_estado(selva_nublada, veracruz).
lugar_de_estado(bosque_humedo, yucatan).
lugar_de_estado(selva_seca, oaxaca).
lugar_de_estado(manglar, veracruz).
lugar_de_estado(lago, chiapas).
lugar_de_estado(bosque_seco, oaxaca).
lugar_de_estado(bosque_lluvioso, chiapas).
lugar_de_estado(montanas, oaxaca).
lugar_de_estado(praderas, tabasco).

poblacion(quetzal, 5000).
poblacion(cucaracha_maya, 10000).
poblacion(huilotl, 3000).
poblacion(calakmul, 8000).
poblacion(ajolote, 50000).
poblacion(colibri_orejiviolaceo, 7000).
poblacion(chipe_gorrero, 12000).
poblacion(perico_verde, 15000).
poblacion(aguililla_cafe, 6000).
poblacion(tordo_palido, 9000).

% Relación de aves mexicanas con su alimentación
alimentacion(quetzal, insectos).
alimentacion(cucaracha_maya, frutas).
alimentacion(huilotl, semillas).
alimentacion(calakmul, peces).
alimentacion(ajolote, invertebrados).
alimentacion(colibri_orejiviolaceo, nectar).
alimentacion(chipe_gorrero, insectos).
alimentacion(perico_verde, semillas).
alimentacion(aguililla_cafe, pequenos_mamiferos).
alimentacion(tordo_palido, frutas, insectos).

% Relación de aves mexicanas con su estatus de conservación
en_peligro_extincion(Ave) :-
    poblacion(Ave, Poblacion),
    (poblacion_critica(_, Poblacion) ; poblacion_baja(_, Poblacion)).

poblacion_critica(_, Poblacion) :-
    Poblacion < 1000.

poblacion_baja(_, Poblacion) :-
    Poblacion >= 1000,
    Poblacion < 5000.

% Regla para determinar si un ave es de un estado específico de México
ave_de_estado(Ave, Estado) :-
    habitat(Ave, Habitat),
    lugar_de_estado(Habitat, Estado).

% Regla para obtener información detallada de un ave
info(Ave, Tamano, Habitat, Poblacion, Alimentacion) :-
    tamano(Ave, Tamano),
    habitat(Ave, Habitat),
    poblacion(Ave, Poblacion),
    alimentacion(Ave, Alimentacion).

estado_mexicano(veracruz).
estado_mexicano(yucatan).
estado_mexicano(oaxaca).
estado_mexicano(chiapas).
estado_mexicano(tabasco).
