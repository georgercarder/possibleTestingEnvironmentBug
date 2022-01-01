# Possible ethersjs/hardhat/chai bug 

Contracts `Good` and `Bad` both implement their respective interfaces.

But the `IBad` interface declares an overloaded function and `Bad` implements these.

And the `IGood` interface declares a function which is not overloaded.

The resulting behavior in the hardhat testing environment is that the functions `Good.test` is defined while `Bad.test` is `undefined`.

Run `npx hardhat test` which runs the `test.js`
