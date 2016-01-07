//
// Created by andyge on 16/1/7.
//

import Foundation
import SwiftNet

class ClientTCPDelegate: TCPDelegate {

    init() {

    }

    func onTCPServerNewClient(server: TCPServer, err: TCPError?) {

    }

    func onTCPClientRecved(client: TCPClient) {
        //print("recv data: \(client.getReadSize()),\(client.readBuff.description)")
        guard let buf = client.getReadBuffer(client.getReadSize()) else {
            return
        }
        //print("readbuff data: \(client.getReadSize()),\(client.readBuff.description)")
        do {
            try client.send(buf)
            //print("writebuff data: \(client.writeBuff.description)")
        } catch {
            self.onTCPClientError(client, err: error as! TCPError)
        }
    }

    func onTCPClientError(client: TCPClient, err: TCPError) {
        print("onTCPClientError err: \(err)")
        //clientMgr.free(client)
    }

    func onTCPClientSendOut(client: TCPClient) {

    }

    func onTCPClientConnected(client: TCPClient, err: TCPError?) {
        print("client connect result: \(err)")
    }
}
