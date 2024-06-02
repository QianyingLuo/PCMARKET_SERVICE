import os
from jinja2 import Environment

def get_file_path(file: str) -> str:
    current_directory = os.path.dirname(__file__)
    return os.path.join(current_directory, file)

class ExtendedEnvironment(Environment):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.globals.update({
            'int': int,
        })
    
    def truncate(self, s, length=120, suffix='...'):
      if len(s) <= length:
          return s
      else:
          return s[:length].rstrip() + suffix