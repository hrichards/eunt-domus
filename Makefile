latin.db:
	rm -f latin.db
	sqlite3 latin.db < latin.db.txt

dump-database:
	sqlite3 latin.db .dump > latin.db.txt

venv:
	virtualenv env
	. env/bin/activate; pip install -r requirements.txt
