# Java Test Specification

## Purpose
Define strict requirements and best practices for generating production-ready Java unit and integration tests, ensuring high coverage and maintainability.

## Supported Frameworks & Java Version
- **Frameworks:** JUnit 4 (default), Mockito (mocking), Spring Test, Spring Boot Starter Test, REST Docs MockMvc, Trustwave Test Util, SLF4J Simple (test logging)
- **Version:** Java 11 only (use only Java 11 features)
- **Library Versions:**
  - JUnit: 4.x
  - Maven Surefire: ≤ 3.0.0
  - Jacoco: ≤ 0.8.11
  - Avoid versions requiring Java 17+.

## Test Framework Detection
- Detect frameworks from build files (pom.xml, build.gradle).
- Use JUnit and Mockito unless another is detected.

## Test Structure
- Test files: `*Test.java`
- Test classes: Use `@Test` for each test method.
- Use `@Before`/`@After` for setup/teardown.
- Always import from the original class to avoid import errors.

## Best Practices
- Use assertions for validation.
- Isolate tests; mock dependencies with Mockito.
- Use Spring Test utilities for integration/unit tests.
- Use REST Docs MockMvc for API documentation tests.
- Indirectly test private methods via public methods.

## Coverage & Testing Instructions
- Test every public method.
- Cover all logical branches (if/else, switch, loops).
- Cover exception/error paths.
- Test edge cases, invalid/null/empty/boundary inputs.
- Use parameterized tests for multiple scenarios.
- Add integration tests for service/repository layers.
- Cover all business logic, data transformations, and error handling.
- Regularly review coverage reports and add tests for uncovered lines/branches.
- Iterate until 95%+ coverage is achieved and all tests pass.
- Fix all import and compatibility issues.

## How to Use This Spec
1. Detect frameworks and Java version.
2. For each public method, use the checklist below to ensure all scenarios are tested.
3. Run coverage tools and add tests for any uncovered code.
4. Summarize coverage and justify any uncovered code.

## Checklist for Every Method
- [ ] All public methods tested
- [ ] All logical branches (if/else, switch, loops)
- [ ] Exception/error paths
- [ ] Edge cases, invalid/null/empty/boundary inputs
- [ ] Parameterized tests for multiple scenarios
- [ ] Integration tests for service/repository layers
- [ ] Business logic, data transformations, error handling
- [ ] Tests match actual method behavior (exceptions vs. error responses)
- [ ] Coverage reviewed and iterated until 95%+ achieved
- [ ] Summary of coverage and justification for any uncovered code

## Advanced Mockito Usage for Private/Protected Methods
- If you must control the behavior of a private or protected method for testing, prefer refactoring it to package-private or protected.
- Use Mockito.spy and doReturn()/doThrow() to stub package-private or protected methods in the class under test.
- Avoid using PowerMock or reflection to access true private methods unless absolutely necessary, as it breaks encapsulation and maintainability.
- Example:
```java
MyService spyService = spy(new MyService());
doReturn(mockedValue).when(spyService).packagePrivateOrProtectedMethod(args);
```
- Always prefer testing private logic through public APIs. Only use spies for legacy or hard-to-refactor code.

## Examples

**Simple Unit Test**
```java
import org.junit.Test;
import static org.junit.Assert.*;

public class CalculatorTest {
    @Test
    public void testAdd() {
        assertEquals(3, Calculator.add(1, 2));
    }
}
```

**Mockito Example**
```java
import org.junit.Test;
import org.mockito.Mockito;
import static org.junit.Assert.*;

public class ServiceTest {
    @Test
    public void testServiceUsesDependency() {
        Dependency dep = Mockito.mock(Dependency.class);
        Mockito.when(dep.getValue()).thenReturn(42);
        Service service = new Service(dep);
        assertEquals(42, service.fetchValue());
    }
}
```
