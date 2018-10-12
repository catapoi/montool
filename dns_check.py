from flask import Flask
app = Flask(__name__)

@app.route("/")
def check_dns():
    return check_dns.py

if __name__ == "__main__":
    app.run()

