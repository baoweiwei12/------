from typing import List
from sqlalchemy.orm import Session
from app import utils,schemas,models

def get_meeting(db: Session, meeting_id: int) -> models.Meeting | None:
    return db.query(models.Meeting).filter(models.Meeting.id == meeting_id).first()

def get_meetings(db: Session, skip: int = 0, limit: int = 10) -> List[models.Meeting]:
    return db.query(models.Meeting).offset(skip).limit(limit).all()

def serach_meetings_by_full_name_keyword(db: Session, key_word: str, skip: int = 0, limit: int = 10) -> List[models.Meeting]:
    return db.query(models.Meeting).filter(models.Meeting.full_name.like(f"%{key_word}%")).offset(skip).limit(limit).all()
def get_meetings_count(db: Session):
    return db.query(models.Meeting).count()

def get_journals(db: Session, skip: int = 0, limit: int = 10) -> List[models.Journal]:
    return db.query(models.Journal).offset(skip).limit(limit).all()
def get_journals_count(db: Session) -> int:
    return db.query(models.Journal).count()