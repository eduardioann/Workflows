from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Good evening, sir! \n You are very welcomed to my page. \n Enjoy!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001)
