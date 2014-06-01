import os

def read():

    # Return the location of this script
    return os.path.realpath(os.path.join(os.getcwd(), os.path.dirname(__file__))) + '/'

