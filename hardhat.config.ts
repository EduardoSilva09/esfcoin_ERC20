import dotenv from "dotenv"
dotenv.config();

import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const config: HardhatUserConfig = {
  solidity: "0.8.24",
  networks: {
    local: {
      url: process.env.LOCAL_URL,
      chainId: 31337,
      accounts: {
        mnemonic: process.env.LOCAL_SECRET
      }
    }
  }
};

export default config;
