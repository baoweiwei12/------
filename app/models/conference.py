from sqlalchemy import Column, Float, Integer, String, DateTime,Boolean, Text
from app.database import Base




class Meeting(Base):
    __tablename__ = 'meetings'

    id = Column(Integer, primary_key=True, autoincrement=True)
    cff = Column(String(50))
    core = Column(String(50))
    qualts = Column(String(50))
    abbreviation = Column(String(50))
    full_name = Column(String(100))
    is_postponement = Column(Boolean)
    submission_deadline = Column(DateTime)
    notification_date = Column(DateTime)
    conference_date = Column(DateTime)
    conference_location = Column(String(100))
    session_number = Column(Integer)


class Journal(Base):
    __tablename__ = 'journals'

    id = Column(Integer, primary_key=True, autoincrement=True)
    cff = Column(String(50))
    full_name = Column(String(255))
    special_issue = Column(Text)
    submission_deadline = Column(DateTime)
    impact_factor = Column(Float)
    publisher = Column(String(100))
