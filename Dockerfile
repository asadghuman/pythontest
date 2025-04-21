# Step 1: Use official Python image
FROM python:3.10-slim

# Step 2: Set working directory inside the container
WORKDIR /app

# Step 3: Copy only the requirements file first
COPY requirements.txt .

# Step 4: Install dependencies
RUN pip install -r requirements.txt

# Step 5: Copy the rest of the app files
COPY . .

# Step 6: Expose the port your app will run on
EXPOSE 5000

# Step 7: Run the app
CMD ["python", "app.py"]