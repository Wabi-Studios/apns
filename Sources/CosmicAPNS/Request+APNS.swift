import APNS
import Vapor

extension Request {
    public var apns: Application.CosmicAPNS {
        .init(application: self.application)
    }
}

