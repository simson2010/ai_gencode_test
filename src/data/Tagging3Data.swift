import Foundation

let data3 = """
{ 
    "viewEnter": {
        "type": "view",
        "pageName": "view1 enter",
        "pageUrl": "/home/account/enter page",
        "field1": "userlogon",
        "field2": "userlogout"
    },
    "viewExit": {
        "type": "view",
        "pageName": "view1 exit",
        "pageUrl": "/home/account/exit page",
        "field1": "userlogon",
        "field2": "userlogout"
    },
    "buttonLogonClick": {
        "type": "event",
        "pageName": "",
        "pageUrl": "/home/account/buttonLogon/click",
        "actionName": "accept",
        "actionValue": "acceptShowLogon"
    },
    "buttonHelpClick": {
        "type": "event",
        "pageName": "",
        "pageUrl": "/home/account/buttonHelp/click",
        "actionName": "show help",
        "actionValue": "showHelp"
    }
}
"""
