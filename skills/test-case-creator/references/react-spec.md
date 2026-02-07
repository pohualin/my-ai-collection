# React Test Specification

## Frameworks
- Jest
- React Testing Library

## Structure
- Test files: *.test.js or *.spec.js
- Test functions: use 'test' or 'it'

## Best Practices
- Test user interactions
- Assert rendered output
- Use cleanup between tests

## Example
```javascript
import { render, screen } from '@testing-library/react';
import App from './App';

test('renders welcome message', () => {
  render(<App />);
  expect(screen.getByText(/welcome/i)).toBeInTheDocument();
});
```
