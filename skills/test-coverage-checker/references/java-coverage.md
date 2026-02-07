# Java Coverage Specification

## Tools
- Jacoco (Gradle, Maven)

## Commands
- With Gradle:
    - `./gradlew test`
    - `./gradlew jacocoTestReport`
    - Open `build/reports/jacoco/test/html/index.html`
- With Maven:
    - `mvn test`
    - `mvn jacoco:report`
    - Open `target/site/jacoco/index.html`

## Automation
- Add coverage commands to scripts or CI/CD workflows
- Example GitHub Actions snippet:
    - name: Run Jacoco coverage
      run: |
        ./gradlew test
        ./gradlew jacocoTestReport
