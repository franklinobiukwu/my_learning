from sqlalchemy.orm import sessionmaker
from Connect import engine


Session = sessionmaker(bind=engine)
