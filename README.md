# Cipher Encryption & Decryption Program

Author: Noe Trane
Date: 19/04/2025

Overview:

This program allows a user to input a text message which is then encrypted using a randomly generated substitution cipher. The encrypted message can then be decrypted back into its original form using the same cipher key.

The program is written in MATLAB and demonstrates the use of functions, loops, string manipulation, and input validation.

Features:

Random key generation for each session
Character-by-character encryption and decryption
Input validation to ensure only allowed characters are processed
Modular design using separate functions for key generation, encryption, and decryption
Allowed Characters

The program supports encryption of lowercase letters (a-z), space ( ), and period (.). Any other characters will prompt the user to input a valid replacement.

Program Structure:

1. CipherGen
Generates a random cipher key by shuffling a list of valid characters.
Input: None
Output: CipherKey – a character array with the shuffled characters

2. encipher
Encrypts a given message using the generated cipher key.
Inputs:
key: The generated cipher key
message: The user input string
Output:
code: An array of integer indices representing the encrypted message

3. decipher
Decrypts the encoded message using the same cipher key.
Inputs:
key: The same cipher key used to encrypt
code: The encrypted array of indices
Output:
message: The original decrypted message as a string

4. Main Script
Prompts the user for a message
Generates a random cipher key
Encrypts the message
Decrypts the message and displays both results

Example Usage:

Input Message:

hello world.

Output:

The encrypted message is: [15 5 22 22 9 27 2 9 18 22 3 28]
The decrypted message is: hello world.

How to Run:

Open MATLAB.
Copy the full code into a .m file (e.g., cipher_program.m).
Run the script in the command window.
Follow the prompt to enter a message.
Notes

Each run of the program generates a new random cipher key.
To decrypt a message at a later time, the original cipher key must be saved.
The program assumes all input will be lowercase and will prompt for replacements if unsupported characters are used.
