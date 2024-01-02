#!/bin/bash

# List of all submodules
submodules=("./api" "./app")

# Update each submodule
for submodule in "${submodules[@]}"; do
    echo ""
    echo ""
    echo "================================"
    echo "Updating $submodule..."
    echo "================================"
    cd $submodule
    git checkout main
    git pull origin main
    cd - > /dev/null
done

# Add and commit the submodule updates
echo ""
echo ""
echo "================================"
echo "Updating DEPLOYMENT BRANCH..."
echo "================================"
git add "${submodules[@]}"
git add .
git commit -m "Update submodules to the latest commits on their main branches"
git push

# Show results
echo ""
echo ""
echo "================================"
echo "Updating DEPLOYMENT BRANCH..."
echo "================================"
git status
