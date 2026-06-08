# Linux Server Toolkit

Collection of small bash scripts for common server administration tasks on Debian/Ubuntu style systems.

## Categories so far

- **users** – create/delete users, group membership, sudo discovery
- **permissions** – inspect file modes and ownership
- **logging** – find large log files
- **backup** – local tar backups and retention cleanup
- **monitoring** – disk, memory, top processes
- **storage** – mounts, large files
- **processes** – zombies, top CPU
- **security** – ssh config, world-writable files
- **network** – listening ports
- **packages** – recent installs, security updates
- **systemd** – service status helpers

Most scripts expect to be run with sudo when they touch system state.
