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

# Ćwiczenie 3

## Z 3
CI/CD (Continuous Integration/Continuous Delivery) to metodyka i zestaw praktyk, które pozwalają na częstsze, bezpieczne i automatyzowane dostarczanie zmian w kodzie aplikacji. CI/CD jest częścią metodyki DevOps i ma na celu zwiększenie częstotliwości wysyłania zmian, minimalizację błędów, zwiększenie jakości tworzonego kodu oraz usprawnienie współpracy między programistami a administratorami serwerów. Implementacja CI/CD opiera się na automatyzacji procesu dostarczania zmian, w tym testowania, wdrażania i monitorowania aplikacji.

Korzyści wynikające z CI/CD to:

- Częstsze dostarczanie zmian, co pozwala na szybsze reagowanie na potrzeby użytkowników i zmieniające się wymagania.
- Minimalizacja błędów dzięki automatycznemu testowaniu i sprawdzaniu zmian w kodzie.
- Zwiększenie współpracy i jakości kodu poprzez częste wysyłanie zmian, identyfikowanie błędów i konieczność porównywania i łączenia zmian w kodzie.

Przykładem narzędzia do implementacji CI/CD jest GitLab CI, które pozwala na automatyzację procesu budowania, testowania i wdrażania aplikacji opartych na repozytorium Git.

## Z 4

Docker jest otwartą platformą pozwalającą na tworzenie i uruchamianie aplikacji w kontenerach. Kontenery to izolowane środowiska, które zawierają wszystko, co jest potrzebne do uruchomienia aplikacji, włącznie z kodem, zależnościami i systemem operacyjnym. Docker ułatwia tworzenie, dystrybucję i skalowanie aplikacji, ponieważ kontenery są przenośne i działają w dowolnym środowisku.

Składnia i pliki konfiguracyjne obrazu Dockerowego są opisane w pliku Dockerfile. Plik ten zawiera instrukcje, które Docker wykonuje w celu zbudowania obrazu aplikacji. Przykładowy plik Dockerfile może wyglądać tak:

```dockerfile
FROM python:3.9
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["python", "app.py"]
```

W powyższym przykładzie:

- FROM określa bazowy obraz, na którym budujemy nasz obraz
- WORKDIR ustawia katalog roboczy wewnątrz kontenera
- COPY kopiuje pliki z lokalnego systemu do kontenera
- RUN wykonuje polecenia wewnątrz kontenera
- CMD definiuje polecenie, które zostanie uruchomione po uruchomieniu kontenera

Dockerfile jest następnie używany do zbudowania obrazu za pomocą polecenia docker build. Obraz można następnie uruchomić jako kontener za pomocą polecenia docker run.