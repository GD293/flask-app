
# Define a route (homepage)
from flask import Flask

app = Flask(__name__)

# Home page
@app.route("/")
def home():
    return "Hello, USER! 🚀 This is my first web app."

# About page
@app.route("/about")
def about():
    return "This is the about page. Made with Flask 💡"

# Contact page
@app.route("/contact")
def contact():
    return "This is the contact page. Reach us at devops@example.com"

if __name__ == "__main__":
    app.run(host="0.0.0.0",port=5000,debug=True)
