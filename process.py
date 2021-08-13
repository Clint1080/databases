log_file = open("um-server-01.txt") # This line brings in the data to our python script so we can manipulate it


def sales_reports(log_file): # This is like creating a "View" or "Report" to view the data 
    for line in log_file: # Start of the for loop 
        line = line.rstrip() # rstrip is a methon that removes trailing characters that you specify in the argument like when we rstrip( \n)
        day = line[0:3] # This is setting day equal to the first 3 characters of the line starting at zero.
        if day == "Mon": # This is the condition
            print(line) # This prints out the line if condition is met


# sales_reports(log_file) # Calling the function, basically running the report. 


def melon_orders(log_file):
    for line in log_file:
        line = line.rstrip().split(' ')
        count = line[2]
        # print(count)
        if line[2] > 10:
            print(line)


melon_orders(log_file)