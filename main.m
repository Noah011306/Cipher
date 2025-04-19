% A code which encrypts and decrypts a user inputted message through a
% series of functions
% Made by Noe Trane on the 19/04/2025


% 0. Clear workspace, command window, and close all figures
close all
clc


%% Functions

% 1. Create a function (CipherGen) to generate a cipher key
function CipherKey = CipherGen()

% This is a function used to create a random key, which consits of an array of the
% 26 characters in a ranodm order, where there index number is there
% corresponding encyption value.
% It takes no input
% It has one output, a random key

    % 1.1. Define an array with all characters to be encrypted and an empty array for the keys of equal length
    characters = ['a':'z',' ','.'];
    M = length(characters);

    % 1.2. Define an array of blanks for the key of equal length to the array of characters
    CipherKey = blanks(M);

    % 1.3. Define an array with all number from 1 to 28 in a random order
    random_array = randperm(M);
    
    % 1.4. Using a for loop and the array with the randomised numbers, create the key with the characters in a random order. This will run 28 times
    for i=1:M
        CipherKey(random_array(i)) = characters(i);
    end
end


% 2. Create a function (encipher) that encodes the message
function code = encipher(key, message)
% This is a function used to encode a message
% It takes two inputs, the key and the user inputted message
% It has one output, the encrypted message

% 2.1. Create an array of zeros equal in size to the message
    N = numel(message);
    code = zeros(1, N);

   % 2.2. Make a for loop which will cycle through each character in the message, and thus had a number of iterations equal to the length of the message
    for k = 1:N

        % 2.2.1. Find the index number of each character in the key using the ‘find’ function
        idx = find(key == message(k), 1);

        % 2.2.2. Ensure that if the character isn’t in the key, the user can re input a different one
        while isempty(idx)
            disp(['Invalid symbol: ''', message(k), '''']);
            new_ch = input('Please replace it with a valid one: ', 's');
            idx = find(key == new_ch, 1);
        end

        % 2.2.3. Assign the index found to the array of zeros
        code(k) = idx;
    end

    % 	2.3. Display the encrypted message
    disp(['The encrypted message is: ', mat2str(code)]);
end


% 3. Create a function (decipher) that decodes a numeric message
function message = decipher(key,code)
% This is a function used to decode a coded message
% It takes two inputs, the key and the coded message
% It has one output, the decrypted message

    % 3.1. Create an array of blanks equal in length to the encrypted
    % message
    V = length(code);
    message = blanks(V);
    
    % 3.2. Create a for loop which will cycle through each number in the code to decode the encoded message, 
    % and thus had a number of iterations equal to the length of the code
    for k=1:V
     
        message(k) = key(code(k));
        
    end

    % 3.3. Display the message
    disp(['The decrypted message is: ' num2str(message)]);
end

% 4. Create a main script that allows the user to input a message
message = input("What message would you like to encrypt? ", "s");
key = CipherGen();

% 5. Display the results
code = encipher(key, message);
decrypted = decipher(key, code);
