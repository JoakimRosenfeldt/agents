---
name: file-upload
description: Upload a local file and return a public URL. Use when the user asks to upload, host, publish, or share a file, or when a PR needs an uploaded artifact.
---

# File upload

Requires `FILE_HOST_TOKEN` and `curl`. If the token is unset, tell the user instead of guessing.

Use the file's basename. The server slugifies it and adds a suffix, so names need not be unique.

```bash
curl --silent --show-error --fail-with-body \
  -X PUT \
  -T "<path-to-file>" \
  -H "x-upload-token: $FILE_HOST_TOKEN" \
  "https://files.tslop.org/<filename>"
```

Treat the response body as the public URL. Return it plainly. In GitHub, use an image embed for images or GIFs and a link for other files.

For a short video preview, create a GIF with FFmpeg only when it improves review. Preserve the original file.

