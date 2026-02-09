# React Documentation Reference

## JSDoc Example

/**
 * Button component.
 * @param {string} label - Button label
 * @param {function} onClick - Click handler
 * @returns {JSX.Element}
 */
function Button({ label, onClick }) {
    return <button onClick={onClick}>{label}</button>;
}

## Common JSDoc Tags
- @param: Describes a parameter
- @returns: Describes the return value
- @example: Provides usage example
