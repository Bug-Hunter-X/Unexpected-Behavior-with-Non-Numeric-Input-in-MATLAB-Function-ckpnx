function result = myFunction(input)
  % Some code here that might cause an error
  result = input * 2; 
end

% Example of how the error can occur:
input = 'hello';
result = myFunction(input);