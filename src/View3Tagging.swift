import Foundation

// create enum View3TaggingKey 
// and all level2 keys in view3spec.json
// and rawValue is level2 key in view3spec.json
enum View3TaggingKey: String {
    case type
    case pageName
    case pageUrl
    case title
    case subTitle
    case field1
    case field2
    case actionName
    case actionValue
}

struct View3TaggingManager { 
    let trackManager = TaggingManager()

    //create methods based on level 1 keys in view3spec.json
    //and no parameters 
    //and body has data of level 2 keys in view3spec.json and type is [String: String]
    //and call trackView(data:) or trackEvent(data:) in TaggingManager based on "type" key
    //and exclude "type" key
    //method name like "track" + level 1 key in view3spec.json
        
    func trackViewEntry() {
        let data = [
            View3TaggingKey.type.rawValue: "view",
            View3TaggingKey.pageName.rawValue: "view3 entry",
            View3TaggingKey.pageUrl.rawValue: "home:accountdetail:enter page",
            View3TaggingKey.title.rawValue: "Display",
            View3TaggingKey.field1.rawValue: "account number",
            View3TaggingKey.field2.rawValue: "account type"
        ]
        trackManager.trackView(data: data)
    }
    
    func trackViewList() {
        let data = [
            View3TaggingKey.type.rawValue: "view",
            View3TaggingKey.pageName.rawValue: "account list",
            View3TaggingKey.pageUrl.rawValue: "home:accountdetail:list",
            View3TaggingKey.title.rawValue: "list",
            View3TaggingKey.subTitle.rawValue: "sub list",
            View3TaggingKey.field1.rawValue: "account list",
            View3TaggingKey.field2.rawValue: "account index"
        ]
        trackManager.trackView(data: data)
    }
    
    func trackButtonDeleteClick() {
        let data = [
            View3TaggingKey.type.rawValue: "event",
            View3TaggingKey.pageName.rawValue: "",
            View3TaggingKey.pageUrl.rawValue: "home:accountdetail:deletebutton:click",
            View3TaggingKey.actionName.rawValue: "Delete Account",
            View3TaggingKey.actionValue.rawValue: "delete"
        ]
        trackManager.trackEvent(data: data)
    }
    
    func trackButtonHelpClick() {
        let data = [
            View3TaggingKey.type.rawValue: "event",
            View3TaggingKey.pageName.rawValue: "",
            View3TaggingKey.pageUrl.rawValue: "home:accountlist:buttonHelp:click",
            View3TaggingKey.actionName.rawValue: "show account help",
            View3TaggingKey.actionValue.rawValue: "showAccountHelp"
        ]
        trackManager.trackEvent(data: data)
    }
    
    func trackButtonBackClick() {
        let data = [
            View3TaggingKey.type.rawValue: "event",
            View3TaggingKey.pageName.rawValue: "",
            View3TaggingKey.pageUrl.rawValue: "home:accountlist:buttonBack:click",
            View3TaggingKey.actionName .rawValue: "GoBack",
            View3TaggingKey.actionValue.rawValue: "backtoaccountview"
        ]   
        trackManager.trackEvent(data: data)
    }

}


