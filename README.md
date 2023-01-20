## Challenge Description

The Hamming distance can be defined as the number of positional differences between 
two strings. It is expressed as ​dh(s1​, ​s2​).

## Objectives 
- Write a program to compute the Hamming distance. 
- Model the solution with 1 or more classes. 
- Computing the Hamming distance should require instantiating a class. 
- Write code that represents your style and preferred best practices. 
- 1 hour time limit. We are not looking for robust code that captures all conditions. An incomplete solution that clearly showcases clean design is preferred over a working 2 line solution.  

## Testing Instructions
- Clone this repo
- `cd` into this directory and run `ruby challenge.rb`.
- You should see the program return `2` for the test case that's hard-coded into the `.rb` file.
- Feel free to change the values on lines 40-48 to see if the validations work. The following should raise exceptions:
  - Using a non-string as the `name` on a `DNAStrand` instance
  - Using an empty string as the `name` on a `DNAStrand` instance
  - Adding any letters other than the acceptable `ACGT` nucleotides to a `DNAStrand` instance
  - Comparing strands that are not of the same length
  - Comparing a strand with an entity that is not a `DNAStrand`.
 