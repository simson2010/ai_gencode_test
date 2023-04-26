import Foundation

let spec = TagNewSpec(tagging: Tagging())
spec.trackField1Click()

struct Tagging {
    func trackView(data: [String: String]) {
        if let type = data["type"], type == "view" {
            // track view based on data
            //Tealium.trackView(data)
            debugPrint("trackView \(data)")
        }
    }
    
    func trackEvent(data: [String: String]) {
        if let type = data["type"], type == "event" {
            // track event based on data
            //Tealium.trackEvent(data)
            debugPrint("trackEvent \(data)")
        }
    }
}

// Generate enum CommonKeys using all key names in the given dictionary
enum CommonKeys: String {
    case viewClose = "viewClose"
    case viewAppear = "viewAppear"
    case field1Click = "field1Click"
    case field2Click = "field2Click"

    // Add sub key names for each dictionary
    case type = "type"
    case pageName = "pageName"
    case pageUrl = "pageUrl"
    case field1 = "field1"
    case field2 = "field2"
    case actionName = "actionName"
    case actionValue = "actionValue"

}

struct TagNewSpec { 
    let tagging: Tagging

    init(tagging: Tagging) {
        self.tagging = tagging 
    }

    // func sendSampleView(data: [String: String ]) {
    //     let data = [
    //         CommonKeys.pageName.rawValue: "pageName",
    //         CommonKeys.pageUrl.rawValue: "pageUrl"
    //     ]
    // }

    // Generate methods based on type field and send rest as parameter data
    func trackViewClose() {
        let data = [
            CommonKeys.type.rawValue: "view",
            CommonKeys.pageName.rawValue: "view close",
            CommonKeys.pageUrl.rawValue: "/home/account/close page",
            CommonKeys.field1.rawValue: "userlogon",
            CommonKeys.field2.rawValue: "userlogout"
        ]
        tagging.trackView(data: data)
    }
    
    func trackViewAppear() {
        let data = [
            CommonKeys.type.rawValue: "view",
            CommonKeys.pageName.rawValue: "Sorry Page",
            CommonKeys.pageUrl.rawValue: "/home/account/sorry",
            CommonKeys.field1.rawValue: "field1",
            CommonKeys.field2.rawValue: "field2"
        ]
        tagging.trackView(data: data)
    }
    
    func trackField1Click() {
        let data = [
            CommonKeys.type.rawValue: "event",
            CommonKeys.pageUrl.rawValue: "/home/account/sorry/field1Click",
            CommonKeys.actionName.rawValue: "ok",
            CommonKeys.actionValue.rawValue: "field2"
        ]
        tagging.trackEvent(data: data)
    }
    
    func trackField2Click() {
        let data = [
            CommonKeys.type.rawValue: "event",
            CommonKeys.pageUrl.rawValue: "/home/account/sorry/field2Click",
            CommonKeys.actionName.rawValue: "close",
            CommonKeys.actionValue.rawValue: "field3"
        ]
        tagging.trackEvent(data: data)
    }
}
