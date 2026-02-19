# Exercise 5 on "How to think like a computer scientist", ch. 11.
from tkinter import filedialog
import turtle

def main():
    screen = turtle.Screen()
    t = turtle.Turtle()
    
    # Use t.up(), t.down() and t.goto(x, y)
    
    # Put your code here~
    filename = input("ficheiro? ")
    
    with open(filename, "r") as f:
        for line in f:
            line = line.strip()
        if not line:
            True

        if line.upper() == "UP":
            t.up()
        elif line.upper() == "DOWN":
            t.down()
        else:
            parts = line.split()
            if len(parts) != 2: 
                True

            try:                        
                x = float(parts[0])
                y = float(parts[1])
                t.goto(x, y)
            except ValueError:
                print(f"Linha inválida: {line}")



    # Wait until window is closed
    screen.mainloop()


if __name__ == "__main__":
    main()

