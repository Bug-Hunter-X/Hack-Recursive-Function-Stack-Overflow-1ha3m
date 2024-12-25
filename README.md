# Hack Recursive Function Stack Overflow

This repository demonstrates a common issue with recursive functions in Hack: stack overflow errors.  The `bug.hack` file contains a simple factorial function that, while logically correct, causes a stack overflow for larger inputs due to the lack of tail-call optimization in Hack.  The `bugSolution.hack` file provides a solution using iteration to avoid this issue.

This example highlights the importance of considering stack limitations when working with recursion, particularly in languages without built-in tail-call optimization.  It's crucial to use iterative solutions or other techniques to avoid stack overflow problems, especially when dealing with potentially large inputs.