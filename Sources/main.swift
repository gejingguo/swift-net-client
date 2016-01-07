//
// Created by andyge on 16/1/7.
//

import Foundation
import SwiftNet

print("hello world!")

do {
    var loop = Loop(ClientTCPDelegate())

    var client = TCPClient()
    try client.initWithLoop(loop)
    try client.startConnect("127.0.0.1", port: 8999)

    //print("before run.")
    try loop.run()
    print("server run ok.")

} catch {
    print("err:\(error)")
}