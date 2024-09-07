---

# Circom Circuit on Polygon Amoy Testnet

This project demonstrates the deployment of a Circom-based circuit and its integration with a smart contract on the Polygon Amoy testnet. It includes the following steps:

## Prerequisites

- Node.js and npm installed
- Hardhat framework setup
- `.env` file with your private key for deployment (in `PRIVATE_KEY`)

## Steps to Setup and Deploy


### 1. Install Dependencies

Install the necessary project dependencies:

```bash
npm install
```

### 2. Configure the Environment

Create a `.env` file at the root of the project and add your private key:

```bash
PRIVATE_KEY=your_private_key_here
```

### 3. Compile the Circuit

Ensure that you have the required circuits in the `circuits` directory. To compile the circuits, use the following command:

```bash
npx hardhat circom
```

### 4. Deploy the Smart Contract

Deploy the smart contract to the Polygon Amoy testnet:

```bash
npx hardhat run scripts/deploy.ts --network amoy
```

### 5. Check Deployed Contract

Use the Polygon Amoy testnet explorer to view your deployed contract and verify that the circuit verifier works as expected.

---
