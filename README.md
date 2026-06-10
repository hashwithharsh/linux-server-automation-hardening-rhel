# Linux Server Toolkit

Small, focused bash scripts for everyday Linux server administration (Debian/Ubuntu style).

## What is included

| Category | Purpose |
|----------|---------|
| users | create/delete users, groups, sudo discovery, expiry |
| permissions | inspect modes & ownership |
| logging | locate large log files |
| backup | local tar backups + retention cleanup |
| monitoring | disk, memory, top processes |
| storage | mounts, large files, read-only mounts |
| processes | zombies, name lookup, top CPU |
| security | effective ssh settings, world-writable files |
| network | listening ports with process names |
| packages | recent installs, pending security updates |
| systemd | service status helpers + example unit |

## Quick start

```bash
chmod +x scripts/*/*.sh
sudo ./scripts/monitoring/disk_usage.sh
```

Most scripts that change system state require root. Check scripts themselves for usage.

## Notes

- Scripts are intentionally short so they are easy to read and adapt.
- Prefer running individual checks rather than a giant monolithic tool.
- Example cron and systemd unit files live under `config/` and `systemd/`.
