#!/bin/bash
echo "Using envsubst for variable substitution"
PROJECT_ROOT=$(circleci env subst "${PARAM_PROJECT_ROOT}")
API_KEY=$(circleci env subst "${PARAM_API_KEY}")
PROJECT_EXTERNAL_ID=$(circleci env subst "${PARAM_PROJECT_EXTERNAL_ID}")
SERVER_URL=$(circleci env subst "${PARAM_SERVER_URL}")

echo "Installing and running nysa-scanner-cli"
npx --yes nysa-scanner-cli scan --projectRoot="$PROJECT_ROOT" --apiKey="$API_KEY" --projectExternalId="$PROJECT_EXTERNAL_ID" --serverUrl="$SERVER_URL"