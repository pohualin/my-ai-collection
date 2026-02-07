---
name: skill-creator
description: > 
  Generate new Agent Skills from natural language descriptions. 
  Create complete SKILL.md files with YAML frontmatter, instructions, 
  and folder structure suggestions.
---

# Purpose
Create production-ready Copilot Agent Skills from workflow descriptions.


# Process
1. **Parse request**: Extract skill name, trigger scenarios, key behaviors
2. **Generate YAML**: `name`, `description` (precise matching criteria), `version: 1`
3. **Write instructions**: Purpose, rules, examples, resources
4. **Suggest structure**: `.github/skills/<kebab-name>/` + optional files
   - Optionally include:
     - `references/`: Documentation, specs, best practices, language instructions
     - `assets/`: Static files (images, diagrams, sample data, templates)
     - `scripts/`: Executable scripts for automation, setup, or workflow tasks
5. **Validate**: Clear description, specific rules, no conflicts

# Skill Structure
Each skill can have the following optional folders:
- `references/`: For documentation, specs, and language-specific instructions
- `assets/`: For static resources like images, diagrams, or sample data
- `scripts/`: For executable scripts (shell, Python, etc.) to automate tasks or integrate workflows

These folders help organize knowledge, resources, and automation for each skill.

# Output Format
---
name: wiki-writer
description: Guides creating, updating, and formatting GitHub wiki pages. Use when asked to create wiki documentation, summarize code for wiki, generate markdown pages, or manage wiki structure.
---

# AgentWi Skills for Wiki Pages Workspace
The agent can assist with the following tasks:

## Page Management
- Create new wiki pages with proper structure
- Edit and update existing pages
- Rename or move pages
- Delete pages (with confirmation)

## Content Assistance
- Format text using Markdown
- Generate tables of contents
- Insert internal and external links
- Suggest improvements for clarity and style
- Check for broken links

## Search & Navigation
- Search for pages by title or content
- List all pages or categories
- Find related or referenced pages

## Automation
- Generate page templates
- Summarize long pages
- Convert between formats (Markdown, HTML, etc.)

## Custom Requests
- Answer questions about workspace usage
- Provide examples or templates
- Help with technical troubleshooting

---

To use these skills, simply describe your request to the agent!