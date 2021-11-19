from flask import Flask

app = Flask(__name__)

@app.route('/albane')
def hello():
  return 'Hello world'
