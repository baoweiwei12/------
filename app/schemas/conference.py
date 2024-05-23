from pydantic import BaseModel
from datetime import date, datetime

class MeetingBase(BaseModel):
    cff: str | None
    core: str | None
    qualts: str | None
    abbreviation: str | None
    full_name: str | None
    postponement: date | None
    submission_deadline: datetime | None
    notification_date: datetime | None
    conference_date: datetime | None
    conference_location: str | None
    session_number: int | None

class MeetingCreate(MeetingBase):
    pass

class MeetingUpdate(MeetingBase):
    pass

class Meeting(MeetingBase):
    id: int

    class Config:
        from_attributes = True

class Journal(BaseModel):
    id: int
    cff: str | None 
    full_name: str | None 
    special_issue:str | None 
    submission_deadline: datetime |None
    impact_factor: float | None
    publisher: str | None 
    issn: str | None

    class Config:
        from_attributes = True