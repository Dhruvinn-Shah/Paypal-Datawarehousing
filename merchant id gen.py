import random
import csv

def generate_unique_codes(count):
    unique_codes = set()
    
    while len(unique_codes) < count:
        # Generate a random 6-digit number
        num = random.randint(100000, 999999)
        # Add the prefix "m" and check for uniqueness
        code = f"m{num}"
        
        # Ensure the code is unique
        unique_codes.add(code)
    
    return list(unique_codes)

def save_codes_to_csv(codes, filename):
    # Write the generated codes to a CSV file
    with open(filename, mode='w', newline='') as file:
        writer = csv.writer(file)
        # Write header
        writer.writerow(["Code"])
        # Write the codes
        for code in codes:
            writer.writerow([code])

# Example usage: Generate 100 unique codes
codes = generate_unique_codes(1000)

# Save the generated codes to 'codes.csv'
save_codes_to_csv(codes, "codes.csv")

print("CSV file 'codes.csv' has been created successfully.")
