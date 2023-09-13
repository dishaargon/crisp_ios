
import Crisp

public struct CrispiOSPlugin {

    public init() {
    }
    
    public func sdkConfigure(websiteId : String){
        CrispSDK.configure(websiteID: websiteId)
    }
}
