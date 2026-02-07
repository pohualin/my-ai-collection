# Python Test Specification

## Frameworks
- pytest
- unittest

## Structure
- Test files: test_*.py
- Test classes: inherit from unittest.TestCase
- Test functions: start with 'test_'

## Best Practices
### Test Placement
- Place test files in a dedicated `tests/` directory at the project root, or alongside modules as `test_*.py` files
- Use clear naming conventions for test files and functions (e.g., `test_module.py`, `test_function`)
- For larger projects, organize tests by type (unit, integration) in subfolders
- Ensure test files are importable and discoverable by test runners (pytest, unittest)

### Structure & Naming
- Name test files as `test_*.py` for discovery by test runners
- Name test functions and methods starting with `test_`
- Group related tests in classes (for unittest) or modules

### Isolation
- Each test should be independent and not rely on global state
- Use fixtures (`setUp`, `tearDown`, pytest fixtures) for setup and cleanup
- Avoid shared state between tests

### Assertions
- Use specific assertion methods (e.g., `assertEqual`, `assertTrue`, `assertRaises` in unittest; `assert` in pytest)
- Make assertions clear and related to input data
- Test for expected exceptions and edge cases

### Coverage
- Aim for high code coverage, but focus on meaningful tests
- Test both typical and edge cases
- Use coverage tools (e.g., `coverage.py`) to measure coverage

### Mocking & Side Effects
- Mock external dependencies (e.g., network, database) to isolate unit tests
- Use `unittest.mock` or `pytest-mock` for mocking
- Test side effects and state changes explicitly

### Organization & Maintainability
- Keep test code DRY (Don't Repeat Yourself)
- Organize tests in a `tests/` directory, possibly with subfolders for unit/integration tests
- Separate unit and integration tests
- Use descriptive docstrings and comments
- Refactor tests as needed for readability

### Advanced Techniques
- Parameterize tests to cover multiple input scenarios
- Use subtests (unittest) or parameterized fixtures (pytest)
- Skip or mark expected failures with decorators (`@unittest.skip`, `@pytest.mark.skip`)
- Use linters (e.g., `flake8`) and formatters (e.g., `black`) for test code quality
- Automate test execution in CI/CD pipelines (e.g., GitHub Actions, Travis CI)

### Resources
- [unittest documentation](https://docs.python.org/3/library/unittest.html)
- [pytest documentation](https://docs.pytest.org/en/stable/)
- [Real Python Testing Guide](https://realpython.com/python-testing/)

## Example
```python
def test_add():
    assert add(1, 2) == 3
```
