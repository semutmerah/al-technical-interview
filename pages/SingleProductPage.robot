*** Keywords ***
Verify Single Product Page Loaded Successfully
  Wait Until Page Contains Element        xpath=//div[@class='compWrap card']

Change Item Quantity
  [Arguments]       ${quantity}
  Wait Until Page Contains Element        id=optionStock0
  Input Text        id=optionStock0        ${quantity}

Click Add To Cart
  Wait Until Page Contains Element    xpath=//a[.='Tambahkan ke Cart']
  Click Link                          xpath=//a[.='Tambahkan ke Cart']

Confirm Click Add To Cart
  Wait Until Element Is Visible        xpath=//div[@id='mo_lay144']
  Click Link                           xpath=//a[@class='btnStyle btnS btnRed'][.='Ya']
