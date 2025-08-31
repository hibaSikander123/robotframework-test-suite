# Secrets.py
import os
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# Expose them for Robot Framework
browser = os.getenv("BROWSER")
url = os.getenv("URL")
username = os.getenv("OHRM_USERNAME")
password = os.getenv("OHRM_PASSWORD")
firstName = os.getenv("FIRST_NAME")
middleName = os.getenv("MIDDLE_NAME")
lastName = os.getenv("LAST_NAME")
email = os.getenv("EMAIL")
resumeFilePath = os.getenv("RESUME_FILE_PATH")
resumeFileName = os.getenv("RESUME_FILE_NAME")
vacancyTitle = os.getenv("VACANCY_TITLE")