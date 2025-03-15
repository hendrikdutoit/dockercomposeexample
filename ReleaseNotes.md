# Release 0.2.1

## General Changes

- Update ISSUE_TEMPLATE's
- Implement reusable workflow scripts
  - Delete the current workflows
  - Implement workflows from RealTimeEvents\\devops-automation
- Implement PowerShell automation scripts
  - DoPytestScenarios.ps1 — Illustrate the setup to run the pytest.
  - CreateDbSqlScript.ps1 — Create a sql script to create the db users.
  - InstallDevEnv.ps1 — Automate installation of the development environment.
  - SetUpDocker.ps1 — AAutomate setup of a Docker container.
  - SetupDotEnv.ps1 — Create the .env file from the relevant environment variables.
  - SetupGitHubAccess.ps1 — Configure access to GitHub for this repository.
  - SetupPrivateRepoAccess.ps1 — Configure Poetry to access private repositories.
- Add pytest for new Docker setup scripts.
- Update configuration files
  - .gitattributes
  - .gitignore
  - .pre-commit-config.yaml
  - LICENSE.txt
  - pyproject.toml
  - README.md
- Fixed configuration errors:
  - Docker

______________________________________________________________________

# Release 0.0.1

## General Changes

- Initial setup and configuration.
