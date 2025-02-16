#### generate auth token for Cisco DNA center (https://sandboxdnac.cisco.com/dna/system/api/v1/auth/token)

######## with curl

############ activate venv:

source /home/genaroarismendi/environments/gman37/bin/activate

############ get to m5 folder: 

cd /home/genaroarismendi/nickrusso/devasc1/m5

############ execute get_token.sh:

(view with vim:)
curl -X POST \
  -u 'devnetuser:Cisco123!' \
  -H 'Content-Type: application/json' \
  -k --insecure \
  https://sandboxdnac.cisco.com/dna/system/api/v1/auth/token

(gman37) root@devbox:/home/genaroarismendi/nickrusso/devasc1/m5# ./get_token.sh
{"Token":"[token_here]"}

######## with python

############ activate venv:

source /home/genaroarismendi/environments/gman37/bin/activate

############ get to m6 folder: 

cd /home/genaroarismendi/nickrusso/devasc1/m6

############ execute python auth_token.py:

include verify=False in the requests.post method to avoid error 'ssl certificate_verify_failed python requests'

(gman37) root@devbox:/home/genaroarismendi/nickrusso/devasc1/m6# python auth_token.py
/home/genaroarismendi/environments/gman37/lib/python3.8/site-packages/urllib3/connectionpool.py:1095: InsecureRequestWarning: Unverified HTTPS request is being made to host 'sandboxdnac.cisco.com'. Adding certificate verification is strongly advised. See: https://urllib3.readthedocs.io/en/latest/advanced-usage.html#tls-warnings
  warnings.warn(
[token_here]
(gman37) root@devbox:/home/genaroarismendi/nickrusso/devasc1/m6#