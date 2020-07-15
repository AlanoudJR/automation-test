*** Settings ***
Library     Selenium2Library

*** Variables ***
${ID_Entity}    removed
${ID_Superadmin}    removed
${Passowrd}     removed

*** Keywords ***
Login_Entity
    Input text      id=UserName     ${ID_Entity}
    Input Password      id=Password     ${Passowrd}
    Click button    id=LoginButton

