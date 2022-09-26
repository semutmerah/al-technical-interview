*** Keywords ***
Verify Cart Page Loaded Successfully
  Wait Until Page Contains Element        class=shoppingCart

Click Change Courier
  Wait Until Page Contains Element        xpath=//a[@name='deliveryChangePopup'][.='Ubah Kurir']
  Click Link                              xpath=//a[@name='deliveryChangePopup'][.='Ubah Kurir']

Cancel Change Courier
  Wait Until Page Contains Element               xpath=//div[@class='dimmed']
  Execute Javascript        closeLayer();
  Wait Until Page Does Not Contain Element       xpath=//div[@class='dimmed']

Delete Cart Item
  Wait Until Page Contains Element        xpath=//td[@class='btn cartfont']/a[.='Hapus']
  Click Element                           xpath=//td[@class='btn cartfont']/a[.='Hapus']

Confirm Delete Cart Item
  Wait Until Page Contains Element            id=popCon4
  Click Link                                  id=chkDelPopY

Assert No Items In Cart
  Wait Until Page Contains Element            xpath=//strong[.='Tidak ada produk di Shopping Cart.']
