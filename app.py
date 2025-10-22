from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Welcome to the GIMPA Hostel Management System (HMS)!"

if __name__ == '__main__':
    # Running in debug mode for development
    app.run(debug=True)




from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Welcome to the GIMPA Hostel Management System (HMS)!"

if __name__ == '__main__':
    # Running in debug mode for development
    app.run(debug=True)

