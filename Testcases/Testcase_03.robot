*** Settings ***
Library      Selenium2Library   75   5      run_on_failure=Nothing
Resource     ../Resources/Resources1.robot
Resource     ../PO/POlogin.robot
Resource     ../PO/POformClininProfit.robot

*** Variables ***
${Entity}    //*[@id="268"]
#To change the enitiy replace the number with Seha ID number


*** Test Cases ***
Test1_Profitable_Clinic

    Start Browser and Maximize
    Login_Entity
    Selecting_Entity               ${entity}
    Navigating_to_MedicalCoding
    Form Fields
    Set Screenshot Directory    path, persist=False
