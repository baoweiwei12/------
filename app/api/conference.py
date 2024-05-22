from fastapi import APIRouter, Depends
from fastapi.responses import HTMLResponse
from fastapi import Query
from app import crud
from app.dependencies import get_db
from sqlalchemy.orm import Session
router = APIRouter(prefix="", tags=["conference"])





@router.get("/homePage", response_class=HTMLResponse)
def get_home_page():
    with open("front/homePage.html", "r", encoding="utf-8") as f:
        home_page = f.read()
    return home_page

@router.get("/meetingsPage", response_class=HTMLResponse)
def get_meetings_page():
    with open("front/meetingsPage.html", "r", encoding="utf-8") as f:
        meetings_page = f.read()
    return meetings_page

@router.get("/journalsPage", response_class=HTMLResponse)
def get_journals_page():
    with open("front/journalsPage.html", "r", encoding="utf-8") as f:
        meetings_page = f.read()
    return meetings_page



@router.get("/api/meetings")
def get_meetings(
    page: int = Query(..., description="Page number", gt=0),
    perPage: int = Query(..., description="Items per page", gt=0),
    db: Session = Depends(get_db),
):
    meetings = crud.get_meetings(db, skip=(page - 1) * perPage, limit=perPage)
    total = crud.get_meetings_count(db)
    return {
        "status": 0,
        "msg": "",
        "data": {"items": meetings, "total": total, "page": page},
    }

@router.get("/api/journals")
def get_journals_page(
    page: int = Query(..., description="Page number", gt=0),
    perPage: int = Query(..., description="Items per page", gt=0),
    db: Session = Depends(get_db),
):
    journals = crud.get_journals(db, skip=(page - 1) * perPage, limit=perPage)  
    total = crud.get_journals_count(db)
    return {
        "status": 0,
        "msg": "",
        "data": {"items": journals, "total": total, "page": page},
    }