
print("Kryptonite phase classifier")

# Input.  
T = int(input("Temperature (K)? "))
P = int(input("Pressure (kPa)? "))

# Determine the phase. 
if P > T/8 and T < 400:
    phase = "SOLID"
elif P > 50 and T > 400:
    phase = "LIQUID"
else:
    phase = "GAS"

# Output.  
print("At {:.1f} K and {:.3f} kPa, Kryptonite is in the {} phase.".format(T, P, phase))

