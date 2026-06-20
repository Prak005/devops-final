from flask import Flask
from flask_talisman import Talisman

app = Flask(**name**)

Talisman(
app,
force_https=False,
strict_transport_security=True,
session_cookie_secure=True,
content_security_policy={
'default-src': "'self'"
}
)

from service import routes
