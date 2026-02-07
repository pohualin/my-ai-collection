# Java Test Specification

## Frameworks
- JUnit 5

## Structure
- Test files: *Test.java
- Test classes: annotated with @Test

## Best Practices
- Use assertions for validation
- Setup/teardown with @BeforeEach/@AfterEach
- Isolate tests

## Example
```java
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class CalculatorTest {
    @Test
    void testAdd() {
        assertEquals(3, Calculator.add(1, 2));
    }
}
```
