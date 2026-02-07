---
name: test-case-creator
description: >
  Generate unit test cases for Python, Java, and React projects. Use when asked to create, update, or improve test files, suggest test structure, or automate test writing for multiple languages.
version: 1
---

# Purpose
Create production-ready unit test cases for Python, Java, and React codebases, based on source files, function signatures, and user input.

# Process
1. Parse request: Extract language, target files, functions/classes, and user-supplied details
2. Generate YAML: `name`, `description`, `version: 1`
3. Write instructions: Purpose, rules, examples, resources
4. Suggest structure: Standard test file layout for each language
5. Validate: Ensure clarity, completeness, and best practices

# Output Format
---
name: test-case-creator
description: Generate unit test cases for Python, Java, and React projects.
---

# Test Case Creator Skill

The agent can assist with the following tasks:

## Test Creation
- Generate new test files for Python (pytest/unittest), Java (JUnit), and React (Jest/Testing Library)
- Extract function/class signatures and suggest relevant test cases
- Automate test writing for common scenarios

## Content Assistance
- Write clear, language-appropriate test cases
- Suggest test structure and best practices
- Recommend coverage improvements

## Customization
- Tailor test templates to project type and language
- Add custom test scenarios as requested

# Example Usage
- "Write unit tests for my Python module."
- "Generate JUnit tests for my Java class."
- "Create Jest tests for my React component."

# References
## Language Specifications
Detailed specifications and best practices for each supported language are provided in the references directory:

- [references/python-spec.md](references/python-spec.md): Python testing frameworks, structure, and examples
- [references/java-spec.md](references/java-spec.md): Java testing frameworks, structure, and examples
- [references/react-spec.md](references/react-spec.md): React testing frameworks, structure, and examples
