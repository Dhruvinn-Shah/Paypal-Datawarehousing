import csv

# Path to your text file containing the entries
input_file_path = 'input.txt'

# Path where you want to save the CSV file
output_file_path = 'output.csv'

# Open the text file and read data
with open(input_file_path, 'r') as infile:
    data = infile.readlines()

# Process the data to remove unwanted characters and prepare it for CSV
processed_data = []
for line in data:
    # Remove extra characters like parentheses, quotes, and split by commas
    line = line.strip().strip('()')  # Remove parentheses around the tuple
    line = line.replace("'", "")  # Remove single quotes
    row = line.split(',')  # Split by commas
    processed_data.append(row)

# Write the processed data to a CSV file
with open(output_file_path, 'w', newline='') as csvfile:
    writer = csv.writer(csvfile)
    # Optionally, write a header row
    writer.writerow(['Store Name', 'Store ID', 'City', 'State', 'Zip Code'])
    # Write the processed data rows
    writer.writerows(processed_data)

print(f"Data has been successfully written to {output_file_path}")
