# Unexpected Behavior with Non-Numeric Input in MATLAB Function

This repository demonstrates an uncommon error in MATLAB that arises when a function expecting numeric input receives a string or other incompatible data type. The error does not necessarily crash the program but can lead to unexpected and incorrect results.

## Bug Description
The MATLAB function `myFunction` is designed to multiply its input by 2. However, if a string or other non-numeric input is provided, MATLAB attempts to perform element-wise multiplication, leading to unusual outcomes or errors (depending on MATLAB version). This is a subtle error as no explicit error message is generated.

## Bug Solution
The solution involves robust input validation using `isnumeric` to check the input data type before performing the multiplication.  Error handling using `try-catch` blocks provides a more graceful way to handle unexpected inputs.