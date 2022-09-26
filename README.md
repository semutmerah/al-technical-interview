# al-technical-interview

## Why I Choose to using RobotFramework?
Because I want to focus more on creating the test itself (that's what matter the most), rather than busy configuring the test framework. It also have a big community, so I can find answer easily for any problem that might happen during test development. It's open source nature also allow us to make changes to the framework code right away, if the need arise for that. We can also easily integrate it with CI/CD, like what I have here already integrated with github actions.

## PREREQUISITES

* Python version 3.8.x or above installed
* Chrome browser installed
* [Chromedriver](https://chromedriver.chromium.org/downloads) installed based on the chromebrowser version

## SETUP IN LOCAL
* Execute commands below to install robot framework + it's dependencies
  ```
  $ pip install -r requirements.txt
  ```

## RUN IN LOCAL
Simple, just run this from terminal
```
$ robot tests/remove_cart_item_tests.robot
```
