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
{"Token":"eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MGVjNGU0ZjRjYTdmOTIyMmM4MmRhNjYiLCJhdXRoU291cmNlIjoiaW50ZXJuYWwiLCJ0ZW5hbnROYW1lIjoiVE5UMCIsInJvbGVzIjpbIjVlOGU4OTZlNGQ0YWRkMDBjYTJiNjQ4ZSJdLCJ0ZW5hbnRJZCI6IjVlOGU4OTZlNGQ0YWRkMDBjYTJiNjQ4NyIsImV4cCI6MTY5MTk4Njk4MSwiaWF0IjoxNjkxOTgzMzgxLCJqdGkiOiI3NTc0MDliZC0xMDE5LTQwZWItYTE5MS1iMGIyZGNjZDE4NTMiLCJ1c2VybmFtZSI6ImRldm5ldHVzZXIifQ.zYXQDvkkRwu92QtFb_pmlfWHRVfcLbCyoZZqtmiF-yoNEop6zOY8B2HDnNWB6R7ToKeBKxPZtiU8qF2hL0esk-hWZgzRt9kZLuDiJf4mScUJNwogkQUsmxwvIRQNAnSqZaSdVp2jULZAC5_2vcRrrxH6T1J0W4hqJeTM9S3QfcuH_VcWfKtTBRH7CLLPBKM5SZ2OzsyC5U8H9JmiHTMYh4ryGBlruywDhqzpPg8827rE5oS02PPhRRv57Q34-oyT9yzP4G8kNE-R2MbF-Gjc4OgN0a0QHCcAFsWoTiZL3KWWCA4dgO3J6Ym7yyqRixZQNTY4fR2ZqZDQ8jcx8ZWSsQ"}

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
eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2MGVjNGU0ZjRjYTdmOTIyMmM4MmRhNjYiLCJhdXRoU291cmNlIjoiaW50ZXJuYWwiLCJ0ZW5hbnROYW1lIjoiVE5UMCIsInJvbGVzIjpbIjVlOGU4OTZlNGQ0YWRkMDBjYTJiNjQ4ZSJdLCJ0ZW5hbnRJZCI6IjVlOGU4OTZlNGQ0YWRkMDBjYTJiNjQ4NyIsImV4cCI6MTY5MTk5MTkxMSwiaWF0IjoxNjkxOTg4MzExLCJqdGkiOiJmOGUyZWI2MS02NWU1LTQ2YmMtOWJmMi03MWU1MDBiYjk1ODAiLCJ1c2VybmFtZSI6ImRldm5ldHVzZXIifQ.C48S-QguTUITlpKzoMteIVPj97BqYxZPp1k1_I7lTVyM3h32PAuO3lycvdO4LuF82To443ITIQm324spXUX5YTjknXX2DPTV_59Aq8RRK0KyHibpUnTMD9rfuSlx0ZerEfH9aIFhEZjzp7GFuwRjXlMYJ9ZFD6tKA8lPswjGFZcsppksFAVW8SHYbuKVDJVt2vF5BR6KOJ_9sFEJUQlrpHjFURlzhR6z9p2umWJvWMpUMDxrzfeW8J3Ez1j5CoBVMAmoxRRdxOFAdGQfn3ykDkVg2K1c9u3IdMU5V1cUwT_6iDYAxtYKYnOHri0xn-399XRa3wNcEVTxSGyUhmZhTg
(gman37) root@devbox:/home/genaroarismendi/nickrusso/devasc1/m6#