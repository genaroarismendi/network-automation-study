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
        "X-Auth-Token": "token_here"}

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