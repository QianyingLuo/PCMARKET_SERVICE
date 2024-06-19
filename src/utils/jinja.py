from fastapi.templating import Jinja2Templates
from jinja2 import Environment, FileSystemLoader

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
    
    
templates = Jinja2Templates(directory="src/assets/")
templates.env = ExtendedEnvironment(loader=FileSystemLoader("src/assets/"))
templates.env.filters['truncate'] = templates.env.truncate
