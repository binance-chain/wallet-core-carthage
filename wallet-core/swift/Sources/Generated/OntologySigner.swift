// Copyright © 2017-2019 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

import Foundation

public final class OntologySigner {

    public static func sign(input: TW_Ontology_Proto_SigningInput) -> TW_Ontology_Proto_SigningOutput {
        let inputData = TWDataCreateWithNSData(try! input.serializedData())
        defer {
            TWDataDelete(inputData)
        }
        let resultData = TWDataNSData(TWOntologySignerSign(inputData))
        return try! TW_Ontology_Proto_SigningOutput(serializedData: resultData)
    }

    public static func message(input: TW_Ontology_Proto_TransactionInput) -> Data {
        let inputData = TWDataCreateWithNSData(try! input.serializedData())
        defer {
            TWDataDelete(inputData)
        }
        return TWDataNSData(TWOntologySignerMessage(inputData))
    }

    public static func transaction(data: TW_Ontology_Proto_TransactionInput, pubKey: Data, signature: Data) -> Data {
        let dataData = TWDataCreateWithNSData(try! data.serializedData())
        defer {
            TWDataDelete(dataData)
        }
        let pubKeyData = TWDataCreateWithNSData(pubKey)
        defer {
            TWDataDelete(pubKeyData)
        }
        let signatureData = TWDataCreateWithNSData(signature)
        defer {
            TWDataDelete(signatureData)
        }
        return TWDataNSData(TWOntologySignerTransaction(dataData, pubKeyData, signatureData))
    }

    let rawValue: OpaquePointer

    init(rawValue: OpaquePointer) {
        self.rawValue = rawValue
    }


}
