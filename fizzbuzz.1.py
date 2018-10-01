def counto100(count):
    while count < 100:
        msg = ""        
        if (count % 3 == 0): msg = msg + "Fizz"
        if (count/5).is_integer(): msg = msg + "Buzz"
        else: msg = count
        count = count +1;
        print(msg)
counto100(1)
