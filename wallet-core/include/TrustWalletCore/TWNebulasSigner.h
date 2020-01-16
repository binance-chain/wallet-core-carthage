// Copyright © 2019 Mart Roosmaa.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.

#pragma once

#include "TWBase.h"
#include "TWData.h"
#include "TWNebulasProto.h"

TW_EXTERN_C_BEGIN

/// Helper class to sign Nebulas transactions.
TW_EXPORT_CLASS
struct TWNebulasSigner;

/// Signs a transaction.
TW_EXPORT_STATIC_METHOD
TW_Nebulas_Proto_SigningOutput TWNebulasSignerSign(TW_Nebulas_Proto_SigningInput input);

TW_EXPORT_STATIC_METHOD
TWData *_Nonnull TWNebulasSignerMessage(TW_Nebulas_Proto_SigningInput data);

/// Builds a transaction to be broadcasted
TW_EXPORT_STATIC_METHOD
TWData *_Nonnull TWNebulasSignerTransaction(TW_Nebulas_Proto_SigningInput data,  TWData *_Nonnull signature);
TW_EXTERN_C_END
