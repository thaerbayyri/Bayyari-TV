# Backup current branch and remove artifacts/ from git history using git-filter-repo
# WARNING: This rewrites history. Collaborators must re-clone after force-push.

function Ensure-GitFilterRepo {
  if (Get-Command git-filter-repo -ErrorAction SilentlyContinue) {
    Write-Output "git-filter-repo already available"
    return
  }
  Write-Output "git-filter-repo not found — attempting pip install (user)"
  python -m pip install --user git-filter-repo | Out-Null
  if (Get-Command git-filter-repo -ErrorAction SilentlyContinue) {
    Write-Output "git-filter-repo installed"
  } else {
    Write-Output "git-filter-repo still not available. Please install it manually: https://github.com/newren/git-filter-repo"
    exit 1
  }
}

Write-Output "Creating backup branch 'backup-before-filter'"
git branch -f backup-before-filter

Ensure-GitFilterRepo

Write-Output "Removing 'artifacts/' from ALL commits (this rewrites history)"
# Run filter-repo to remove the artifacts directory entirely
git filter-repo --invert-paths --path artifacts --force

if ($LASTEXITCODE -ne 0) {
  Write-Output "git-filter-repo failed"
  exit 1
}

Write-Output "Running git gc and pruning reflog"
git reflog expire --expire=now --all
git gc --prune=now --aggressive

Write-Output "Force-pushing cleaned history to origin/main"
git push --force origin main

if ($LASTEXITCODE -ne 0) {
  Write-Output "Force-push failed — check auth and remote status"
  exit 1
}

Write-Output "History rewritten and pushed. 'artifacts/' removed from history."
