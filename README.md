# MUK Tracker - Academic Issue Tracking System

## Deployment on PythonAnywhere

For detailed deployment instructions, see [PythonAnywhere Deployment Guide](pythonanywhere_deploy.md).

## Local Development

### Backend Setup (Django)

1. Navigate to the backend directory:
   ```
   cd backend
   ```

2. Create a virtual environment:
   ```
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. Install dependencies:
   ```
   pip install -r requirements.txt
   ```

4. Apply migrations:
   ```
   python manage.py migrate
   ```

5. Run the development server:
   ```
   python manage.py runserver
   ```

### Frontend Setup (React)

1. Navigate to the frontend directory:
   ```
   cd frontend/muk-support-portal
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Start the development server:
   ```
   npm run dev
   ```

## Project Structure

The project is divided into two main parts:

1. Backend: Django REST API
2. Frontend: React application

For more details on the project structure, see [project_structure.txt](project_structure.txt). 