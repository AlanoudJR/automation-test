*** Settings ***
Library     Selenium2Library
Resource    ../Resources/Resources1.robot
Resource    ../PO/POlogin.robot
Resource    ../PO/POform.robot

*** Variables ***
${Entity}   //*[@id="32539"]/div[2]/div[1]/h3

*** Test Cases ***
Test1
    Start Browser and Maximize
    Login_Entity
    Selecting_Entity    ${entity}
    Navigating_to_MedicalCoding
    Form Fields

   # Wait Until Page Contains     class="jss74 jss48 jss59 jss62 jss77 newLicenseButton"

