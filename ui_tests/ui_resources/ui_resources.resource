*** Settings ***
Resource    ui_common_setup_teardown.resource


*** Variables ***

######################################
###### Button Element Definitions ####
######################################

${MAIN HEADER TRADE ON THETASWAP BUTTON}                                xpath=/html/body/div/div/div/div[1]/div[1]/a



*** Keywords ***

###########################
##### Click Element #######
###########################

Click Element With Wait
    [Arguments]    ${locator}    ${timeout}=${NONE}
    Wait Until Page Contains Element    ${locator}    ${timeout}
    Click Element    ${locator}

Click Trade On ThetaSwap Button From Main Header
    Click Element With Wait    ${MAIN HEADER TRADE ON THETASWAP BUTTON}


