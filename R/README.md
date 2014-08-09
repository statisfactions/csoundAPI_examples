# Csound 6 - R API Examples
Author: Ethan C. Brown <ethancbrown@gmail.com>
2014.08.08

This folder contains examples for using the Csound API in R. They start with a minimal usage of Csound and each example afterwards builds upon the previous one.  There are numerous comments in each file to explain what is new in the example as well as explain how the new things may be used. 

## Useful Notes

* The `rdyncall` package must be installed.  You can do this with the command `install.packages("rdyncall")`
* You can then load `rdyncall` and the Csound interface each time:

```r
library(rdyncall)
dynport(csound)
```
* The interface to Csound is extremely low-level and has no documentation.  There is also a `csound` package, but it currently only works with Csound 5.  See [the official API documentation](http://csound.sourceforge.net/doc/html/) for more information on the functions and the required types.
* `rdyncall` provides some functions for doing conversions to the C types; see also the [official documentation of the dyncall project](http://dyncall.org/documentation.shtml)
