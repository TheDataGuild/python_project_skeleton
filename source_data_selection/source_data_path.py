import ConfigParser
import os

def read():

    # Location of this script
    __location__ = os.path.realpath(os.path.join(os.getcwd(), os.path.dirname(__file__)))

    # Load the current source data description file
    config = ConfigParser.ConfigParser(allow_no_value=True)
    config.read(os.path.join(__location__, 'current_source_data_location.ini'))

    # Return the path to the directory containing the source data
    return config.get('CurrentSourceData','path')
