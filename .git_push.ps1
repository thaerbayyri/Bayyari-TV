$repo = 'https://github.com/thaerbayyri/Bayyari-TV.git'
if (-not (Test-Path .git)) {
  git init
  Write-Output 'Initialized git repository'
} else {
  Write-Output '.git exists'
}
try { git remote remove origin -ErrorAction Stop } catch { Write-Output 'No existing origin' }
try {
  git remote add origin $repo
  Write-Output "Added remote origin $repo"
} catch {
  Write-Output "Failed to add remote: $_"
}
git add -A
$commit = & git commit -m 'Add tests, CI and test helpers' 2>&1
if ($LASTEXITCODE -eq 0) {
  Write-Output 'Commit created'
} else {
  Write-Output "Commit skipped: $commit"
}
try {
  git branch -M main
} catch { Write-Output 'Branch rename skipped' }
Write-Output 'Attempting to push to origin/main'
$push = & git push -u origin main 2>&1
Write-Output $push
if ($LASTEXITCODE -ne 0) { Write-Output 'Push failed (likely auth). Please run the script locally to authenticate or configure deploy key.' }
