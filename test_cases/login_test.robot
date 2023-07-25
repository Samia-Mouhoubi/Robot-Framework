*** Settings ***
Resource    ../ressources/login_keywords.robot
Test Setup    GIVEN ouvrir le navigateur    ${url}    ${browser}
Test Teardown    AND fermer le navigateur

*** Variables ***
${url}=              https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}=          gc
${email}=            admin@yourstore.com
${password}=         admin
${mot a valider}=    Dashboard


*** Test Cases ***
tc01 login test
    WHEN saisir le nom d'utilisateur    ${email}
    AND saisir le mot de passe    ${password}
    AND cliquer sur le bouton login
    THEN valider l'affichage d'un titre dans la page d'accueil    ${mot a valider}


