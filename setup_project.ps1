# Define the project root folder
$projectRoot = "."

# Define the folders to create
$folders = @(
    "$projectRoot\data\raw",
    "$projectRoot\data\processed",
    "$projectRoot\etl\extract",
    "$projectRoot\etl\transform",
    "$projectRoot\etl\load",
    "$projectRoot\notebooks",
    "$projectRoot\scripts",
    "$projectRoot\dags",
    "$projectRoot\tests"
)

# Create each folder if it doesn't exist
foreach ($folder in $folders) {
    if (!(Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder -Force | Out-Null
    }
}

# Create essential files
$files = @(
    "$projectRoot\README.md",
    "$projectRoot\.gitignore",
    "$projectRoot\requirements.txt"
)

foreach ($file in $files) {
    if (!(Test-Path $file)) {
        New-Item -ItemType File -Path $file -Force | Out-Null
    }
}

Write-Output "✅ Project structure created successfully!"
