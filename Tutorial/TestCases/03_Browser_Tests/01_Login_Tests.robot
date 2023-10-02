*** Settings ***
Library     Browser


*** Test Cases ***
Login with correct data
    New Browser    headless=False
    New Context
    New Page    http://car.keyword-driven.de
    Highlight Elements    text = Login
    Highlight Elements    text = Login >> xpath=../..
    Highlight Elements    text = Login >> xpath=../.. >> label.switch >> input
    Get Text	id=button_login    ==    login

    Type Text    id=input_username    schulung01
    Type Text    id=input_password    @RBTFRMWRK@
    Click    id=button_login
    Get Title    ==    CarConfigurator
    Get Url    ==    http://car.keyword-driven.de/list
