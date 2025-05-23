from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_docker():
    return '<h1>Hi Uma Santhosh</h1><br><p>Have a nice day!</p> '

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
