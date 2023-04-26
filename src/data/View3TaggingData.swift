let view3spec = """
{ 
    "viewEntry": {
        "type": "view",
        "pageName": "view3 entry",
        "pageUrl": "home:accountdetail:enter page",
        "title": "Display",
        "field1": "account number",
        "field2": "account type"
    },
    "viewList": {
        "type": "view",
        "pageName": "account list",
        "pageUrl": "home:accountdetail:list",
        "title": "list",
        "subTitle": "sub list",
        "field1": "account list",
        "field2": "account index"
    },
    "buttonDeleteClick": {
        "type": "event",
        "pageName": "",
        "pageUrl": "home:accountdetail:deletebutton:click",
        "actionName": "Delete Account",
        "actionValue": "delete"
    },
    "buttonHelpClick": {
        "type": "event",
        "pageName": "",
        "pageUrl": "home:accountlist:buttonHelp:click",
        "actionName": "show account help",
        "actionValue": "showAccountHelp"
    },
    "buttonBackClick": {
        "type": "event",
        "pageName": "",
        "pageUrl": "home:accountlist:buttonBack:click",
        "actionName": "GoBack",
        "actionValue": "backtoaccountview"
    }
}
"""
