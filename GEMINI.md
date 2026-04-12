# bitbarrel

## Project Overview

`bitbarrel` is a simple key-value database implemented in Haskell. It provides a basic interface for storing data by appending JSON-encoded key-value pairs to a local text file (`db.txt`).

- **Main Technologies:**
  - **Haskell**: Primary programming language.
  - **Cabal**: Build system and package manager.
  - **Aeson**: JSON library for encoding data.
  - **ByteString**: Efficient byte string manipulation.

- **Architecture:**
  - The project consists of a single executable named `bitbarrel`.
  - Logic is divided into two main modules in the `app/` directory:
    - `Main.hs`: Handles command-line arguments and entry point logic.
    - `Db.hs`: Implements the database storage logic.

## Building and Running

### Prerequisites
- [GHC (Glasgow Haskell Compiler)](https://www.haskell.org/ghc/)
- [Cabal](https://www.haskell.org/cabal/)

### Build
To build the project, run:
```bash
cabal build
```

### Run
To store a key-value pair in the database:
```bash
cabal run bitbarrel -- <key> <value>
```
This will append the key-value pair as a JSON object to `db.txt` in the current directory.

### Test
No automated tests are currently configured in the `.cabal` file. 
- TODO: Implement a test suite.

## Development Conventions

- **Source Code Location**: All Haskell source files are located in the `app/` directory.
- **Language Standard**: The project uses `Haskell2010`.
- **Warnings**: The project is configured with `-Wall` to ensure code quality and catch potential issues early.
- **Formatting**: Adhere to standard Haskell indentation (typically 2 spaces).
