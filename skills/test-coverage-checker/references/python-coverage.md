# Python Coverage Specification

## Tools
- coverage.py
- pytest-cov


## Commands
- Install coverage.py: `pip install coverage`
- Run tests with coverage:
  - `coverage run -m pytest`
  - `coverage run -m unittest discover`
- Generate terminal report: `coverage report`
- Generate HTML report in a custom folder (recommended: reports/):
  - `coverage html -d reports`
- Open `reports/index.html` in your browser
- One-liner: `coverage run -m pytest && coverage report && coverage html -d reports`

> Note: By default, coverage.py writes HTML reports to htmlcov/. For better organization, use the -d option to specify a reports folder at the project root.



## Automation
- Add coverage commands to scripts or CI/CD workflows
- To omit files from coverage reports, use a .coveragerc file in your project root:

  ```ini
  [run]
  omit =
      app/transmission_service.py
      app/app_fastapi.py
      app/list_files_service.py
  ```

  This configuration will exclude the listed files from coverage analysis and reports.

- After generating reports, you can safely remove the .coverage file to keep your workspace clean:
  - `rm .coverage`

- Example GitHub Actions snippet:
    - name: Run coverage
      run: |
        pip install coverage
        coverage run -m pytest
        coverage report
        coverage html -d reports
        rm .coverage

> The .coverage file is only needed for generating reports and can be deleted after report creation.
