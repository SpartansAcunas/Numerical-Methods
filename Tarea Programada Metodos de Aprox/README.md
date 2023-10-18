# Numerical Methods Application

## Summary

This project involves the application of numerical methods that can be useful in solving real-life problems. The focus is on implementing the numerical methods taught in class, which include open and closed approximation methods. Bisection and false position are examples of closed methods, while fixed-point iteration and Newton-Raphson are open methods. Two of these methods must be implemented in MATLAB, requiring the development of algorithms using the software.

## Pseudocodes and Algorithm Explanation

### Bisection Algorithm

The bisection algorithm starts by requesting user input for the specified values, including the function, initial value, final value, and a stopping criterion. As described by Chapra (2007), bisection is an incremental search in which the interval is always divided in half. The value of Xn is calculated as the sum of the two boundary points of the approximation interval. The error is also calculated, which can be either absolute or approximate.

The variable 'iter' is defined to keep track of the number of iterations. A 'while' loop is used to continue the analysis until certain conditions are met, such as reaching the maximum allowed iterations or achieving an error less than or equal to the specified limit. Additionally, matrices are used to store values in a table.

The function is then evaluated at the boundary limits and the Xr variable. Based on the evaluation, it is determined which endpoint should be replaced with Xr using an 'if-else' statement. The data is updated using the previously described formulas, and the results are inserted into a table.

### Newton-Raphson Algorithm

For the Newton-Raphson method, the user is prompted to input the function 'f' in terms of 'x,' the initial value 'xi,' the desired error, or the maximum number of iterations. The 'df' variable stores the derivative of the entered function, and a variable 'i' is defined to count the iterations. Two matrices are used to store tables.

The code then proceeds to calculate the value 'x1' and the approximation error. The 'for' loop takes care of subsequent iterations, similar to the first iteration. It calculates new initial values 'x0' (which are the 'x1' values from the previous iteration), new approximations 'x1,' and new approximation errors 'error' according to the Newton-Raphson method. The iteration count 'iter' increases with each successful iteration.

The 'for' loop concludes when either the maximum number of iterations is reached or the desired error is achieved.

## MATLAB Implementation Analysis

Despite encountering issues such as problems with table output, I could observe the code's functionality through breakpoints. I opted for using buttons instead of dropdown buttons due to difficulties in making the code run with the dropdown option. I invested a considerable amount of time trying to use dropdown buttons but ultimately resorted to using buttons.

The analysis of both exercises from Chapra could not be included due to table-related issues; I was unable to display the obtained values on the screen.

The codes for generating graphs and the 'export to Excel' button were explained in the code, and these two codes had been covered in class.


## Bibliography

1. S. Chapra and R. P. Canale. "Numerical Methods for Engineers, 6th ed." McGraw-Hill, Mexico, 2011.
