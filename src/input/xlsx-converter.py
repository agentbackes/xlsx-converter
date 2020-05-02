import pandas as pd 
import csv
import sys

# Set file path
input_file = '/home/src/input/'+sys.argv[1]
output_file = '/home/src/output/output.csv'

def xlsxConverter():
    # Read xlsx file
    df = pd.read_excel(
        input_file
        , header=None
        , index_col=0
    )

    # Transpose
    data = df.transpose()

    # Write into csv
    data.to_csv(
        output_file
        , mode='a'
        , sep=';'
        , header=None
        , index=False
    )

    # Print 
    print('Transformation of '+sys.argv[1]+' successful')
    
if __name__ == "__main__":
    xlsxConverter()