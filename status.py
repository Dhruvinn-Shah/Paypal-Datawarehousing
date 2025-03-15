import random
import csv

# List of possible words
status_list = ["Successfull", "Pending", "Failed"]

# Function to generate a random word from the list
def generate_random_word():
    return random.choice(status_list)

# Generate 1001 random words
random_words = [generate_random_word() for _ in range(1001)]

# Write the generated words to a CSV file
with open('status.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(["status"])  # Writing the header
    for word in random_words:
        writer.writerow([word])

print("1001 random words have been generated and saved to 'random_words.csv'.")
