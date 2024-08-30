#!/usr/bin/env python

"""
script para imprimir hostname, management IP y ID de los dispositivos en Cisco DNA Center
OJO, hay que actualizar el X-Auth-Token cada cierto tiempo para que sea valido (esto se hace 
corriendo ./get_token.sh en la carpeta /home/genaroarismendi/nickrusso/devasc1/m5 o directamente en Postman
"""

import requests
requests.packages.urllib3.disable_warnings()


def get_devices():
    """
    Gets an access token from Cisco DNA Center. Returns the token
    string if successful; raises HTTPError otherwise.
    """

    # Declare useful local variables to simplify request process
    api_path = "https://sandboxdnac.cisco.com/dna"
    auth = ("devnetuser", "Cisco123!")
    headers = {"Content-Type": "application/json",
        "X-Auth-Token": "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MGVjNGU0ZjRjYTdmOTIyMmM4MmRhNjYiLCJhdXRoU291cmNlIjoiaW50ZXJuYWwiLCJ0ZW5hbnROYW1lIjoiVE5UMCIsInJvbGVzIjpbIjVlOGU4OTZlNGQ0YWRkMDBjYTJiNjQ4ZSJdLCJ0ZW5hbnRJZCI6IjVlOGU4OTZlNGQ0YWRkMDBjYTJiNjQ4NyIsImV4cCI6MTcwOTkzNzQwOCwiaWF0IjoxNzA5OTMzODA4LCJqdGkiOiIzODk0ZThlZS04YTg2LTQ2N2EtYTVjMy03ZDc3YzdiYWJkZWQiLCJ1c2VybmFtZSI6ImRldm5ldHVzZXIifQ.SQs9sJGZ_gkz2w6RVjpxG8g3bfoNEC99pnfSS-SPmRtVhRiGIBKVIOHf-62eWg1Xm-rzYG12N0CNDp3HFO6KR3GsK5amJyCY9yzllBlFFD2gofyHBOIPmleXiXpD-xWrEBuATZ9i1Twd7IdWiXhNcRDdEUQUdFDj5rNak-Zjat3ElZqLa7IsR50npR2SNdwDv9mphUqxRKYAEUZ3akad5-v33xGPQE1Di_dvb3WshPQ2LumyZNWhXWKpGJOj_VYRH_TrQ5En7aizn76vgtV2h60O0z1AocS2q8_Hs64FyL6QLmkIl3kOuIPFuoz59lkvCUaSFDDbiYggQhvBp1MovA"}

    # Issue HTTP POST request to the proper URL to request a token
    auth_resp = requests.get(
        f"{api_path}/intent/api/v1/network-device", auth=auth, headers=headers, verify=False
    )

    # If successful, print token. Else, raise HTTPError with details
    auth_resp.raise_for_status()
    devices = auth_resp.json()["response"]
    return devices


def main():
    """
    Execution begins here.
    """

    devices = get_devices()
    #print(devices)

    # printing the list using loop
    for n in range(len(devices)):
        ## print (devices[n])
        print("\n")
        print('{:>20}{}{:>20}'.format('device',' ', devices[n]['hostname']))
        print('{:>20}{}{:>20}'.format('management IP',' ', devices[n]['managementIpAddress']))
        print('{:>20}{}{:>20}'.format('ID',' ',devices[n]['id']))
        print("\n")

    #print (devices[0]['hostname'])

if __name__ == "__main__":
    main()