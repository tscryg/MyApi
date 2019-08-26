//
//  BluetoothTool.swift
//  MyApi
//
//  Created by tscryg on 2019/8/26.
//  Copyright © 2019 tscryg. All rights reserved.
//

import CoreBluetooth

protocol BluetoothClientToolDelegate {
    
}

class BluetoothClientTool: NSObject, CBCentralManagerDelegate {
    
    var blueManager : CBCentralManager?
    
    var bleDelegate : BluetoothClientToolDelegate?
    //MARK: init
    init(delegate:BluetoothClientToolDelegate? ,queue:DispatchQueue?) {
        
        super.init()
        
        if delegate != nil {
            bleDelegate = delegate
        }
        
        if let bleQueue = queue {
            blueManager = CBCentralManager(delegate: self, queue: bleQueue, options: nil)
        }
        
    }
    
    //MARK: Bluetooth Delegate
    //MARK: #Monitor Device Status
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch central.state {
        case .poweredOn:
            break
        case .poweredOff:
            break
        case .resetting:
            break
        case .unauthorized:
            break
        case .unknown:
            break
        case .unsupported:
            break
        default:break
        }
    }
    
    //MARK: #Connnect And DisConnect Device Process
    
    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        
    }
    
    func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?) {
        
    }
    
    //MARK: #Discover device And Advertisement Data
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        
    }
    
    
    func centralManager(_ central: CBCentralManager, willRestoreState dict: [String : Any]) {
        
    }
    

    
    

}
