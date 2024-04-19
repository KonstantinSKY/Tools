#!/bin/python

import sys
import subprocess
print("Install and test web driver")


# FIXME test
#subprocess.run(["pip-review", "--auto"])
#subprocess.check_call([sys.executable, '-m', 'pip', 'install', 'selenium'])

import time
from selenium import webdriver
from selenium.webdriver.common.by import By


driver = webdriver.Chrome()  # Optional argument, if not specified will search path.

driver.get('http://www.google.com/');
time.sleep(5) # Let the user actually see something!
search_box = driver.find_element(By.TAG_NAME, 'input')
search_box.send_keys('ChromeDriver')
search_box.submit()
print("Done! wait 15 min")
time.sleep(15) # Let the user actually see
