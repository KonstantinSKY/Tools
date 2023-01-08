#!/bin/python
import sys
import subprocess
print("Install and test web driver")

#subprocess.run(["pip-review", "--auto"])
#subprocess.check_call([sys.executable, '-m', 'pip', 'install', 'selenium'])

import time
from selenium import webdriver



driver = webdriver.Chrome()  # Optional argument, if not specified will search path.

driver.get('http://www.google.com/');
time.sleep(5) # Let the user actually see something!
search_box = driver.find_elements(by=name, 'q')
search_box.send_keys('ChromeDriver')
search_box.submit()
time.sleep(5) # Let the user actually see
