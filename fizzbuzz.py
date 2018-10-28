def counto100(count):

    while count < 100:
        if (count/5).is_integer() and (count/3).is_integer(): 
            print("FizzBuzz")
        if (count/3).is_integer(): 
            print("Fizz")
        if (count/5).is_integer(): 
            print("Buzz")
        else: print(count)
    count = count +1;

counto100(1)