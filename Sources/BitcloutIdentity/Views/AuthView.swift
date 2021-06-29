//
//  File.swift
//  
//
//  Created by Andy Boyd on 29/06/2021.
//

import Foundation
import AuthenticationServices

func presentAuthSession(_ contextProvider: ASWebAuthenticationPresentationContextProviding) {
    let session = ASWebAuthenticationSession(url: URL(string: "https://identity.bitclout.com/v0/native-auth")!,
                                             callbackURLScheme: "bitcloutid") { url, error in
        // TODO: get the auth information here and store it in the keychain (or wherever is appropriate)
    }
    session.presentationContextProvider = contextProvider
    session.prefersEphemeralWebBrowserSession = false
    session.start()
}
