# Robot Framework Selenium Automation with Python

A comprehensive test automation suite built with Robot Framework, SeleniumLibrary, and Python for web UI testing. This project implements environment-based configuration and currently automates both login functionality and recruitment module operations (add, search, delete candidates) for a demo HR Management system. The modular structure is designed for easy expansion to additional modules.

## Project Structure

Python_RobotFramework/ \
├── PageObjects \
│ └── Locators.py \
├── Resources/     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Contains Robot Framework keyword files \
│ └── LoginKeywords.robot \
│ └── RecruitmentKeywords.robot \
│ └── Resume.pdf \
├── TestCases/ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Contains test case files \
│ └── LoginTest.robot \
│ └── RecruitmentTest.robot \
├── .env &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#Environment variables \
├── EnvHelper.py &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Python helper to load environment variables \
├── .gitignore &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\
└── README.md

## Technology Stack

- **Python 3.x** - Programming language
- **Robot Framework** - Test automation framework
- **SeleniumLibrary** - Web testing library for Robot Framework
- **Selenium WebDriver** - Browser automation tool
- **dotenv** - Python module for loading environment variables

## Prerequisites

- Python 3.x
- pip (Python package manager)
- Chrome browser (or update the browser in test cases)

## Implemented Test Cases
* ### Login Module
  * Successful login with valid credentials 
  * Verification of login success
* ### Recruitment Module
  * Navigation to recruitment section 
  * Adding new candidates with resume upload 
  * Searching for candidates by various criteria 
  * Deleting candidates with confirmation

## Security Implementation
This project uses environment variables to protect sensitive information:

* Credentials (username/password)
* Personal data (candidate information)
* File paths and personal documents 
* Application-specific configurations

All sensitive data is stored in the .env file which is excluded from version control via .gitignore.


## Setup Instructions

1. **Clone the repository**
   ```bash
   git clone <https://github.com/hibaSikander123/robotframework-test-suite.git>
   cd robotframework-test-suite

2. **Create and activate a virtual environment**
   ```bash
   python -m venv .venv 
   
   # On Windows:
   .venv\Scripts\activate
   
   # On macOS/Linux:
   source .venv/bin/activate

3. **Install Python dependencies**
   ```bash
   pip install -r requirements.txt
   
* If you don't have a requirements.txt, create one with these packages:
  ```bash
    robotframework==6.0.2
    robotframework-seleniumlibrary==6.1.0
    selenium==4.9.1
    python-dotenv==1.0.0
4. **Configure Environment Variables**

    Create a .env file in the root directory with the following variables:
   ```bash
   BROWSER=enterBrowserName
   URL=https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
   OHRM_USERNAME=enterUsername
   OHRM_PASSWORD=enterPassword
   FIRST_NAME=enterFirstName
   MIDDLE_NAME=enterMiddleName
   LAST_NAME=enterLastName
   EMAIL=enterEmail
   RESUME_FILE_PATH=Resources/enterPdfFileNameWithExtension  # Relative path to your resume file
   RESUME_FILE_NAME=enterPdfFileNameWithExtension           # Name of your resume file
   VACANCY_TITLE=enterVacancyTitle
   
* **Notes:**
  * The default credentials work with the OrangeHRM demo site (mentioned in login page)
  * The test suite requires candidate personal details (first name, middle name, last name, and email address) which can be customized according to testing data 
  * Specify the resume file's (located under Resources directory) complete path in the RESUME_FILE_PATH environment variable 
  * Include the exact name of resume file with extension(Resume.pdf) in the RESUME_FILE_NAME variable
  * Select appropriate vacancy titles from the available dropdown options in the recruitment page of the website
  * Ensure the VACANCY_TITLE environment variable matches exactly with the desired vacancy option displayed in the application interface

## Running Tests
Execute the following command from the project root:
* To Run Login Tests
    ```bash
       robot TestCases/LoginTest.robot
    ```
* To Run Recruitments Tests
    ```bash
       robot TestCases/RecruitmentTest.robot
    ```
* To Run All Tests
  ```bash
     robot TestCases/*
  ```

## Python Implementation Details
This project uses Python for:

* ``Locators.py`` - Element locator definitions
* ``EnvHelper.py`` - Environment variable management 

The test cases are written in Robot Framework syntax, which integrates seamlessly with Python code.

## Test Reports
After test execution, you'll find these output files in the project root:
* ``report.html`` - Detailed test report 
* ``log.html`` - Execution log 
* ``output.xml`` - Machine-readable output

## Important Notes
* The ``.env`` file is excluded from version control for security reasons 
* The resume file path in the ``.env`` should match your local file location 
* Update the browser and URL in the .env file if needed

## Future Improvements

- **Multi-Page Support**: Extend framework to support additional OrangeHRM modules
