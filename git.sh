#!/bin/bash

(
  # ⏳ 1. Random delay (1 से 35000 सेकंड तक = ~9.7 घंटे)
  sleep $(( RANDOM % 13 ))

  # 📝 2. Random commit message चुनना
  messages=(
    "Refactor code for better readability"
    "Fix issue with login form"
    "Update documentation for new features"
    "Improve API response time"
    "Minor UI tweaks for better UX"
    "Clean up unused code"
    "Optimize database queries"
    "Update README with installation instructions"
    "Small update for consistency"
    "UI improvements"
    "Bug fix in authentication"
    "Improve mobile responsiveness"
    "Add unit tests"
    "Remove deprecated methods"
    "Refactor variable names"
    "Polish UI animations"
    "Enhance accessibility"
    "Patch security vulnerability"
    "Add comments to complex logic"
    "Modularize code structure"
    "Improve error handling"
    "Refine CSS layout"
    "Update config files"
    "Refactor loops"
    "Improve logging"
    "Update API endpoints"
    "Fix typo in docs"
    "Optimize image loading"
    "Simplify conditionals"
    "Improve database indexing"
    "Tweak dark mode styles"
  )
  random_message=${messages[$RANDOM % ${#messages[@]}]}

  # 📜 3. log.txt में log डालना
  echo "Commit: $random_message - $(date -u)" >> log.txt

  # 🌀 4. Git operations
  git add .
  git commit -m "$random_message - $(date -u)"
  git push origin main

) &
