# cw_praca_z_kodem
cw_praca_z_kodem

## Jak poprawnie zainstalować zależności i uruchomić aplikację

Należy pobrać repozytorium

```bash
git clone https://github.com/wrx75752/cw_praca_z_kodem.git
```

Wejść do niego
```bash
cd cw_praca_z_kodem
```

Uruchomić komendę make
```bash
make
```

## Odpowiedzi z curl

```bash
ciecia@delta:/mnt/d/Data/School/autom$ curl http://127.0.0.1:5000
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>FlaskBlog</title>
</head>
<body>
   <h1>Welcome to FlaskBlog</h1>
</body>
</html>ciecia@delta:/mnt/d/Data/School/autom$ curl http://127.0.0.1:5000/hello
<!doctype html>
<html lang=en>
<title>Redirecting...</title>
<h1>Redirecting...</h1>
<p>You should be redirected automatically to the target URL: <a href="http://127.0.0.1:5000/hello/">http://127.0.0.1:5000/hello/</a>. If not, click the link.
ciecia@delta:/mnt/d/Data/School/autom$ curl http://127.0.0.1:5000/hello/ja
<!doctype html>
<title>Hello from Flask</title>

  <h1>Hello ja!</h1>
```


## Przed i po zmianie parametru name:

```bash
ciecia@delta:/mnt/d/Data/School/autom$ curl http://127.0.0.1:5000/hello/
<!doctype html>
<title>Hello from Flask</title>

  <h1>Hello, World!</h1>

ciecia@delta:/mnt/d/Data/School/autom$ curl http://127.0.0.1:5000/hello/
<!doctype html>
<title>Hello from Flask</title>

  <h1>Hello jakub!</h1>
```


## Wynik wykonania polecenia make

```bash
(venv) ciecia@delta:/mnt/d/Data/School/autom/cw_praca_z_kodem$ make
pip3 install -r requirements.txt
Requirement already satisfied: Flask==2.3.2 in ./venv/lib/python3.9/site-packages (from -r requirements.txt (line 1)) (2.3.2)
Requirement already satisfied: Werkzeug>=2.3.3 in ./venv/lib/python3.9/site-packages (from Flask==2.3.2->-r requirements.txt (line 1)) (2.3.4)
Requirement already satisfied: blinker>=1.6.2 in ./venv/lib/python3.9/site-packages (from Flask==2.3.2->-r requirements.txt (line 1)) (1.6.2)
Requirement already satisfied: Jinja2>=3.1.2 in ./venv/lib/python3.9/site-packages (from Flask==2.3.2->-r requirements.txt (line 1)) (3.1.2)Requirement already satisfied: itsdangerous>=2.1.2 in ./venv/lib/python3.9/site-packages (from Flask==2.3.2->-r requirements.txt (line 1)) (2.1.2)
Requirement already satisfied: click>=8.1.3 in ./venv/lib/python3.9/site-packages (from Flask==2.3.2->-r requirements.txt (line 1)) (8.1.3) 
Requirement already satisfied: importlib-metadata>=3.6.0 in ./venv/lib/python3.9/site-packages (from Flask==2.3.2->-r requirements.txt (line 1)) (6.6.0)
Requirement already satisfied: zipp>=0.5 in ./venv/lib/python3.9/site-packages (from importlib-metadata>=3.6.0->Flask==2.3.2->-r requirements.txt (line 1)) (3.15.0)
Requirement already satisfied: MarkupSafe>=2.0 in ./venv/lib/python3.9/site-packages (from Jinja2>=3.1.2->Flask==2.3.2->-r requirements.txt 
(line 1)) (2.1.3)
pylint app.py

-------------------------------------------------------------------
Your code has been rated at 10.00/10 (previous run: 7.14/10, +2.86)

python3 -m flask run
 * Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on http://127.0.0.1:5000
Press CTRL+C to quit
```