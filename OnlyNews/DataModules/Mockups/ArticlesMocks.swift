//
//  ArticlesMocks.swift
//  OnlyNews
//
//  Created by Jose Manuel Ortiz Sanchez on 29/11/22.
//

import Foundation

let ARTICLES_STRING: String = """
[
    {
        "source": {
            "id": null,
            "name": "Elchapuzasinformatico.com"
        },
        "author": "Borja Rodríguez",
        "title": "La Radeon RX 6500 XT se convierte en una opción: ahora cuesta 99$",
        "description": "Quién nos iba a decir que la GPU más criticada de este año, la AMD Radeon RX 6500 XT, se volvería en una seria candidata para ser usada en equipos gaming de precio asequible. Hay que recordar que esta gráfica se lanzó en enero con muchos problemas. Todo parti…",
        "url": "https://elchapuzasinformatico.com/2022/11/radeon-rx-6500-xt-precio-99-dolares/",
        "urlToImage": "https://elchapuzasinformatico.com/wp-content/uploads/2022/11/Radeon-RX-6500-XT.jpg",
        "publishedAt": "2022-11-29T20:29:47Z",
        "content": "Quién nos iba a decir que la GPU más criticada de este año, la AMD Radeon RX 6500 XT, se volvería en una seria candidata para ser usada en equipos gaming de precio asequible. Hay que recordar que est… [+2793 chars]"
    },
    {
        "source": {
            "id": null,
            "name": "Europapress.es"
        },
        "author": null,
        "title": "El Consejo Nacional de Agua avala los nuevos planes de cuenca que incluyen con una menor asignación de recursos hídricos",
        "description": "El pleno del Consejo Nacional del Agua ha avalado los planes hidrológicos de cuenca para el periodo 2022-2027, con una inversión prevista de 22.926 millones de euros para ejecutar las más de 7.000 medidas previstas, y que plantean una reducción en las asignac…",
        "url": "https://www.europapress.es/sociedad/medio-ambiente-00647/noticia-consejo-nacional-agua-avala-nuevos-planes-cuenca-incluyen-menor-asignacion-recursos-hidricos-20221129212647.html",
        "urlToImage": "https://img.europapress.es/fotoweb/fotonoticia_20221129212647_1200.jpg",
        "publishedAt": "2022-11-29T20:26:47Z",
        "content": "MADRID, 29 Nov. (EUROPA PRESS) - El pleno del Consejo Nacional del Agua ha avalado los planes hidrológicos de cuenca para el periodo 2022-2027, con una inversión prevista de 22.926 millones de eur… [+4057 chars]"
    },
    {
        "source": {
            "id": "la-nacion",
            "name": "La Nacion"
        },
        "author": null,
        "title": "Pilar Bonet, corresponsal de 'El País' en Rusia, premiada con el Cerecedo de Periodismo 2022",
        "description": "Pilar Bonet, corresponsal de &apos;El País&apos; en Rusia, premiada con el Cerecedo de Periodismo 2022",
        "url": "https://www.lanacion.com.ar/agencias/pilar-bonet-corresponsal-de-aposel-paisapos-en-rusia-premiada-con-el-cerecedo-de-periodismo-2022-nid29112022/",
        "urlToImage": "https://arc-static.glanacion.com/pf/resources/images/placeholderLN.jpg?d=1069",
        "publishedAt": "2022-11-29T20:20:47Z",
        "content": "La periodista y corresponsal del diario 'El País' en Moscú (Rusia), Pilar Bonet, ha recibido el Premio de Periodismo Francisco Cerecedo de manos del rey Felipe VI, en la ceremonia de su XXXIX edición… [+3569 chars]"
    },
    {
        "source": {
            "id": null,
            "name": "Pokemaster.es"
        },
        "author": "RedADN",
        "title": "Comparación de todos los Pokémon Shiny de Escarlata y Púrpura; descubre qué necesitas saber para detectarlos en el mapa",
        "description": "Recopilan a las 400 especies que están disponibles en Pokémon Escarlata y Púrpura comparando sus versiones normales con las Shiny.",
        "url": "https://pokemaster.es/todos-pokemon-shiny-escarlata-purpura-no-124957/",
        "urlToImage": "https://easycdn.es/1/imagenes/pokemon-escarlata-y-pokemon-purpura-nintendo-switch_346250_pn3.jpg",
        "publishedAt": "2022-11-29T20:16:35Z",
        "content": "Gastly Shiny / Variocolor en Pokémon Escarlata y PúrpuraConsulta nuestra Guía de Pokémon Escarlata y PúrpuraPokémon Escarlata y Púrpura llevan ya más de una semana lanzados al mercado, dando pie … [+1794 chars]"
    },
    {
        "source": {
            "id": null,
            "name": "Cointelegraph"
        },
        "author": "Daniel Jimenez",
        "title": "Reebok se inicia en el sector de los NFT y del Metaverso en miras a la Web3",
        "description": "Reebok quiere iniciar su presencia en el espacio de los NFT y en el metaverso Recientemente en la cuenta de Twitter de Mike Kondoudis (@KondoudisLaw) publicó una foto que demuestra la solicitud de la marca Reebok en la USPTO par de solicitudes de patentamie…",
        "url": "https://es.cointelegraph.com/news/reebok-launches-into-the-nft-and-metaverse-space-with-a-view-to-web3",
        "urlToImage": "https://images.cointelegraph.com/images/1200_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy8xYWVlZDVmMGYxMGI5M2NmNjc0NGZhMzVlMzRjYTNjNi5qcGc=.jpg",
        "publishedAt": "2022-11-29T19:55:00Z",
        "content": "Recientemente en la cuenta de Twitter de Mike Kondoudis (@KondoudisLaw) publicó una foto que demuestra la solicitud de la marca Reebok en la USPTO par de solicitudes de patentamientos sobre activos N… [+2602 chars]"
    },
    {
        "source": {
            "id": null,
            "name": "Mundodeportivo.com"
        },
        "author": "Ángel Pérez",
        "title": "Alexia protagoniza un estreno de película",
        "description": "La premier del documental de Alexia Putellas arrancó con hora y media de retraso y cierto caos organizativo, con futbolistas del primer equipo ‘encalladas’ recogiendo su invitación porque algunos de sus nombres no aparecían entre las invitadas. “Crnogorcevic,…",
        "url": "https://www.mundodeportivo.com/futbol/fc-barcelona/20221129/1001901030/alexia-protagoniza-estreno-pelicula.html",
        "urlToImage": "https://www.mundodeportivo.com/files/og_thumbnail/uploads/2022/11/29/6386632f5fd1b.jpeg",
        "publishedAt": "2022-11-29T19:53:29Z",
        "content": "La premier del documental de Alexia Putellas arrancó con hora y media de retraso y cierto caos organizativo, con futbolistas del primer equipo encalladas recogiendo su invitación porque algunos de su… [+1998 chars]"
    },
    {
        "source": {
            "id": null,
            "name": "Cointelegraph"
        },
        "author": "Daniel Jimenez",
        "title": "487 millones de números de teléfonos con cuentas en Whatsapp fueron filtrados en la Dark Web",
        "description": "Colombia es el país de LATAM con mayor cantidad de números filtrados en la base de datos publicada en una comunidad de hackers en la Dark Web Chanhpeng Zhao, mejor conocido como CZ, hizo una publicación el día sábado en su cuenta de Twitter donde informaba …",
        "url": "https://es.cointelegraph.com/news/487-millones-de-numeros-de-telefonos-con-cuentas-en-whatsapp-fueron-filtrados-en-la-dark-web",
        "urlToImage": "https://images.cointelegraph.com/images/1200_aHR0cHM6Ly9zMy5jb2ludGVsZWdyYXBoLmNvbS9zdG9yYWdlL3VwbG9hZHMvdmlldy82NDBiMDRiYWY5YzM1NTU3NGZjNThlNmI2ZGM2OTAyYS5qcGc=.jpg",
        "publishedAt": "2022-11-29T19:42:00Z",
        "content": "Chanhpeng Zhao, mejor conocido como CZ, hizo una publicación el día sábado en su cuenta de Twitter donde informaba y alertaba a los usuarios acerca de la filtración y posteriormente venta de una base… [+2893 chars]"
    }
]
"""
