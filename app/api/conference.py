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
        page = f.read()
    return page

@router.get("/journalsPage", response_class=HTMLResponse)
def get_journals_page():
    with open("front/journalsPage.html", "r", encoding="utf-8") as f:
        page = f.read()
    return page

@router.get("/twomeetingsPage", response_class=HTMLResponse)
def get_t_meetings_page():
    with open("front/towPartsMeetingsPage.html", "r", encoding="utf-8") as f:
        page = f.read()
    return page

@router.get("/issnjournalsPage", response_class=HTMLResponse)
def get_issn_journals_page():
    with open("front/issnjournalsPage.html", "r", encoding="utf-8") as f:
        page = f.read()
    return page



@router.get("/api/meetings")
def get_meetings(
    page: int = Query(..., description="Page number", gt=0),
    perPage: int = Query(..., description="Items per page", gt=0),
    db: Session = Depends(get_db),
    keywords: str  | None= Query(None, description="Search keywords"),

):
    meetings = crud.get_meetings(db, skip=(page - 1) * perPage, limit=perPage,search_keyword=keywords)
    total = crud.get_meetings_count(db,search_keyword=keywords)
    return {
        "status": 0,
        "msg": "",
        "data": {"items": meetings, "total": total, "page": page},
    }

@router.get("/api/expired-meetings")
def get_expired_meetings(
    page: int = Query(..., description="Page number", gt=0),
    perPage: int = Query(..., description="Items per page", gt=0),
    db: Session = Depends(get_db),
):
    meetings = crud.get_expired_meetings(db, skip=(page - 1) * perPage, limit=perPage)
    total = crud.get_expired_meetings_count(db)
    return {
        "status": 0,
        "msg": "",
        "data": {"items": meetings, "total": total, "page": page},
    }


@router.get("/api/unexpired-meetings")
def get_unexpired_meetings(
    page: int = Query(..., description="Page number", gt=0),
    perPage: int = Query(..., description="Items per page", gt=0),
    db: Session = Depends(get_db),
):
    meetings = crud.get_unexpired_meetings(db, skip=(page - 1) * perPage, limit=perPage)
    total = crud.get_unexpired_meetings_count(db)
    return {
        "status": 0,
        "msg": "",
        "data": {"items": meetings, "total": total, "page": page},
    }


@router.get("/api/journals")
def get_journals(
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


@router.get("/login", response_class=HTMLResponse)
def get_login_page():
    with open("front/loginPage.html", "r", encoding="utf-8") as f:
        login_page = f.read()
    return login_page