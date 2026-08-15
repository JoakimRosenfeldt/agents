---
name: html-communication
description: Present work as a readable hosted HTML document. Use when the user asks for an HTML plan, spec, write-up, findings, summary, report, comparison, or UI mocks, or says "HTML" without more context.
---

# HTML communication

Do not use this for HTML that ships in the product.

1. Create one self-contained HTML file no larger than 512 KB.
2. Write it like a document, not a landing page. Optimize for reading and decision-making.
3. Make the layout responsive and accessible. Keep dependencies out unless essential.
4. For UI alternatives, label them A, B, and C and place them together for comparison.
5. Reuse the same path across revisions so its Postplan URL remains stable.
6. Upload with:

```bash
npx postplan upload <path-to-file>
```

Return the resulting URL. Never claim the document is hosted before upload succeeds. Do not open a browser to verify it unless the user asks.

