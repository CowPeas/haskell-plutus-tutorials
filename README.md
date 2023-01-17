# Haskell-Plutus-Tutorials
My Plyaground for Haskell and Plutus. 

#plutus_pay_verification.hs
The function called verifyTransaction takes two arguments:

    + A list of Address called validAddresses
    + A Ledger.Transaction called tx.

The function returns a Boolean value, indicating whether the transaction is valid or not.

The code starts by importing three modules: Ledger, Address, and Data.List. The Ledger and Address modules are custom modules that provide the necessary data types and functions to interact with the ledger and addresses respectively. The Data.List module provides a function called find that is used in the function.

The body of the function uses pattern matching to extract the sender and recipient of the transaction tx by calling the Ledger.sender and Ledger.recipient functions respectively. Then it checks if the sender and the recipient exist in the list of valid addresses using the find function from Data.List. If find returns Nothing, it means that the address was not found in the list and it is not valid. If find returns a Just value, it means that the address was found in the list and it is valid.

Finally, the function checks if the sender has sufficient funds to complete the transaction by comparing the Ledger.senderBalance of the sender with the Ledger.amount of the transaction.

The function returns True if the sender, the recipient and the funds are all valid, otherwise it returns False.
