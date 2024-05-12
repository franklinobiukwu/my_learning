from Base import Base
from sqlalchemy import Column, String, Integer, Sequence
from Connect import engine, Session


class User(Base):
    __tablename__ = 'users_alk'

    id = Column(Integer, Sequence('user_id_seq'), primary_key=True)
    name = Column(String(50))
    fullname = Column(String(50))
    nickname = Column(String(50))

    def __repr__(self):
        return "<User (name='%s', fullname='%s', nickname='%s')>" % (
                self.name, self.fullname, self.nickname)


Base.metadata.create_all(engine)

user1 = User(name='Asher', fullname='Asher Orhorha', nickname='Ejiro')

session = Session()

print(user1)
session.add(user1)

our_user = session.query(User).filter_by(name='Asher').first()

all = session.add_all([
    User(name='wendy', fullname='Wendy Williams', nickname='windy'),
    User(name='mary', fullname='Mary Contrary', nickname='mary'),
    User(name='fred', fullname='Fred Flintstone', nickname='freddy')
    ])
print(our_user)

print(our_user is user1)
print(session.dirty)
print(session.new)
session.commit()
print(user1.id)
