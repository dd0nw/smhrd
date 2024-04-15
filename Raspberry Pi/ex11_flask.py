from flask import Flask
import led18
import ex10_select as db

app = Flask(__name__)

@app.route('/')
def index():
    return "<h1>hello World!</h1>"

# /led/on 라우팅, 응답은 "LED ON"
# /led/off, "LED OFF"

@app.route('/led/on')
def led_on():
    return "<h1>LED ON</h1>", led18.led_on()

@app.route('/led/off')
def led_off():
    return "<h1>LED OFF</h1>", led18.led_off()

@app.route('/select')
def slt():
    r = db.select_db()
    return r

if __name__ == "__main__":
    app.run(host='192.168.219.61', port=5000)