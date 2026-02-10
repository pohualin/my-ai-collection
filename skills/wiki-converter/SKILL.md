# ---
name: wiki-converter
description: Convert Wiki HTML content to Markdown using custom scripts or recommended tools for documentation purposes.
# ---
# SKILL: Convert Wiki HTML to Markdown

## Purpose
This skill describes how to convert HTML content from a Wiki page into Markdown format for documentation purposes.

## Steps

1. **Copy the HTML content** from the Wiki page you want to convert.
2. **Use the provided conversion scripts** in this repository to convert HTML or Word (.docx) files to Markdown. These scripts are the preferred method and are tailored for our documentation needs.
   - See the scripts in the `scripts/` directory or as documented in project README.
   - Run the script with your input file as shown below.
   - The script will automatically run a cleanup step to fix common Markdown formatting issues after conversion.
3. If the custom scripts are unavailable, you may use other HTML-to-Markdown converters:
   - [Pandoc](https://pandoc.org/): Command-line tool for converting documents.
   - [markitdown](https://markitdown.medusis.com/): Online HTML to Markdown converter.
   - [html-to-markdown npm package](https://www.npmjs.com/package/html-to-markdown): For programmatic conversion.
4. **Run the conversion** and review the generated Markdown for formatting issues or artifacts.
5. **Edit and clean up** the Markdown as needed for clarity and consistency.
6. **Save the Markdown** in your documentation repository (e.g., in the `pages/` directory).

## Example (using Pandoc)

### Example (using custom script)

```sh
# For HTML or DOCX input, this script converts and cleans up Markdown automatically
bash scripts/convert-wiki-html-to-md.sh input.docx output.md
```

### Example (using Pandoc)

```sh
pandoc -f html -t markdown_strict -o output.md input.html
```

## Tips
- Check for tables, images, and links—they may need manual adjustment.
- Use a Markdown linter or preview to verify formatting.
- The cleanup script will fix common formatting issues, but manual review is recommended for best results.
- Retain important metadata or comments from the original Wiki if needed.

---
_Last updated: 2026-02-05_