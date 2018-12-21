docker build -t my-frontend ./frontend/ && \
docker build -t my-backend ./backend/

docker run -p 1235:8000 -v $(pwd)/backend/logs.txt:/app/logs.txt my-backend & \
docker run -p 1234:5000 my-frontend