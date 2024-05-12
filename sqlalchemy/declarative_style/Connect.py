from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker


name = 'coffee'
password = 'password'
host = 'localhost'
database = 'starvox'

engine = create_engine(f"mysql://{name}:{password}@{host}/{database}",
                       echo=True)


Session = sessionmaker(bind=engine)
