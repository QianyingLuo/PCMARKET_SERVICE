import os


def get_file_path(file: str) -> str:
    current_directory = os.path.dirname(__file__)
    return os.path.join(current_directory, file)
