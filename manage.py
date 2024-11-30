#!/usr/bin/env python

import os
import sys

# Check if the script is being run as the main program
if __name__ == '__main__':
    # Set the default Django settings module for the project
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'CollegeERP.settings')
    
    try:
        # Import the command line execution utility from Django
        from django.core.management import execute_from_command_line
        # Execute the command line utility with the provided arguments
        execute_from_command_line(sys.argv)
    except ImportError as exc:
        # Raise an ImportError with a helpful message if Django is not installed
        raise ImportError(
            "Couldn't import Django. Are you sure it's installed and "
            "available on your PYTHONPATH environment variable? Did you "
            "forget to activate a virtual environment?"
        ) from exc
    except Exception as e:
        # Handle other exceptions that might occur
        raise Exception(
            "An error occurred. Make sure you have installed django-environ package "
            "using 'pip install django-environ' and not 'pip install environ'"
        ) from e