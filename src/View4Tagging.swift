import Foundation

public enum View4TaggingKeys: String { 
    case type
    case pageName
    case pageUrl
    case title
    case subTitle
    case field1
    case field2
    case actionName
    case actionValue
    case camLevel
}

// create struct View4TaggingManager to send data to TaggingManager
// and create methods based on level 1 keys in view4spec.json
// method name should be full of each first level key in view4spec.json
// method name like "track" + level 1 key in view4spec.json and only include alphabet and number
// and all keys match in enum View4TaggingKeys
// and all values should match each json object in view4spec.json
// and each method has parameter of type [String: String] and name is data
// and call trackView(data:) or trackEvent(data:) in TaggingManager based on "type" key of each JSON object
// and exclude "type" key
// in each method, merge data parameter with "type" key and value of each method

struct View4TrackingManager {
    private let tracker: TrackingManager // Replace with your actual tracking manager implementation

    private func mergeData(_ data: [String: String], into trackingData: inout [String: String]) {
        for (key, value) in data {
            trackingData[key] = value
        }
    }

    func trackViewAcountEntry(data: [String: String]) {
        var trackingData: [String: String] = [
            View4TaggingKeys.type.rawValue: "view",
            View4TaggingKeys.pageName.rawValue: "account view entry",
            View4TaggingKeys.pageUrl.rawValue: "list:home:accountdetail:enter page",
            View4TaggingKeys.camLevel.rawValue: "30|40",
            View4TaggingKeys.title.rawValue: "Display",
            View4TaggingKeys.field1.rawValue: "account number",
            View4TaggingKeys.field2.rawValue: "account type"
        ]
        mergeData(data, into: &trackingData)
        tracker.trackView(trackingData)
    }

    func trackViewAccountList(data: [String: String]) {
        var trackingData: [String: String] = [
            View4TaggingKeys.type.rawValue: "view",
            View4TaggingKeys.pageName.rawValue: "account list view",
            View4TaggingKeys.pageUrl.rawValue: "list:home:accountdetail:list",
            View4TaggingKeys.title.rawValue: "list",
            View4TaggingKeys.camLevel.rawValue: "30|40",
            View4TaggingKeys.subTitle.rawValue: "sub list",
            View4TaggingKeys.field1.rawValue: "account list",
            View4TaggingKeys.field2.rawValue: "account index"
        ]
        mergeData(data, into: &trackingData)
        tracker.trackView(trackingData)
    }

    func trackListButtonDeleteClick(data: [String: String]) {
        var trackingData: [String: String] = [
            View4TaggingKeys.type.rawValue: "event",
            View4TaggingKeys.pageUrl.rawValue: "list:home:accountdetail:deletebutton:click",
            View4TaggingKeys.camLevel.rawValue: "30|40",
            View4TaggingKeys.actionName.rawValue: "Delete Account",
            View4TaggingKeys.actionValue.rawValue: "delete"
        ]
        mergeData(data, into: &trackingData)
        tracker.trackEvent(trackingData)
    }

    func trackCellButtonHelpClick(data: [String: String]) {
        var trackingData: [String: String] = [
            View4TaggingKeys.type.rawValue: "event",
            View4TaggingKeys.pageUrl.rawValue: "cell:home:accountlist:buttonHelp:click",
            View4TaggingKeys.camLevel.rawValue: "30|40",
            View4TaggingKeys.actionName.rawValue: "show account help",
            View4TaggingKeys.actionValue.rawValue: "showAccountHelp"
        ]
        mergeData(data, into: &trackingData)
        tracker.trackEvent(trackingData)
    }

    func trackCellButtonBackClick(data: [String: String]) {
        var trackingData: [String: String] = [
            View4TaggingKeys.type.rawValue: "event",
            View4TaggingKeys.pageUrl.rawValue: "cell:home:accountlist:buttonBack:click",
            View4TaggingKeys.camLevel.rawValue: "30|40",
            View4TaggingKeys.actionName.rawValue: "GoBack",
            View4TaggingKeys.actionValue.rawValue: "backtoaccountview"
        ]
        mergeData(data, into: &trackingData)
        tracker.trackEvent(trackingData)
    }
}
