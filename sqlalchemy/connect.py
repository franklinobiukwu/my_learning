from sqlalchemy import create_engine, Table, MetaData, Integer, String, Column
from sqlalchemy.orm import sessionmaker

user = "coffee"
password = "password"
host = "localhost"
database = "starvox"

engine = create_engine(f"mysql://{user}:{password}@{host}/{database}")

Session = sessionmaker(bind=engine)

session = Session()

metadata = MetaData()

# define a table
users = Table("users", metadata,
              Column("id", Integer, primary_key=True),
              Column("name", String(255), nullable=False),
              Column("age", Integer)
              )

# create the table
metadata.create_all(engine)

# insert data into table
session.execute(users.insert().values(name="Chibuzo", age=100))

# commit changes
session.commit()

# query database
result = session.query(users).all()
print(result)
