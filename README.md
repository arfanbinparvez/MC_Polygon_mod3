---

# Circom Circuit Verifier on Polygon Amoy Testnet

This project demonstrates the deployment of a Circom-based circuit and its integration with a smart contract on the Polygon Amoy testnet. It includes the following steps:

## Prerequisites

- Node.js and npm installed
- Hardhat framework setup
- `.env` file with your private key for deployment (in `PRIVATE_KEY`)

## Steps to Setup and Deploy

### 1. Clone the Repository

Clone the GitHub repository and navigate into the project directory:

```bash
git clone <your-repository-url>
cd <your-repository-name>
```

### 2. Install Dependencies

Install the necessary project dependencies:

```bash
npm install
```

### 3. Configure the Environment

Create a `.env` file at the root of the project and add your private key:

```bash
PRIVATE_KEY=your_private_key_here
```

### 4. Compile the Circuits

Ensure that you have the required circuits in the `circuits` directory. To compile the circuits, use the following command:

```bash
npx hardhat circom
```

### 5. Compile the Smart Contract

Compile the Solidity smart contract with:

```bash
npx hardhat compile
```

### 6. Deploy the Smart Contract

Deploy the smart contract to the Polygon Amoy testnet:

```bash
npx hardhat run scripts/deploy.ts --network amoy
```

### 7. Generate ZK Proof

Generate the proof using the input data:

```bash
npx hardhat run scripts/proof.js
```

This will read the input data, compute the witness, generate the proof, and store it in `out/proof.json`.

### 8. Verify the Proof on the Contract

After deploying the contract, verify the proof by running:

```bash
npx hardhat run scripts/verify.ts --network amoy
```

This will verify the proof on the deployed contract and log the result.

### 9. Check Deployed Contract

Use the Polygon Amoy testnet explorer to view your deployed contract and verify that the circuit verifier works as expected.

---

This README provides a high-level overview of the project setup and deployment process. For additional details, refer to the relevant files in the repository.
