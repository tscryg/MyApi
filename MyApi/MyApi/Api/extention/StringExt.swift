//
//  StringExt.swift
//  MyApi
//
//  Created by tscryg on 2019/8/14.
//  Copyright © 2019 tscryg. All rights reserved.
//

import Foundation
import CommonCrypto

extension String {
    func md5 () ->String?{
        var hash = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
        
        if let data = self.data(using: .utf8) {
            data.withUnsafeBytes {
                _ = CC_MD5($0.baseAddress , CC_LONG(data.count), &hash)
            }
            return hash.map{String(format: "%02hhx", $0)}.joined()
            
        }
        return ""
    }
    
    func sha1() -> String?{
        var hash = [UInt8](repeating: 0, count: Int(CC_SHA1_DIGEST_LENGTH))
        
        if let data = self.data(using: .utf8){
            data.withUnsafeBytes{
                _ = CC_SHA1($0.baseAddress , CC_LONG(data.count),&hash)
            }
            return hash.map{String(format: "%02hhx", $0)}.joined()
        }
        
        return ""
    }
    
    func sha256() -> String?{
        if let data = self.data(using: .utf8){
            var hash = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
            data.withUnsafeBytes{
                _ = CC_SHA256( $0.baseAddress, CC_LONG(data.count),&hash)
            }

            return hash.map { String(format: "%02x", $0)}.joined()
        }
        return ""
    }
    func base64() -> String? {
        
        if let data = self.data(using: .utf8){
            return data.base64EncodedString()
        }
        
        return ""
    }
}
