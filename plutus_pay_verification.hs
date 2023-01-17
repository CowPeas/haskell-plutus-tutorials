import Ledger
import Address
import Data.List (find)

verifyTransaction :: [Address] -> Ledger.Transaction -> Bool
verifyTransaction validAddresses tx =
    let sender = Ledger.sender tx
        recipient = Ledger.recipient tx
        senderIsValid = find (== sender) validAddresses /= Nothing
        recipientIsValid = find (== recipient) validAddresses /= Nothing
        sufficientFunds = Ledger.senderBalance sender >= Ledger.amount tx
    in senderIsValid && recipientIsValid && sufficientFunds
