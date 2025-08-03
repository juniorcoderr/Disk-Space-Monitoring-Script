**Title:** Disk Space Monitoring Script (Bash)

**Description:**

A simple yet effective Bash script to monitor disk usage of specific partitions (like `/dev/sda2`) on a Linux system. If the disk usage crosses a predefined threshold (default: 80%), it sends an email alert to notify the user about low disk space. This script is useful for system administrators and DevOps engineers to prevent system crashes due to full disks.

**Features:**

* Monitors disk usage in human-readable format.
* Sends email alerts if usage exceeds threshold.
* Customizable threshold and recipient.
* Lightweight and easy to configure.

**Usage:**

```bash
bash disk_monitor.sh
```

**Requirements:**

* `mail` command configured (e.g., `mailx`, `ssmtp`, or `sendmail`)
* Bash shell environment (Linux)

**Example Output:**

```
Warning, disk space is low!!!! - 85%
```
