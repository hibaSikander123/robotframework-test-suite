# Robot Framework Selenium Automation with Python

This project contains automated tests for the OrangeHRM login functionality using Robot Framework with SeleniumLibrary, implemented in Python.

## Project Structure
Python_RobotFramework/ \
├── PageObjects \
│ └── Locators.py \
├── Resources/     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Contains Robot Framework keyword files \
│ └── LoginKeywords.robot \
├── TestCases/ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Contains test case files \
│ └── LoginTest.robot \
├── .env &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;#Environment variables \
├── EnvHelper.py &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Python helper to load environment variables \
├── .gitignore  \
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

## Setup Instructions

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd Python_RobotFramework

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
Create a .env file in the root directory:
   ```bash
   OHRM_USERNAME=EnterUsername
   OHRM_PASSWORD=EnterYourPassword
   
* Note: Default credentials can be used as defined in OrangeHRM login page: https://opensource-demo.orangehrmlive.com/web/index.php/auth/login 

## Running Tests
Execute the following command from the project root:
```bash
   robot TestCases/LoginTest.robot
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
* Never commit actual credentials to version control 
* Update the browser and URL in ``LoginTest.robot`` if needed

## Future Improvements

- **Multi-Page Support**: Extend framework to support additional OrangeHRM modules
- **Next Targeted Module - Recruitment Page**: Add test cases for candidate search, addition, and deletion
