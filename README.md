# simplescrambler
Scrambles integers, floats, strings and arrays a specified amount of times.

## Installation
Type in ```gem install simplescrambler``` inside your command line or terminal.

## Usage
Type in ```require 'simplescrambler'``` at the top of your script. **NOTE** _make sure that the gem is installed and that you are at the root directory_
**_simplescrambler is now ready to use!_**
To scramble any integers, floats, strings or arrays, type ```.scramble``` after it. E.g. ```[1, 2, "hello"].scramble```

### Fields (Optional)
To specify how many digits/letters/elements are to be shifted (default: min = 10, max = 100), type in the minimum and maximum numbers like so: .scramble((min), (max)) E.g ```0.3235.scramble(1, 100)```

### Example
```require 'simplescrambler'```  
```puts [1, 2, "hello"].scramble```  
```=> [2, "hello", 1]```
