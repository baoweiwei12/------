from typing import List
from sqlalchemy.orm import Session
from app import utils,schemas,models

def get_meeting(db: Session, meeting_id: int) -> models.Meeting | None:
    return db.query(models.Meeting).filter(models.Meeting.id == meeting_id).first()

def get_meetings(db: Session, skip: int = 0, limit: int = 10,search_keyword: str|None = None) -> List[models.Meeting]:
    if search_keyword:
        return db.query(models.Meeting).filter(models.Meeting.full_name.like(f"%{search_keyword}%")).offset(skip).limit(limit).all()
    return db.query(models.Meeting).offset(skip).limit(limit).all()

def get_meetings_count(db: Session,search_keyword: str|None = None):
    if search_keyword:
        return db.query(models.Meeting).filter(models.Meeting.full_name.like(f"%{search_keyword}%")).count()
    return db.query(models.Meeting).count()
    

def get_expired_meetings(db: Session, skip: int = 0, limit: int = 10) -> List[models.Meeting]:
    return db.query(models.Meeting).filter(models.Meeting.conference_date < utils.get_current_date()).offset(skip).limit(limit).all()
def get_expired_meetings_count(db: Session) -> int:
    return db.query(models.Meeting).filter(models.Meeting.conference_date < utils.get_current_date()).count()
def get_unexpired_meetings(db: Session, skip: int = 0, limit: int = 10) -> List[models.Meeting]:
    return db.query(models.Meeting).filter(models.Meeting.conference_date >= utils.get_current_date()).offset(skip).limit(limit).all()
def get_unexpired_meetings_count(db: Session) -> int:
    return db.query(models.Meeting).filter(models.Meeting.conference_date >= utils.get_current_date()).count()
def get_journals(db: Session, skip: int = 0, limit: int = 10) -> List[models.Journal]:
    return db.query(models.Journal).offset(skip).limit(limit).all()
def get_journals_count(db: Session) -> int:
    return db.query(models.Journal).count()