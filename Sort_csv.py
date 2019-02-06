import csv

# input_file = 'Input_null.csv'
input_file = 'input.csv'
output_file = 'output.csv'

# input_data = open(input_file, 'r')
#
# dialect = csv.Sniffer().sniff(input_data.read(1024))
#
# print (dialect)
#
# for row in input_data:
#     # unicode_row = row.("utf-8")
#     row = row.strip('\n')
#     values = row.split(',')
#     # unicode_values = values.decode("utf-8")
#     # values = values.strip('\n')
#     # Ignoring the case before sorting
#     values.sort(key=lambda v: v.upper(), reverse=True)
#     print(values)

# TODO: Make the script unicode friendly utf-8, utf-8-sig, utf-16 etc.

def read_n_sort(input_file, null_ind):
    row = None
    if null_ind:
        return row
    else:
        with open(input_file, 'r', newline='', encoding='utf-8-sig') as csvfile:
            # Check if the file is empty
            # contents = csvfile.read()
            # row = None
            # if contents:
            input_data = csv.reader(csvfile, delimiter=',')
            for row in input_data:
                # Ignoring the case before sorting
                row.sort(key=lambda v: v.upper(), reverse=True)
                # row.sort(reverse=True)
                print (row)
            return row

def write_file(row):
    with open(output_file, 'w', newline='', encoding='utf-8-sig') as out:
        csvwriter = csv.writer(out)
        if row:
            csvwriter.writerow(row)
        else:
            csvwriter.writerow('')

def empty_file_check(input_file):
    with open(input_file, 'r') as ifile:
        contents = ifile.read()
        null_ind = True
        if contents:
            null_ind = False
        return null_ind

def main():
    null_ind = empty_file_check(input_file)
    sorted_line = read_n_sort(input_file, null_ind)
    write_file(sorted_line)

main()