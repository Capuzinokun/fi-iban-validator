# fi-iban-validator
Validator that checks if given string is a Finnish IBAN number.

Given string could be a Finnish IBAN number 
  if the length is 18 characters and
  modulus by 97 is 1 (this requires first 4 characters to be moved at the end of the string and letters converted into numbers).
    Rule: A -> 10, B -> 11, ..., Z -> 35
    
Source for given algorithm: https://www.ecbs.org/Download/EBS204_V3.2.pdf
