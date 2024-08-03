FROM python:3.5
# RUN pip install Flask==0.11.1
RUN pip install Flask==1.1.4 redis==3.5.3
RUN useradd -ms /bin/bash shahzs
USER shahzs
WORKDIR /app
COPY app /app
CMD ["python", "app.py"] 
