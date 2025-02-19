# Incorrect Word Count in Tcl split command

This repository contains a Tcl script demonstrating a common error involving the `split` command. The script attempts to count the words in a sentence, but it fails to handle empty words correctly due to consecutive spaces or leading/trailing spaces in the input string.

## Bug Description
The `split` command in Tcl, when used without any extra arguments, splits the input string at whitespace characters.  However, if there are multiple consecutive spaces or leading/trailing spaces, it will create empty words which are not correctly handled in the word counting logic.

## Solution
The solution provided uses `regexp` to correctly split words, handling multiple spaces efficiently. The solution also uses `string trim` to remove leading and trailing spaces from the input string.