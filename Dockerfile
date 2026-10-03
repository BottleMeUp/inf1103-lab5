FROM python:3.12-slim

# Put the script in /app
WORKDIR /app
COPY inventory_manager.py .

# Run from /app/data so "inventory.json" lands there
RUN mkdir -p /app/data
WORKDIR /app/data

CMD ["python", "/app/inventory_manager.py"]