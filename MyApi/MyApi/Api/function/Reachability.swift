//
//  Reachability.swift
//  MyApi
//
//  Created by tscryg on 2019/8/22.
//  Copyright © 2019 tscryg. All rights reserved.
//

import SystemConfiguration

enum NetworkStatus {
    case NotReachable
    case ReachableViaWiFi
    case ReachableViaWWAN
}


class Reachability: NSObject {
    var reachability: SCNetworkReachability?
    init(address:String?) {
        super.init()
//        sockaddr_in
    }
    
    init(localAddress:String? , remoteAddress:String?) {
        super.init()
    }
    
    init(nodeName:String?) {
        super.init()
    }
    
    func getStatus() {
        
    }
    
    func reachabilitySetCallback() -> Void {
        
    }
    
    func ReachabilityScheduleWithRunLoop() -> Void {
        
    }
    
}
