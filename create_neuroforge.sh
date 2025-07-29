#!/bin/bash

# STEP 1: Create local folder
mkdir NeuroForge && cd NeuroForge

# STEP 2: Initialize Git repo
git init

# STEP 3: Create README
echo "# NeuroForge" > README.md
echo "Modular AI Expert Curriculum – Symbolic + Neural Reasoning." >> README.md

# STEP 4: Create base folders
mkdir module-01-rag module-02-finetuning module-03-neural-architectures
mkdir module-04-ml-engineering module-05-research module-06-portfolio

# STEP 5: Add files
touch requirements.txt LICENSE
echo "MIT License" > LICENSE

# STEP 6: Commit
git add . && git commit -m "Initial commit for NeuroForge curriculum"

# STEP 7: Create GitHub repo using GitHub CLI
gh repo create NeuroForge --public --source=. --remote=origin --push
