Write-Output "Activating virtual environment..."
.\.venv\Scripts\Activate.ps1

Write-Output "Environment activated."

Write-Output "Starting server..."
mkdocs serve