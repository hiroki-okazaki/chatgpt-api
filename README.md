# chatgpt-api

## コンテナ起動
$ docker run -it --rm --name chatgpt-api -p 5000:5000 -v ~/private/chatgpt-api:/app -d {IMAGE_ID}

## アプリ起動
$ uvicorn main:app --host 0.0.0.0 --port 5000 --reload