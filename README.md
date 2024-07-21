# EsfCoin Smart Contract

## Description
EsfCoin is a simple [ERC20](https://ethereum.org/pt/developers/docs/standards/tokens/erc-20/) token smart contract written in Solidity. It provides basic functionalities such as transferring tokens, approving spenders, and checking balances.

## Details
- **Name:** EsfCoin
- **Symbol:** ESF
- **Decimals:** 18
- **Total Supply:** 1000 ESF

## Development Environment
This project is developed using [Hardhat](https://hardhat.org/), a development environment for Ethereum that helps you compile, deploy, test, and debug your Solidity smart contracts.

## Usage

### Installation
No installation is required to interact with the contract.

### Interacting with the Contract
#### Requirements
- Ethereum wallet (e.g., MetaMask)
- ETH for transaction fees

#### Methods

1. **balanceOf**
   - **Description:** Get the token balance of a specific address.
   - **Parameters:** `_owner` (address) - Address to query balance for.
   - **Returns:** `uint256` - Token balance of the address.

2. **transfer**
   - **Description:** Transfer tokens to a specified address.
   - **Parameters:** `_to` (address) - Recipient address, `_value` (uint256) - Amount of tokens to send.
   - **Returns:** `bool` - Success status of the transfer.

3. **transferFrom**
   - **Description:** Transfer tokens on behalf of another address with allowance.
   - **Parameters:** `_from` (address) - Sender address, `_to` (address) - Recipient address, `_value` (uint256) - Amount of tokens to send.
   - **Returns:** `bool` - Success status of the transfer.

4. **approve**
   - **Description:** Approve spender to spend a specified amount of tokens on behalf of the owner.
   - **Parameters:** `_spender` (address) - Spender address, `_value` (uint256) - Amount of tokens to approve.
   - **Returns:** `bool` - Success status of the approval.

5. **allowance**
   - **Description:** Get the remaining token allowance granted to a spender by the owner.
   - **Parameters:** `_owner` (address) - Owner address, `_spender` (address) - Spender address.
   - **Returns:** `uint256` - Remaining token allowance.

### Events
- **Transfer:** Logged when tokens are transferred.
- **Approval:** Logged when approval is granted for a spender.

### Disclaimer
This contract is provided as-is with no warranties or guarantees. Use it at your own risk.
