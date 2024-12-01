# Creates virtual environment
python -m venv .venv

# Activate virtual environment (Windows)
.venv\Scripts\activate

# OR for macOS/Linux
# source .venv/bin/activate

# Install dependencies
pip install -r requirements.txt

echo "Done! Now type `python manage.py runserver` to run server"
