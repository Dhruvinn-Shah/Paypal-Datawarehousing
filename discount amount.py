import random
import csv

# Generate 1010 random numbers between 1 and 50
random_numbers = [random.randint(1, 50) for _ in range(1010)]

# Save the random numbers to a CSV file
with open("random_numbers.csv", mode="w", newline='') as file:
    writer = csv.writer(file)
    
    # Write the header (optional)
    writer.writerow(["Random Number"])
    
    # Write the random numbers
    for number in random_numbers:
        writer.writerow([number])

print("1010 random numbers between 1 and 50 have been generated and saved to 'random_numbers.csv'.")
