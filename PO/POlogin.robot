*** Settings ***
Library     Selenium2Library

*** Variables ***
${ID_Entity}    1111111131
${ID_Superadmin}    1111111119
${Passowrd}     123456

*** Keywords ***
Login_Entity
    Input text      id=UserName     ${ID_Entity}
    Input Password      id=Password     ${Passowrd}
    Click button    id=LoginButton

