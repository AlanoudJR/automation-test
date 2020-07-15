*** Settings ***
Library     Selenium2Library


*** Variables ***
${URL}  removed
${Browser}     Chrome

*** Keywords ***
Start Browser and Maximize
    Open Browser    ${URL}     ${Browser}
    Maximize browser window

Selecting_Entity

    [Arguments]  ${Entity}
    #Selecting an entity#
    Wait until element is visible  ${Entity}
    click element     ${Entity}

Enter_Verification_Code 
    Wait until element is visible  id=VerificationCode    1234
    Input text  id=VerificationCode    1234
    Click button   //*[@Class= "ajs-button ajs-ok"]
    
    Wait For Condition                 return document.readyState=="complete"
    #Wait until element is visible   //*[@class="ajs-button popupCancleStyle"]
    #Click button   //*[@class="ajs-button popupCancleStyle"]
    Execute Javascript  document.querySelector("body > div.alertify.ajs-movable.ajs-resizable.ajs-closable.ajs-pinnable.ajs-pulse > div.ajs-modal > div > div.ajs-footer > div.ajs-primary.ajs-buttons > button.ajs-button.popupCancleStyle").click();
    
    Wait For Condition                 return document.readyState=="complete"
    Wait until element is visible   //*[@class="ajs-button popupCancleStyle"]
    Click button   //*[@class="ajs-button popupCancleStyle"]


Navigating_to_MedicalCoding
#Assert welcome page
    wait until element is visible   removed
    #Navigating to Medical coding page#
    Click element     id=li_menu_item_7
    Click element      id=li_menu_Child_24
    Click element      id=li_menu_Child_24

    Select Frame     id=iframeAmanatService   # Select frame with id or name 'top-frame'

    Wait Until Element Is Visible    //*[@id="root"]/div/div/div[2]/div[2]/div[2]/div/div/a/a
    Click element        //*[@id="root"]/div/div/div[2]/div[2]/div[2]/div/div/a/a     # Click link 'example' in the selected frame


    Scroll Element Into View    //*[@id="root"]/div/div[2]/div/div[1]/div[4]/div/div
