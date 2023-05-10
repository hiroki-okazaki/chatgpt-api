# chatgpt-api

## コンテナ起動
$ docker run -it --rm --name chatgpt-api -p 8000:8000 -v {自身のホームディレクトリからの相対パス}/chatgpt-api:/app -d {IMAGE_ID}

## アプリ起動
$ uvicorn main:app --host 0.0.0.0 --port 8000 --reload