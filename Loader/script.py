import requests
import time

url = "https://api.api-ninjas.com/v1/cars?limit=1&model="


lista_de_queries = [
    "i8",
    "p1",
    "918 spyder",
    "velar",
    "f430",
    "488",
    "458",
    "vogue",
    "camry",
    "corolla",
    "yaris",
    "camaro",
    "mustang",
    "m3",
    "m4",
    "5 series",
    "taycan",
    "r1t",
    "f150",
    "rs6",
    "A3",
    "X5",
    "M2",
    "cayenne",
    "gt3",
    "cayman",
    "civic",
    "transit",
    "clio",
    "megane",
    "duster",
    "a4",
    "LFA",
    "Aventador",
    "huracan",
    "RSQ8",
    "SQ7",
    "r8",
    "a45",
    "a35",
    "s63",
    "defender"
]

headers = {"X-Api-Key":"3Pu5lpJ3oy6/lRVORKltbA==Npqk1aF874l1KSSr"}

#podem usar a minha API key. é na boa.


for query in lista_de_queries:
    time.sleep(1)
    final_url = url + query
    r = requests.get(final_url, headers=headers)
    data = r.json()
    #apenas para retirar respostas sem content, no caso de o modelo não estar na database da API. o 100 foi +/- um tiro no escuro

    try:
        print( data[0]['make'] + ", " + data[0]['model'] + ", " + str(data[0]['year']) + ", " + data[0]['class'] + ", " + str(data[0]['combination_mpg']) + ", " + data[0]['drive'] + ", " + data[0]['fuel_type'] + ", " + data[0]['transmission'])

    except (IndexError, KeyError) as e:
        pass

