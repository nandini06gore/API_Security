# Vulnerable API Training Targets

This directory is reserved for deliberately insecure applications used in isolated, local exercises.

Safety requirements:
- Bind to `127.0.0.1` by default.
- Never publish or port-forward a vulnerable service.
- Use synthetic records and credentials.
- Include a warning and secure counterpart for each insecure behavior.
- Do not add malware, persistence, credential theft, or destructive functionality.

The scaffold intentionally contains no network-exposed vulnerable service. Add targets incrementally with tests and safety controls.
