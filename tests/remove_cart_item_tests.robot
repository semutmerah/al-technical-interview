*** Setting ***
Resource              ../resources.robot
Test Setup            Open Chrome Browser   ${HOMEPAGE}
Test Teardown         Close Browser

*** Test Case ***
Remove Cart Item Should Succeed
  HomePage.Verify Home Page Loaded Successfully
  HomePage.Close Savetember Popup
  HomePage.Input Search Form        komputer
  HomePage.Click Search Button
  SearchPage.Verify Search Item Loaded Successfully
  SearchPage.Assert Search Page Have Category    Tablet, Notebook & Desktop 
  SearchPage.Sort By Most Popular
  SearchPage.Click On Search First Result
  SingleProductPage.Verify Single Product Page Loaded Successfully
  SingleProductPage.Change Item Quantity    3
  SingleProductPage.Click Add To Cart
  SingleProductPage.Confirm Click Add To Cart
  CartPage.Verify Cart Page Loaded Successfully
  CartPage.Click Change Courier
  CartPage.Cancel Change Courier
  CartPage.Delete Cart Item
  CartPage.Confirm Delete Cart Item
  CartPage.Assert No Items In Cart
