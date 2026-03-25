# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Gavin Dombrowsky
Lincoln Sloan

## Summary
In this lab we made an example of a d-latch, then made a 4-byte memory system. For this 
we first designed the byte memory, which would take 8 bits, and store them in memory if
a store input was true, else it would give whatever 8 bits was already in its memory. 
This utilized the always @() block to constantly check if store was true. Then, using
4 of these we connected the input data and store signal to an address provided using
a demux and the output from the address to 8 LEDs which displayed the information. 

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
The circuit needs to constantly be checking if the store button is pressed, which cannot
be done in structural verilog because once the data wire gives the data to the byte memory,
the byte memory has no way of knowing to store it or not unless the store button was pressed
and held before the data. Basically, it makes it so we can store and retrieve data at any time.

### What is the meaning of always @(*) in a sensitivity block?
The always block is always checking the parameter given in the @(), so it can execute the code 
inside asynchronously depending on the parameter. The '*' parameter given in the question means
to always be checking every input variable.

### What importance is memory to digital circuits?
Memory gives the circuits the ability to store information for later use. This is important for
almost all more complex circuits which need to keep track of anything like user inputs or 
computer results.
