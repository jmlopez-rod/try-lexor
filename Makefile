pip:
	virtualenv virtual_env && source virtual_env/bin/activate && pip install -r requirements.txt

pip-save:
	pip freeze > requirements.txt
