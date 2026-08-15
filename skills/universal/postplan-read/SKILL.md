---
name: postplan-read
description: Read content from a Postplan document. Use when the user provides a postplan.dev URL or asks to inspect one.
---

# Postplan read

Fetch the uploaded HTML with the shell. Do not use web search or a browser.

1. Remove the trailing slash, then append `/raw` unless the URL already ends with `/raw`.
2. Fetch it:

```bash
curl --fail --silent --show-error --location --max-time 30 \
  --output /tmp/postplan.html \
  "<raw-url>"
```

3. Read `/tmp/postplan.html` and continue the user's request from its contents.

If the request fails, report the actual HTTP or network error. Do not substitute search results.

