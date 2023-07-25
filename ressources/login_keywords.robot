*** Settings ***
Library    SeleniumLibrary
Variables    ../page_objects/localisateurs.py

*** Keywords ***
ouvrir le navigateur 
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window


saisir le nom d'utilisateur
    [Arguments]    ${email}
    Sleep    3
    Clear Element Text    ${txt_login_username_id}
    Input Text    ${txt_login_username_id}    ${email}


saisir le mot de passe
    [Arguments]    ${pass}
    Sleep    3
    Clear Element Text    ${txt_login_password_id}
    Input Text    ${txt_login_password_id}    ${pass}


cliquer sur le bouton login
    Click Button    ${btn_login_xpath}


valider l'affichage d'un titre dans la page d'accueil
    [Arguments]    ${texte_entete}
    # Page Should Contain    Dashboard        1ere façon
    # 2eme façon
    Element Should Contain    ${title_header_xpath}    ${texte_entete}


fermer le navigateur
    Sleep    4
    Close Browser


