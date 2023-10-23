function retval = uniqueChar(s)
    % Initialize the frequency vector with zeros for all 26 letters
    freqs = zeros(1, 26);
    capfreqs = zeros(1, 26);

    retval = "";

    % Loop through each character in the string
    for i = 1:length(s)
        %if lower
        if s(i) >= 'a' && s(i) <= 'z'
            % Check if the character has appeared before
            if freqs(s(i) - 'a' + 1) < 0
                % add char to string
                retval = retval + s(i)
                % Increment the count for the specific letter
                freqs(s(i) - 'a' + 1) += 1;
            end
        end
        %if upper
        if s(i) >= 'A' && s(i) <= 'Z'
            % Check if the character has appeared before
            if capfreqs(s(i) - 'A' + 1) < 0
                % add char to string
                retval = retval + s(i)
                % Increment the count for the specific letter
                capfreqs(s(i) - 'A' + 1) += 1;
            end
        end
    end
end

% Test the function
disp(uniqueChar("This example is a test"));
