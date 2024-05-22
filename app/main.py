from fastapi.staticfiles import StaticFiles
from app.config import CONFIG
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app.api import auth,user,conference

app = FastAPI(title=CONFIG.APP.NAME, description=CONFIG.APP.DESCRIPTION,version=CONFIG.APP.VERSION)

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(auth.router)
app.include_router(user.router)
app.include_router(conference.router)

app.mount("/static", StaticFiles(directory="front/static"), name="static")