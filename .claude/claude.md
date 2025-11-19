# Presentations Project - Claude Code Instructions

## Project Overview

This is a static website for health-related presentations using Hugo with the Stack theme and Remark.js for slide presentations.

## Technology Stack

- **Hugo** v0.152.2 extended (static site generator)
- **Stack Theme** (Git submodule at themes/hugo-theme-stack)
- **Remark.js** (for slide-based presentations)
- **Language**: German (DE)

## Project Structure

```
.
├── content/
│   ├── posts/          # All presentations and blog posts
│   └── page/           # Special pages (search, archives)
├── layouts/
│   └── _default/
│       └── presentation.html  # Custom layout for Remark.js presentations
├── static/
│   └── assets/         # Static files (PDFs, images, JS)
├── themes/
│   └── hugo-theme-stack/  # Git submodule
├── hugo.toml          # Main configuration
└── public/            # Generated site (gitignored)
```

## Content Types

### Regular Posts (layout: post)
Use Stack theme's default blog layout with full theme features.

### Presentations (layout: presentation)
Use custom Remark.js layout for slide-based presentations:
- Full-screen slide mode
- Markdown-based slide content
- Custom CSS for presentation styling
- Page breaks with `<!-- Page break -->`
- Support for custom slide sizes via `size: medium` in front matter

## Development Workflow

### Starting Development Server
```bash
hugo server
# Site available at http://localhost:1313/presentations/
```

### Building for Production
```bash
hugo --gc --minify
```

### Adding New Content

1. Create new file in `content/posts/`
2. Add appropriate front matter (see examples below)
3. Add content in Markdown
4. Place any assets in `static/assets/YYYY-MM-DD-XX/`

### Front Matter Examples

**Presentation:**
```yaml
---
layout: presentation
title: "Presentation Title"
subtitle: "Presentation Subtitle"
date: 2020-02-26 14:00:00
author: Jakob Schumacher
place: Location
course: Course Name
host: Host Organization
size: medium  # optional, makes font smaller
---
```

**Regular Post:**
```yaml
---
layout: post
title: "Post Title"
date: 2020-02-26 14:00:00
author: Jakob Schumacher
---
```

## Important Notes

1. **Hugo Extended Required**: The Stack theme requires Hugo extended version (includes SCSS processing)

2. **Git Submodules**: The theme is a Git submodule. When cloning, run:
   ```bash
   git submodule update --init --recursive
   ```

3. **Asset Paths**: Static files in `static/assets/` are served at `/assets/` (not `/static/assets/`)

4. **Presentation Layout**: The custom presentation layout (`layouts/_default/presentation.html`) wraps content in a `<textarea id="source">` for Remark.js processing

5. **Legacy Files**: Jekyll files (`_posts/`, `_layouts/`, `_config.yml`, `Gemfile`) are kept for reference but not used

## Configuration

Main settings in `hugo.toml`:
- baseURL: https://jakobschumacher.github.io/presentations/
- Language: German (de)
- Permalinks: /:year/:month/:day/:title/
- Unsafe HTML allowed in Markdown (for presentations)

## Testing

Before committing:
1. Run `hugo --gc` to ensure build succeeds
2. Check presentations render correctly with Remark.js
3. Verify all asset links work
4. Test both presentation and regular post layouts

## Migration History

- **2025-11-19**: Migrated from Jekyll to Hugo
  - Converted all layouts from Liquid to Go templates
  - Migrated content from `_posts/` to `content/posts/`
  - Added Stack theme as Git submodule
  - Created custom presentation layout for Remark.js compatibility
  - Reorganized assets into `static/assets/` structure
