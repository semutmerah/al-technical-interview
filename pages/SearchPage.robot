*** Keywords ***
Assert Search Page Have Category
  [Arguments]       ${category_name}
  Wait Until Page Contains        ${category_name}

Sort By Most Popular
  Click Element        xpath=//a[@name='sortCdBtn'][contains(text(),'Produk terlaris')] 
  Wait Until Page Contains Element        xpath=//a[@name='sortCdBtn'][@class='active'][contains(text(),'Produk terlaris')] 
  Wait Until Page Does Not Contain Element    xpath=//div[@id='loading'][@style='display: block;']
  Wait Until Element Is Not Visible        xpath=//img[@src='/img_11ia/cartOrder/loading.gif']

Verify Search Item Loaded Successfully
  Wait Until Page Contains Element        id=product_listing

Click On Search First Result
  Wait Until Element Is Visible        xpath=//a[@class='pordLink notranslate'][1]
  Click Link        xpath=//a[@class='pordLink notranslate'][1]
