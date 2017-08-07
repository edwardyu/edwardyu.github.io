---
layout: post
title:  "Headless Browsing with Python 3 + MacOS Sierra"
date:   2017-08-07 00:00:00
categories:
- cs
---

After trying for hours to find a way to automate browsing tasks with Python 3 on MacOS Sierra, I finally found the simplest way to do it. 
Avoid `PyQt` and `PySide` at all costs, they are a nightmare to install. 

Browser: Chrome

Use `brew install chromedriver` to get a headless version of Chrome installed.

Interact with the browser via Selenium.

`pip install selenium` should do the trick. And that's it!

Try this hello world script:

```
from selenium import webdriver

driver = webdriver.Chrome()
driver.get('https://google.com')
assert 'Google' in self.driver.page_source
```

<br>

*(I'm generously being supported this summer by a research grant from Columbia University. As such I'm writing a series of blog posts about my experience and interesting ideas that I come across in my field of research.)*