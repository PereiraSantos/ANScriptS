from flask import Flask, request, jsonify
import subprocess
import sqlite3
import re

listIps = []

app = Flask(__name__)

@app.route('/')
def up():
	return 'servidor up'

@app.route('/scan',methods=['POST'])
def scan():
	data = request.json

	subprocess.run(["/home/pi/server/script.sh 0 %s %s"% ('-Pn', data.get('ip'))], shell=True)

	return 'post: ok'

@app.route('/ips',methods=['GET'])
def ips():
    listIps.clear()

    with open("/home/pi/server/logs.txt", "r") as arquivo:
        ip = arquivo.read()

    for item in ip.split('\n'):
        listIps.append(item)

    return jsonify(listIps)

@app.route('/db')
def db():
	con = sqlite3.connect("/media/pi/SAMSUNG3/banco_ips/ips.db")
	con.execute("""
	    CREATE TABLE IF NOT EXISTS ip(
		id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
		description TEXT)""")
	con.execute("""
	    CREATE TABLE IF NOT EXISTS port(
		id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
		description TEXT, 
		status INTEGER)""")
		
	con.close()
	
	return 'criado tabela'

if __name__ == '__main__':
	app.run(debug=True, host='0.0.0.0')
