import Foundation

func trackView(data: [String: String]) {
  debugPrint("view \(data)")
}

func trackEvent(data: [String: String]) {
  debugPrint("event \(data)")
}

enum CommonDataKey: String {
  case pageName
  case pageUrl
  case field1
  case field2
  case actionName
  case actionValue
}

struct Tagging {
  func trackLoginView() {
    let data = [
      CommonDataKey.pageName.rawValue: "Login Page",
      CommonDataKey.pageUrl.rawValue: "/home/login",
      CommonDataKey.field1.rawValue: "username",
      CommonDataKey.field2.rawValue: "userpassword",
    ]
    trackView(data: data)
  }

  func trackViewClose() {
    let data = [
      CommonDataKey.pageName.rawValue: "view close",
      CommonDataKey.pageUrl.rawValue: "/home/account/close page",
      CommonDataKey.field1.rawValue: "userlogon",
      CommonDataKey.field2.rawValue: "userlogout",
    ]
    trackView(data: data)
  }

  func trackViewAppear() {
    let data = [
      CommonDataKey.pageName.rawValue: "Sorry Page",
      CommonDataKey.pageUrl.rawValue: "/home/account/sorry",
      CommonDataKey.field1.rawValue: "field1",
      CommonDataKey.field2.rawValue: "field2",
    ]
    trackView(data: data)
  }

  func trackField1Click() {
    let data = [
      CommonDataKey.pageUrl.rawValue: "/home/account/sorry/field1Click",
      CommonDataKey.actionName.rawValue: "ok",
      CommonDataKey.actionValue.rawValue: "field2",
    ]
    trackEvent(data: data)
  }

  func trackField2Click() {
    let data = [
      CommonDataKey.pageUrl.rawValue: "/home/account/sorry/field2Click",
      CommonDataKey.actionName.rawValue: "close",
      CommonDataKey.actionValue.rawValue: "field3",
    ]
    trackEvent(data: data)
  }
}

let tagging = Tagging()
tagging.trackField1Click()