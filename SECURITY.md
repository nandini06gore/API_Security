# Safe Use and Security Policy

## Authorized testing only
Use this repository only for education and defensive engineering. Test local targets, systems you own, or systems for which you have explicit authorization and a defined scope.

## Lab isolation
- Bind deliberately vulnerable services to `127.0.0.1` by default.
- Never expose vulnerable targets to public networks.
- Use synthetic identities, tokens, records, and logs.
- Never use production secrets or personal data in sample files.
- Snapshot before destructive exercises and clean up afterward.

## Secrets
Use environment variables or a local secret manager. Commit placeholders only. Rotate any credential accidentally exposed.
