
*** Settings ***
Library     Selenium2Library

*** Variables ***
${Visits}   1000
*** Keywords ***

Form Fields

    # Number of patient visits.
    Input text  (//*[@id="outlined-dense"][1])[3]    ${Visits}
    # Name of medical list Manager
    Input text  (//*[@id="outlined-dense"][1])[4]    Alanoud

    # Phone number of the Manager
    Input text  (//*[@id="outlined-dense"][1])[5]    0505444348
    # Manager's email
    Input text  (//*[@id="outlined-dense"][1])[6]    alanoud@sa.sa

    # Used language for the reports DDL (English)

    # Open list
    Click element   (//div[@class="jss160 jss163 jss39 jss174"][1])[1]
    # select value
    click element   (//li[@class="jss74 jss305 jss308 jss313 jss314 jss302 jss303 jss146"])[2]

    # Radio button Folder types
    Click element   (//input[@class="jss208"])[3]


    Click element   (//input[@class="jss208"])[5]

   #Checklist
   Click element    (//input[@class="jss208"])[9]
   Click element    (//input[@class="jss208"])[10]
   # Medical coder
   Click element    (//input[@class="jss208"])[15]
   Click element    (//input[@class="jss208"])[17]

   Click element    (//input[@class="jss208"])[19]
   Click element    (//input[@class="jss208"])[21]

    #Submit
   click element    //button[@class="jss74 jss48 jss59 jss62 jss147"]

    #confirm submitting
    Click element   //button[@class="jss74 jss48 jss50 jss53 jss152"]
    wait until page contains    تم ارسال طلبك الى المدقق، الطلب قيد المراجعة

