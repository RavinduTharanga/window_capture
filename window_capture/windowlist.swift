//
//  windowlist.swift
//  window_capture
//
//  Created by MyMac on 2/1/23.
//

import Foundation
func load(){
    
    let options = CGWindowListOption(arrayLiteral: .excludeDesktopElements, .optionOnScreenOnly)
    let windowsListInfo = CGWindowListCopyWindowInfo(options, CGWindowID(0))
    let windowlist = windowsListInfo as! [[String:Any]]
    //let windowlist = infoList.filter{ $0["kCGWindowLayer"] as! Int == 0 }

    //        let json = try! JSONSerialization.data(withJSONObject: windowlist)
    //        let jsonString = String(data: json, encoding: .utf8)
    let jsonData = try! JSONSerialization.data(withJSONObject: windowlist, options: [])
    let decoded = String(data: jsonData, encoding: .utf8)!
    //     print(decoded)
    let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    let pathWithFileName = documentsDirectory.appendingPathComponent("model.json")
    try? decoded.write(to: pathWithFileName, atomically: true, encoding: .utf8)
    print(windowlist)


}

