#!/bin/bash
read -p "Give the url of the  repository: " urlOriginRepoFront
git clone $urlOriginRepoFront frontend
cd frontend
cd ..

echo "Creating .env file..."
yes | cp ./.env_file .env

echo "Creating frontend .env file..."
yes | cp ./frontend/.env_file ./frontend/.env

echo "The end!"