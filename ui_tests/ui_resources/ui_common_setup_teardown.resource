*** Settings ***
Library         SeleniumLibrary


*** Variables ***
##    Configurations    ##
${URL}                                          http://%{LOCAL_IP}:3000


*** Keywords ***
####################################
######### Helper Keywords ##########
####################################

Log Browser Console Entries
    ${selenium}=    Get Library Instance    SeleniumLibrary
    ${webdriver}=    Set Variable    ${selenium._drivers.active_drivers}[0]
    Log   We shall use ${webdriver} as the web driver
    ${log entries}=    Evaluate    $webdriver.get_log('browser')
    Log    ${log entries}


######################################
##### Suite and Test Case Setups #####
######################################

## Test Suite Setups ##
Open Browser To Landing Page
    [Documentation]    The most common test suite setup for test cases that just needs to open the home page in a browser.
    [Arguments]    ${url}
    Open Browser
        ...    ${url}
        ...    chrome
        ...    remote_url=http://chromium:4444
        ...    options=add_argument('--disable-dev-shm-usage');add_argument('--enable-logging=stderr');add_argument('--v=1')
    Maximize Browser Window

## Test Case Setups ##


#########################################
##### Suite and Test Case Teardowns #####
#########################################

## Test Suite Teardowns ##

Close Browsers
    Run Keyword And Ignore Error    Log Browser Console Entries
    Close All Browsers
    Sleep    2

## Test Case Teardowns ##

Reload Landing Page
    [Arguments]  ${url}
    Go To    ${url}