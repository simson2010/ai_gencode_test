import Foundation

func main() -> Int { 
    print("begin")
    let view3TrackManager = View3TaggingManager()
    view3TrackManager.trackViewEntry()
    view3TrackManager.trackViewList()
    view3TrackManager.trackButtonDeleteClick()
    view3TrackManager.trackButtonHelpClick()
    view3TrackManager.trackButtonBackClick()

    print("end")
    return 0 
}
let _ = main()
