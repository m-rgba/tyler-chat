#!/bin/bash

# Run the FastAPI server
uvicorn api_server:app --reload --host 0.0.0.0 --port 8000 