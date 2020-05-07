*** Settings ***
Library      Selenium2Library   75   5      run_on_failure=Nothing
Resource     ../Resources/Resources1.robot
Resource     ../PO/POlogin.robot
Resource     ../PO/POformHospitalProfit.robot

*** Variables ***
${Entity}    //*[@id="32617"]
#To change the enitiy replace the number with Seha ID number


*** Test Cases ***
Test1_Profitable_Hospital

    Start Browser and Maximize
    Login_Entity
    Selecting_Entity               ${entity}
    Navigating_to_MedicalCoding
    Form Fields
    Set Screenshot Directory    path, persist=False

#This is a test automation demo, however it will not submit the request (to test without exhausting the data)
#By replacing Entity ID with Seha ID