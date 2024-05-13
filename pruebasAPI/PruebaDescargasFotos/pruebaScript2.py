from googlesearch import search
import requests
import os

def download_image(query, directory):
    try:
        search_query = query + " motorcycle"
        for url in search(search_query, stop=1):
            response = requests.get(url, stream=True)
            if response.status_code == 200:
                with open(os.path.join(directory, f"{query}.jpg"), 'wb') as file:
                    file.write(response.content)
                print(f"Downloaded image for {query}")
                break
    except Exception as e:
        print(f"Failed to download image for {query}: {e}")

# Lista de modelos de motocicletas

motorcycle_models = [
    "Brute Force 300",
    "Brute Force 750 4x4i",
    "Concours 14",
    "KFX50",
    "KFX90",
    "KLR 650",
    "KLR 650 Adventure",
    "KLR 650 Traveller",
    "KLX 110R",
    "KLX 110R L",
    "KLX 140R",
    "KLX 230 SE",
    "KLX 230S",
    "KLX230",
    "KLX300",
    "KLX300 SM",
    "KX 450SR",
    "KX100",
    "KX112",
    "KX250",
    "KX250X",
    "KX450",
    "KX450 SR",
    "KX450X",
    "KX65",
    "KX85",
    "Ninja 650",
    "Ninja 1000SX",
    "Ninja 1000SX Tourer",
    "Ninja 125",
    "ADV150",
    "ADV350",
    "Ace 125",
    "Activa",
    "Activa 125",
    "Africa Twin",
    "Africa Twin Adventure Sports",
    "AirBlade 150",
    "BeAT Street",
    "Benly",
    "CB1000R",
    "CB1000R Black Edition",
    "CB125F",
    "CB125R",
    "CB125e",
    "CB150F",
    "CB200X",
    "CB300R",
    "CB300R Neo Sports Cafe",
    "CB350RS",
    "CB500F",
    "CB500X",
    "CB650R",
    "CBR1000RR-R Fireblade",
    "CBR1000RR-R Fireblade SP",
    "CBR150R",
    "CBR300R",
    "CBR500R",
    "CBR600RR",
    "CBR650R",
    "CD110 Dream",
    "CD70",
    "CD70 Dream",
    "CG 125",
    "CMX1100 Rebel",
    "CMX500 Rebel",
    "CRF1000L Adventure Sports",
    "CRF1000L Africa Twin",
    "CRF110F",
    "CRF125F",
    "CRF125F Big Wheel",
    "CRF150R",
    "CRF150RB",
    "CRF250F",
    "CRF250R",
    "CRF250RX",
    "CRF250RX Enduro",
    "CRF300 Rally",
    "CRF300L",
    "CRF300L Rally",
    "CRF300RX Enduro",
    "CRF400RX",
    "CRF400RX Enduro",
    "CRF450R",
    "CRF450R-S",
    "CRF450RL",
    "CRF450RWE",
    "CRF450RX",
    "CRF450RX Enduro",
    "CRF450X",
    "CRF50F",
    "CT125",
    "Click 125i",
    "Dio 110",
    "Elite 125",
    "Fireblade SP 30th Anniversary",
    "Forza 125",
    "Forza 350",
    "Forza 750",
    "FourTrax Foreman 4x4",
    "FourTrax Foreman Rubicon 4x4",
    "FourTrax Rancher",
    "FourTrax Recon",
    "FourTrax Rincon",
    "Fury",
    "GL 1800 Gold Wing Tour",
    "GL 1800 Gold Wing Tour DCT",
    "GL1800 Gold Wing",
    "GL1800 Gold Wing DCT",
    "Genio",
    "Gold Wing",
    "Gold Wing Tour",
    "Grazia",
    "Grom",
    "Hornet 2.0",
    "Livo",
    "MSX125",
    "Metropolitan",
    "Monkey 125",
    "Montesa 4 Ride",
    "CD110 Dream",
    "CD70",
    "CD70 Dream",
    "CG 125",
    "CMX1100 Rebel",
    "CMX500 Rebel",
    "CRF1000L Adventure Sports",
    "CRF1000L Africa Twin",
    "CRF110F",
    "CRF125F",
    "CRF125F Big Wheel",
    "CRF150R",
    "CRF150RB",
    "CRF250F",
    "CRF250R",
    "CRF250RX",
    "CRF250RX Enduro",
    "CRF300 Rally",
    "CRF300L",
    "CRF300L Rally",
    "CRF300RX Enduro",
    "CRF400RX",
    "CRF400RX Enduro",
    "CRF450R",
    "CRF450R-S",
    "CRF450RL",
    "CRF450RWE",
    "CRF450RX",
    "CRF450RX Enduro",
    "CRF450X",
    "AG125",
    "AG200F",
    "Aerox 155",
    "Bolt R-Spec",
    "Crypton",
    "Delight 125",
    "FJR1300AE",
    "FJR1300ES",
    "FZ 25",
    "FZ-FI",
    "FZ-S Fi",
    "FZ-S Fi Deluxe",
    "FZ-X",
    "FZS 25",
    "FZi",
    "Fascino 125Fi",
    "Grizzly 90",
    "Grizzly EPS",
    "Grizzly EPS SE",
    "Grizzly EPS XT-R",
    "Kodiak 450",
    "Kodiak 450 EPS",
    "MT-03",
    "MT-07",
    "MT-07HO",
    "MT-09",
    "MT-09 SP",
    "MT-10",
    "MT-10 SP",
    "MT-125",
    "MT-15",
    "Mio Gear",
    "Mio Gravis",
    "Mio Sporty",
    "Mio i125",
    "NM-X",
    "NMAX 125",
    "NMAX 155",
    "Neo 125 UBS",
    "Neos 4",
    "Niken",
    "PW50",
    "R1",
    "R1 GYTR VR46",
    "R1 World GP 60th Anniversary",
    "R125",
    "R125 World GP 60th Anniversary",
    "R15",
    "R15 V4",
    "R15M",
    "R15M MotoGP Edition",
    "R15S",
    "R1M",
    "R3",
    "R3 World GP 60th Anniversary",
    "R6 GYTR",
    "R6 Race",
    "R7",
    "R7 World GP 60th Anniversary",
    "Raptor 700"
]

# Directorio de salida para las imágenes descargadas
output_directory = "motorcycle_images"

if not os.path.exists(output_directory):
    os.makedirs(output_directory)

# Descargar imágenes para cada modelo de motocicleta
for model in motorcycle_models:
    download_image(model, output_directory)
