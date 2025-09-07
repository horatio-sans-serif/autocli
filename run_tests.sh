#!/bin/bash

echo "Running AutoCLI Test Suite"
echo "========================="
echo ""

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements-dev.txt
else
    source venv/bin/activate
fi

echo "Running fast tests (mocked LLM)..."
echo "----------------------------------"
pytest tests/test_parser.py -v

echo ""
echo "Running slow integration tests (real LLM)..."
echo "--------------------------------------------"
echo "Note: First run will download the model (~250MB)"
pytest tests/test_integration.py -v -m slow

echo ""
echo "Test Summary:"
echo "-------------"
pytest --co -q

echo ""
echo "To run only fast tests: pytest"
echo "To run only slow tests: pytest -m slow"
echo "To run all tests: pytest -m ''"