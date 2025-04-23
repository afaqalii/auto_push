#!/bin/bash
# Prompt the user for a custom commit message
echo "Enter your commit message:"
read user_commit_message

echo "Enter branch name:"
read user_branch_name

# Combine the user's message with the dynamic date and time
commit_message="$user_commit_message"
branch_name="$user_branch_name"  # Fix: Use the variable value here

# Add all changes to the staging area
git add .

# Commit changes with the combined commit message
git commit -m "$commit_message"

# Push changes to the specified branch
git push origin "$branch_name"

# Make a build folder of the latest code (if needed)
# npm run build

echo "Changes committed and pushed to GitHub successfully!"
