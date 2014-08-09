## Example 1 - Simple Compilation with Csound
## Translated to R by Ethan C Brown (github.com/statisfactions)
## 2014.08.08

## This example is a barebones example for creating an instance of Csound,
## compiling a pre-existing CSD, calling Perform to run Csound to completion,
## then Stop and exit.

## The first thing we do is load the rdyncall package, which is the module
## containing a very low-level interface to the Csound API.

library(rdyncall)
dynport(csound)

csinst <- csoundCreate(0)             # Create an instance of the Csound object

args <- c("csound", "test1.csd")      # Specify arguments
ptrargs <- strarrayptr(args)          # Wraps R vector as C pointer

csoundCompile(csinst, 2, ptrargs)     # Compile a pre-defined test1.csd file
                                      
csoundPerform(csinst)                 # This call runs Csound to completion

csoundStop(csinst)                    # At this point, Csound is already stopped, but this call is here
                                      # as it is something that you would generally call in real-world
                                      # contexts 

