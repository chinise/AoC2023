#! /usr/bin/env -S awk -f

BEGIN{ sum=0 }
match($0, /^[a-zA-z]*([0-9])/, c) { sum += c[1]*10 }
match($0, /([0-9])[a-za-z]*$/, c) { sum += c[1] }
END { print sum }

