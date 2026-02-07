# React Coverage Specification

## Tools
- Jest
- Istanbul

## Commands
- With npm:
    - `npm test -- --coverage`
    - Open `coverage/lcov-report/index.html`
- With yarn:
    - `yarn test --coverage`
    - Open `coverage/lcov-report/index.html`

## Automation
- Add coverage commands to scripts or CI/CD workflows
- Example GitHub Actions snippet:
    - name: Run React coverage
      run: |
        npm install
        npm test -- --coverage
