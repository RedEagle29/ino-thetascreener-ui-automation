*** Settings ***
Resource            ../ui_resources/ui_resources.resource
Resource            ../ui_resources/ui_common_setup_teardown.resource

Suite Setup         Open Browser To Landing Page  ${URL}
Suite Teardown      Close Browsers


*** Test Cases ***

Clicking Trade On ThetaSwap Button From Main Header Opens ThetaSwap.org In New Tab
    Click Trade On ThetaSwap Button From Main Header
    ThetaSwap Link Should Be Opened In A New Browser Tab
    [Teardown]  Capture Page Screenshot
    

*** Keywords ***

## Validation Keywords ##

ThetaSwap Link Should Be Opened In A New Browser Tab
    Switch Window  NEW
    Wait Until Location Contains  https://swap.thetatoken.org/swap