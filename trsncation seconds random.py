import random
import csv

# Function to generate random number between 1 and 240
def generate_random_number():
    return random.randint(1, 240)

# Generate 1001 random numbers
random_numbers = [generate_random_number() for _ in range(1001)]

# Write the generated numbers to a CSV file
with open('transaction_seconds.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(["random_number"])  # Writing the header
    for number in random_numbers:
        writer.writerow([number])

print("1001 random numbers between 1 and 240 have been generated and saved to 'random_numbers.csv'.")
