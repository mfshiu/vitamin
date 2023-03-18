from flask import Flask, render_template

import config

app = Flask(__name__)
app.config['SEND_FILE_MAX_AGE_DEFAULT'] = 0


@app.route('/')
def home():
    return render_template('/vertical-menu-template/index.html')

@app.route('/hello')
def hello():
    return "Hello world! :)"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
    # app.run(host=config.app_ip, port=config.app_port)
    