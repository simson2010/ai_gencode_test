import Foundation

protocol Trackable { 
    func trackView(data: [String: String])
    func trackEvent(data: [String: String])
}

struct TaggingManager: Trackable {
    func trackView(data: [String : String]) {
        print("trackView: \(data)")
    }
    
    func trackEvent(data: [String : String]) {
        print("trackEvent: \(data)")
    }
}