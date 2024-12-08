# ベースイメージ
FROM python:3.9-slim

# 作業ディレクトリ
WORKDIR /app

# 必要なファイルをコピー
COPY . /app

# 必要なパッケージをインストール
RUN pip install -r requirements.txt

# Djangoアプリケーションの実行
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
