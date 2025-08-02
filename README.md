🧰 Linux System Automation with Bash Scripts

[![Shell Script](https://img.shields.io/badge/Bash-automation-blue.svg)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)]()
[![Last Updated](https://img.shields.io/badge/Updated-August%202025-green.svg)]()

Automates essential Linux system administration tasks using **Bash scripting**. This project is designed for DevOps beginners and system administrators who want to standardize, schedule, and scale daily operations such as user management, package installation, system updates, log rotation, and cleanup routines.

---

## 📦 Use Cases

✅ Automate new user creation with group assignment and password setup  
✅ Install essential packages with conditional checks  
✅ Automate system updates and log outputs with timestamps  
✅ Compress and clean old logs to maintain system hygiene  
✅ Schedule scripts using `cron` for regular task automation  
✅ Use Git for versioning and collaboration of all automation scripts  

---

## 📁 Project Structure

linux-automation-bash/
├── scripts/                   # Automation scripts
│   ├── create-users.sh        # Batch user creation
│   ├── install-packages.sh    # Package installer
│   ├── system-update.sh       # Update & upgrade script
│   ├── rotate-logs.sh         # Log archiving and cleanup
│   └── cleanup-temp.sh        # Temp/cache cleaner
│
├── cron/                     # Crontab examples
│   └── crontab-example.txt
│
├── users.txt                 # List of usernames for bulk creation
├── .gitignore
├── LICENSE
└── README.md

---

## 🚀 Getting Started

### 📥 Clone the Repository
bash
git clone https://github.com/your-username/linux-automation-bash.git
cd linux-automation-bash

### 🔧 Prerequisites

* Linux system (Ubuntu/Debian recommended)
* `sudo` access
* Bash shell (v4+)
* Git installed

---

## 🛠️ Script Overview

### 1. `create-users.sh`

Batch-create user accounts from `users.txt`, set default passwords, assign groups.

### 2. `install-packages.sh`

Install essential DevOps tools (e.g., `git`, `curl`, `wget`, `htop`) only if missing.

### 3. `system-update.sh`

Update package lists and upgrade system packages. Logs output with timestamps.

### 4. `rotate-logs.sh`

Compress `.log` files older than 7 days and delete `.gz` logs older than 30 days.

### 5. `cleanup-temp.sh`

Remove contents of `/tmp`, clear APT cache to save space.

---

## ⏰ Automate with `cron`

Sample crontab entries (included in `cron/crontab-example.txt`):

```cron
# Run system updates every Sunday at 2 AM
0 2 * * 0 /path/to/system-update.sh

# Clean temp files daily at midnight
0 0 * * * /path/to/cleanup-temp.sh

# Rotate logs every Friday at 3 AM
0 3 * * 5 /path/to/rotate-logs.sh
```

Install your crontab:

```bash
crontab cron/crontab-example.txt
```

---

## 🔐 Security Practices

* Avoid hardcoding sensitive data (e.g., passwords).
* Use `chpasswd` with caution and log minimal output.
* Set proper file permissions (`chmod 700 scripts/*`) to prevent misuse.

---

## ✅ Demo Output

```
User 'devuser1' created successfully.
Package 'htop' already installed.
System updated successfully on 2025-08-02.
Rotated 3 log files. Deleted 5 old archives.
```

*Logs can be found in `/var/log/sysupdate_YYYY-MM-DD.log` (if configured).*

---

## 📈 Learning Objectives

| Skill                 | Demonstrated Through                    |
| --------------------- | --------------------------------------- |
| Bash Scripting        | All automation scripts                  |
| Linux Administration  | User, package, log, and update handling |
| Task Scheduling       | `cron` automation                       |
| Version Control (Git) | Tracking scripts and changes            |
| Documentation         | GitHub-standard `README.md`             |

---

## 📌 Future Enhancements

* [ ] Add Ansible playbooks to trigger scripts remotely
* [ ] Include email alerts on script failures
* [ ] Containerize with Docker for isolated testing
* [ ] Implement logging to a central syslog or ELK stack

---

## 👤 Author

**Praneeth Perera**
📧 [praneethperera24@gmail.com](mailto:praneethperera24@gmail.com)
🔗 [LinkedIn](https://www.linkedin.com/in/praneethperera) • 🌐 [www.praneethperera.com](https://www.praneethperera.com)

---

## 📜 License

Licensed under the [MIT License](LICENSE).

