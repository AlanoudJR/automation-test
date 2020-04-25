*** Settings ***
Library     Selenium2Library


*** Variables ***
${URL}  https://sehaportal.t2.sa/Account/Login
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


Navigating_to_MedicalCoding
#Assert welcome page
    wait until element is visible   //span[text()="أهلا و سهلا بكم في منصة صحة"]
    #Navigating to Medical coding page#
    Click element     id=li_menu_item_7
    Click element      id=li_menu_Child_24
    Click element      id=li_menu_Child_24

    Select Frame     id=iframeAmanatService   # Select frame with id or name 'top-frame'

    Wait Until Element Is Visible    //*[@id="root"]/div/div/div[2]/div[2]/div[2]/div/div/a/a
    Click element        //*[@id="root"]/div/div/div[2]/div[2]/div[2]/div/div/a/a     # Click link 'example' in the selected frame


    Scroll Element Into View    //*[@id="root"]/div/div[2]/div/div[1]/div[4]/div/div
