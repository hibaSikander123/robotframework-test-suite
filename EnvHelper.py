# Secrets.py
import os
from dotenv import load_dotenv

# Load environment variables from .env file
load_dotenv()

# Expose them for Robot Framework
username = os.getenv("OHRM_USERNAME")
password = os.getenv("OHRM_PASSWORD")
