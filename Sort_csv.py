import csv
import logging

input_file = 'input.csv'
output_file = 'output.csv'

def read_n_sort(input_file):
    with open(input_file, 'r', newline='', encoding='utf-8-sig') as csvfile:
        # , encoding='utf-8-sig'
        input_data = csv.reader(csvfile, delimiter=',')
        # Initialize output as null. None doesn't work with writerow function
        output_data = ''
        # Check if file is empty
        if input_data:
            for output_data in input_data:
                # Ignoring the case before sorting
                output_data.sort(key=lambda v: v.upper(), reverse=True)
                # Should only sort a single line
                logging.info('First line sort complete')
                break
        else:
            logging.info('Empty file or no data')
        return output_data

def write_file(row):
    with open(output_file, 'w') as out:
        csvwriter = csv.writer(out)
        csvwriter.writerow(row)

# Main function that drives the program
def main():
    logging.basicConfig(filename='Sort_csv.log', filemode='w', level=logging.INFO)
    try:
        logging.info('Start to read and sort the input file')
        # Read and Sort the input.csv
        sorted_line = read_n_sort(input_file)
        logging.info('Sort complete. Write to output started')
        # Write the sorted csv line to output.csv
        write_file(sorted_line)
        logging.info('Write to output completed')
    # Input file not found or has a different name or extension
    except FileNotFoundError:
        logging.info('File not found. Check the file availability, file''s extension or filename')
        write_file('')
    except MemoryError:
        logging.info('Sort function out of memory')
        write_file('')
main()