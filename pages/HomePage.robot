*** Keywords ***
Verify Home Page Loaded Successfully
  Wait Until Page Contains Element        id=AKCKwd

Close Savetember Popup
  Execute Javascript    closeLayer333();

Input Search Form
  [Arguments]       ${keyword}
  Input Text        id=AKCKwd        ${keyword}

Click Search Button
  Click Button        class=btn-search
