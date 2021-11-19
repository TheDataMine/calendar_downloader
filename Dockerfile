FROM python:3.9.9-slim-bullseye

WORKDIR /workspace

COPY . . 

RUN python -m pip install fastapi[all] pandas

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--reload", "--host", "0.0.0.0"]
