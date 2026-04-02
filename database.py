from fastapi import Depends
from sqlmodel import SQLModel,create_engine,Session
from typing import Annotated

import os 
from dotenv import load_dotenv

load_dotenv()

DATABASE_URL=os.getenv("DATABASE_URL")

engine=create_engine(DATABASE_URL,echo=True)


def create_db_and_table():
    SQLModel.metadata.create_all(engine)


def get_session():
    with Session(engine) as session:
        yield session


session_dep=Annotated[Session,Depends(get_session)]