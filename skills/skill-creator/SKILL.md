---
name: skill-creator
description: Generate new Agent Skills from natural language descriptions. Create complete SKILL.md files with YAML frontmatter, instructions, and folder structure suggestions.
---


# Agent Skill Format (per Agent Skills Specification)

All Agent Skills must begin with YAML frontmatter, delimited by triple dashes (---) at the top and bottom. The required fields are:

```
---
name: skill-name
description: 'A description of what this skill does and when to use it.'
---
```

**Required fields:**
- `name`: 1–64 characters, lowercase letters/numbers/hyphens only, must match the folder name, no leading/trailing/consecutive hyphens.
- `description`: 10–1024 characters, single line, single-quoted, clearly states what the skill does and when to use it.

**Optional fields:**
- `license`: License for the skill (e.g., MIT, Apache-2.0)
- `compatibility`: Environment or product requirements
- `metadata`: Arbitrary metadata for the skill
- `allowed-tools`: List of tool names the skill is allowed to use

**Validation rules:**
- Do not use YAML block scalars (no `>` or multi-line for description)
- Do not indent description or add extra attributes
- Always surround frontmatter with ---
- The name must match the folder, be lowercase, and use only allowed characters
- The description must be single-quoted and on a single line

For full details, see the [Agent Skills specification](https://agentskills.io/specification).

# Skill Structure

Each skill folder may include:
- `SKILL.md` (required): With correct frontmatter and markdown instructions
- `references/` (optional): Documentation, specs, best practices, language instructions
- `assets/` (optional): Static files (images, diagrams, sample data, templates)
- `scripts/` (optional): Executable scripts for automation, setup, or workflow tasks

These folders help organize knowledge, resources, and automation for each skill.

# Output Format Example

```
---
name: example-skill
description: 'Describe what this skill does and when to use it.'
---

# Purpose
Explain the skill's purpose and when it should be triggered.

# Instructions
Provide step-by-step instructions, rules, and examples.

# References
List or link to any bundled resources, scripts, or documentation.
```

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