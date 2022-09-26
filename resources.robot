*** Setting ***
Documentation         Global resources
Library               SeleniumLibrary
Resource              pages/_IMPORT_PAGES.robot

*** Variables ***
${HOMEPAGE}           https://www.elevenia.co.id/

*** Keywords ***
Open Chrome Browser
  [Arguments]         ${url}
  Open Browser        url=${url}    browser=Chrome
  Set Window Size     1366    768       True
