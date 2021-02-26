@echo off

docker build -f %1%.DOCKERFILE -t zlm:%1% .

pause