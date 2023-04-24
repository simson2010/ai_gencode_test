import Foundation

//create enum, named "View2CommonDataKey", values in Tagging3Data.swift, all keys
enum View2CommonDataKey: String {
    case pageName
    case pageUrl
    case field1
    case field2
    case actionName
    case actionValue
}



struct View2Tagging {
    
    let tracker: Tracker

    init(tracker: Tracker) {
        self.tracker = tracker
    }   

    //create method trackXXX methods, 
    //each method has no parameter
    //no return 
    //method body define data, [String: String] using key/value in Tagging3Data.swift
    //read each key and value puth into data dictionary in object "viewEntry"
    //in each end of method, call tracker.trackView or tracker.trackEvent based on "type" in data and pass the data to it
    func trackViewEnter() {
        var data: [String: String] = [:]
        data[View2CommonDataKey.pageName.rawValue] = "view1 enter"
        data[View2CommonDataKey.pageUrl.rawValue] = "/home/account/enter page"
        data[View2CommonDataKey.field1.rawValue] = "userlogon"
        data[View2CommonDataKey.field2.rawValue] = "userlogout"
        tracker.trackView(data: data)
    }

    func trackViewExit() {
        var data: [String: String] = [:]
        data[View2CommonDataKey.pageName.rawValue] = "view1 exit"
        data[View2CommonDataKey.pageUrl.rawValue] = "/home/account/exit page"
        data[View2CommonDataKey.field1.rawValue] = "userlogon"
        data[View2CommonDataKey.field2.rawValue] = "userlogout"
        tracker.trackView(data: data)
    }

    func trackButtonLogonClick() {
        var data: [String: String] = [:]
        data[View2CommonDataKey.pageUrl.rawValue] = "/home/account/buttonLogon/click"
        data[View2CommonDataKey.actionName.rawValue] = "accept"
        data[View2CommonDataKey.actionValue.rawValue] = "acceptShowLogon"
        tracker.trackEvent(data: data)
    }

    func trackButtonHelpClick() {
        var data: [String: String] = [:]
        data[View2CommonDataKey.pageUrl.rawValue] = "/home/account/buttonHelp/click"
        data[View2CommonDataKey.actionName.rawValue] = "show help"
        data[View2CommonDataKey.actionValue.rawValue] = "showHelp"
        tracker.trackEvent(data: data)
    }
    
}

//Create Tracker class with method trackView(data: [String: String]) and trackEvent(data: [String: String])
class Tracker {
    func trackView(data: [String: String]) {
        print("trackView: \(data)")
    }

    func trackEvent(data: [String: String]) {
        print("trackEvent: \(data)")
    }
}

//Test method, create Tracker object, create View2Tagging object, call trackXXX methods
let tracker = Tracker()
let view2Tagging = View2Tagging(tracker: tracker)
view2Tagging.trackViewEnter()
view2Tagging.trackViewExit()
view2Tagging.trackButtonLogonClick()
view2Tagging.trackButtonHelpClick()

