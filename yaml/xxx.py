import yaml
import pprint

with open('example.yaml','r') as file:
    data = yaml.load(file,Loader=yaml.FullLoader)
    print(data)
    # pprint.pprint(data)
    # print(type(data))
    # print(type(data['student']))

    # print(type(data['numbers']))

