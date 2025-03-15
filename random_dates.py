import random
import datetime
import csv

# Function to generate a random datetime between two dates
def generate_random_datetime(start_year=2001, end_year=2005):
    start_date = datetime.datetime(start_year, 1, 1)
    end_date = datetime.datetime(end_year, 12, 31, 23, 59, 59, 999000)
    
    # Get the time difference between the two dates
    delta = end_date - start_date
    
    # Generate a random number of seconds
    random_seconds = random.randint(0, int(delta.total_seconds()))
    
    # Add the random seconds to the start date
    random_date = start_date + datetime.timedelta(seconds=random_seconds)
    
    # Format the datetime in the desired format: "yyyy-mm-dd hh:mm:ss:SSS"
    return random_date.strftime('%Y-%m-%d %H:%M:%S') + ':' + str(random.randint(0, 999)).zfill(3)

# Generate 1001 random datetimes
random_dates = [generate_random_datetime() for _ in range(1001)]

# Write the generated datetimes to a CSV file
with open('random_dates.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(["random_datetime"])  # Writing the header
    for date in random_dates:
        writer.writerow([date])

print("1001 random dates and times have been generated and saved to 'random_dates.csv'.")
