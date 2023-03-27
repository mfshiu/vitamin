from flask import Flask, render_template

import config

app = Flask(__name__)
app.config['SEND_FILE_MAX_AGE_DEFAULT'] = 0

@app.context_processor
def inject_stage_and_region():
    return dict(title="TPRAI Vitamin")

@app.route('/')
def home():
    return render_template('/index.html')

@app.route('/app-user-list.html')
def userList():
    return render_template('/app-user-list.html')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
    #app.run(host=config.app_ip, port=config.app_port)
    