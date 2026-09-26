from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Привет от FastAPI внутри Docker!"}

if __name__=="__main__":
    uvicorn.run("main:app", host="0.0.0.0", port=8002)