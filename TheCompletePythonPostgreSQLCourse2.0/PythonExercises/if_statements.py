# if statements 

day_of_week = input("What day of the week is it today?")

print(day_of_week == "Monday")


# putting in the if statement 


day_of_week = input("What day of the week is it today?").lower()

if day_of_week == "monday":
    print("Have a great start to your week!")
elif day_of_week == "tuesday":
    print("At least it's not Monday.")
else: 
    print("Good luck!")

print("It's going to be a long week..")

#adding lower() so that you can have varied case in your answers 