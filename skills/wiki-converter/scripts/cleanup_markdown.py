import sys
import re

if len(sys.argv) != 2:
    print("Usage: cleanup_markdown.py <markdown_file>")
    sys.exit(1)

md_file = sys.argv[1]

with open(md_file, 'r', encoding='utf-8') as f:
    content = f.read()

# Replace HTML entities
content = content.replace('&lt;', '<').replace('&gt;', '>')

# Remove unnecessary backslashes before underscores
content = re.sub(r'\\_', '_', content)

# Fix code blocks for JSON and bash
content = re.sub(r'(?m)^\{\n"', '```json\n{\n"', content)
content = re.sub(r'(?m)\n\}\n', '\n}\n```\n', content)
content = re.sub(r'(?m)^curl ', '```bash\ncurl ', content)
content = re.sub(r'(\n\-H .+\n\-H .+\n\-d .+)', r'\1\n```\n', content)

# Remove trailing whitespace
content = re.sub(r'[ \t]+$', '', content, flags=re.MULTILINE)

with open(md_file, 'w', encoding='utf-8') as f:
    f.write(content)

print(f"Cleaned up {md_file}")
