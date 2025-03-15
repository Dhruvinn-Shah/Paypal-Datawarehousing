import random
import string
import csv

# Function to generate a random coupon code of length 7
def generate_coupon_code(length=7):
    return ''.join(random.choices(string.ascii_uppercase, k=length))

# Generate 1050 random coupon codes
coupon_codes = [generate_coupon_code() for _ in range(1050)]

# Save the coupon codes to a CSV file
with open("coupon_codes.csv", mode="w", newline='') as file:
    writer = csv.writer(file)
    
    # Write the header (optional)
    writer.writerow(["Coupon Code"])
    
    # Write the coupon codes
    for code in coupon_codes:
        writer.writerow([code])

print("1050 coupon codes have been generated and saved to 'coupon_codes.csv'.")
