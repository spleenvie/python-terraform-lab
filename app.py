from flask import Flask

app = Flask(__name__)


def addition(a, b):
    return a + b


@app.route("/")
def home():
    return "Application Python déployée avec TeamCity, Docker et Terraform"


@app.route("/health")
def health():
    return {"status": "UP"}, 200


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
