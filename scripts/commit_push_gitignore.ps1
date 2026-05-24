git add .gitignore
git commit -m "Add recommended .gitignore entries to exclude build and artifacts"
if ($LASTEXITCODE -ne 0) {
  Write-Output "Commit skipped or no changes"
} else {
  Write-Output "Committed .gitignore"
}

git push origin main
if ($LASTEXITCODE -ne 0) { Write-Output "Push failed (check auth)" } else { Write-Output "Pushed .gitignore to origin/main" }
