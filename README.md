# Circom Circuit Verifier on Polygon Amoy Testnet

This project demonstrates how to deploy a Circom-based circuit and integrate it with a verifier contract on the Polygon Amoy testnet. Follow these steps to set up and deploy your circuit.

## Prerequisites

- Node.js and npm installed
- Hardhat framework set up
- `.env` file with your private key for deployment

## Setup and Deployment Steps

### 1. Install Dependencies

Install the necessary project dependencies:

```bash
npm install
```

### 2. Configure the Environment

Create a `.env` file in the root of the project and add your private key:

```bash
PRIVATE_KEY=your_private_key_here
```

### 3. Compile the Circuits

Compile the Circom circuits using Hardhat. This step also automatically generates the verifier contract:

```bash
npx hardhat circom
```

### 4. Deploy the Contract

Deploy the verifier contract to the Polygon Amoy testnet using the `deploy.ts` script. This script will deploy the verifier contract and verify the proof:

```bash
npx hardhat run scripts/deploy.ts --network amoy
```

# By following these steps, you’ll have your Circom circuit compiled and the verifier contract deployed on the Polygon Amoy testnet.
