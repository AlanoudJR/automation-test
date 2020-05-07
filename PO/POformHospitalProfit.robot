
*** Settings ***
Library     Selenium2Library

*** Variables ***

${Visits}   1000
${ManagerName}  Alanoud
${ManagerMobile}  0505444348
${ManagerEmail}    alanoud@sa.sa

*** Keywords ***

Form Fields

    # معدل الخروج لقسم التنويم.
    Input text  (//*[@id="outlined-dense"][1])[3]    ${Visits}
    # Name of medical list Manager
    Input text  (//*[@id="outlined-dense"][1])[4]    ${ManagerName}

    # Phone number of the Manager
    Input text  (//*[@id="outlined-dense"][1])[5]    ${ManagerMobile}
    # Manager's email
    Input text  (//*[@id="outlined-dense"][1])[6]    ${ManagerEmail}  

############################################################################
#Radio buttons 

    # Used language for the reports DDL (Arabic)

    # Open list
    Click element   (//div[@class="jss160 jss163 jss39 jss174"][1])[1]
    # select value (selecting Arabic)
    click element   //*[@id="menu-"]/div[2]/ul/li[2]

    ###########################

    # Radio button Folder types
    # Select (Electronic and manual)
    Click element   (//input[@class="jss208"])[3]
    # To change to a different type replace the [3] at the end. [1] = Electronic and [2] = Manual [3] = Both
    ###########################

    # Radio button Writing Style
    #Select (Electronic and manual)
    Click element   (//input[@class="jss208"])[6]
    # To change to a different type replace the [5] at the end. [4] = Electronic and [5] = Manual [6] = Both

############################################################################
#Checklist
    
    #check Clinic Visit Summary [9] and Medical Evaluation Report [10]
   Click element    (//input[@class="jss208"])[9]
   Click element    (//input[@class="jss208"])[10]
    # To check a different type replace the [9] and [10] at the end (available options 7 to 13)
   
############################################################################


   # Medical coder existence (No)
   Click element    (//input[@class="jss208"])[15]
   
   # Coding help from other companies (No)
   Click element    (//input[@class="jss208"])[17]
   
   #Initiative for training medical coders (No)
   Click element    (//input[@class="jss208"])[19]

############################################################################
#Submitting

    #Send the Form
    click element    //button[@class="jss74 jss48 jss59 jss62 jss147"]

    #confirm submitting
    #Click element   //button[@class="jss74 jss48 jss50 jss53 jss152"]

   #confirmation message asserting
   #wait until page contains    تم ارسال طلبك الى المدقق، الطلب قيد المراجعة

