function result = myFunction(input)
  % Validate the input to ensure it's numeric
  if ~isnumeric(input)
    error('Input must be a number.');
  end
  result = input * 2;
end

% Example of using try-catch for error handling
function result = myFunctionWithTryCatch(input)
    try
        if ~isnumeric(input)
            error('Input must be a numeric value.');
        end
        result = input * 2;
    catch e
        fprintf('Error: %s\n', e.message);
        result = NaN; % or some other suitable default value
    end
end

% Example usage:
input1 = 5;
input2 = 'hello';

result1 = myFunction(input1); % Correct
result2 = myFunction(input2); % Error

result3 = myFunctionWithTryCatch(input1); % Correct
result4 = myFunctionWithTryCatch(input2); % Catches Error and returns NaN