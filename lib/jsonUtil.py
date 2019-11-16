import json
import os


def writeData(fileName, mode, cucm, user, passwd, tftp):
    data = {}
    data['config'] = []
    data['config'].append({
        'mode': mode,
        'cucm': cucm,
        'user': user,
        'pass': passwd,
        'tftp': tftp
    })

    with open(fileName, 'w') as outfile:
        json.dump(data, outfile, indent=4)


def readData(fileName):
    result = []

    with open(fileName) as json_file:
        data = json.load(json_file)
        for p in data['config']:
            print('mode: ' + p['mode'])
            print('cucm: ' + p['cucm'])
            print('pass: ' + p['pass'])
            print('user: ' + p['user'])
            print('tftp: ' + p['tftp'])
            print('')
            result.append(p['cucm'])
            result.append(p['user'])
            result.append(p['pass'])
            result.append(p['tftp'])

    return result
