from flask import Flask

from app import app

@app.route('/home')
def home():
    return render_template('home.html')
