# Possible ethersjs/hardhat/chai bug 

Contracts `Good` and `Bad` both implement `IExample`.

But `Bad` implements `IExample`'s `test` function and also defines its own overloaded `test` function.

The resulting behavior in the hardhat testing environment is that the functions `Good.test` is not `undefined` while `Bad.test` is `undefined`.

Run `npx hardhat test` which runs the `test.js`
