# System Setup Guide and Workbook

This guide helps you understand your computing environment and record important details for reference during the lessons.

<mark>!!! Document in process !!!</mark>

**Fill in your system information:**

* My username is: _____________
* My home directory is: _____________
* My project root is: _____________
* My available parallel threads: _____________

---

### Your Home Directory

When you log into a Linux system, you start in your **home directory**. This is your personal space, typically located at `/home/YOUR_USERNAME`.

**On GitHub Codespaces:**
- Your username is: `codespace`
- Your home directory is: `/home/codespace`
- Your terminal starts here by default

**Note:** While this is where you start, most of your computational work will happen in your *project root* (explained below), not your home directory.

---

### Your Project Root

The **project root** is where the workshop files are stored. This is your working directory for all lessons and exercises.

#### On GitHub Codespaces

The repository is automatically cloned to: `/workspaces/trainings`

**Important:**
- VS Code's file browser shows: `/workspaces/trainings`
- Your terminal starts at: `/home/codespace`
- To navigate to the workshop files: `cd /workspaces/trainings`

**Project root:** `/workspaces/trainings`

#### On an HPC Server

On institutional high-performance computing (HPC) servers, you'll have a designated workspace for code and computation.

**Example:** On the Alpine server, a project root might be:
```
/projects/dcking@colostate.edu/trainings
```

To set up:
1. Navigate to your project space: `cd /your-project-space`
2. Clone the repository: `git clone [repository-url]`

**Project root:** `/your-project-space/trainings`

⚠️ **Consult your system administrator** for your specific project space location.

---

### How Many Parallel Threads Do I Have?

**Threads** (also called "cores", "virtual CPUs", or "processors") determine how many tasks your system can run simultaneously. Many bioinformatics programs can use multiple threads to run faster.

#### Finding Your Thread Count

**On Linux systems (including Codespaces):**
```bash
$ nproc
```

**On Mac:**
```bash
$ sysctl -n hw.logicalcpu
```

#### Examples by Environment

##### GitHub Codespaces
```
$ nproc
2
```
Most Codespaces have 2 threads available.

##### AWS Cloud (Example: 4 virtual CPUs)
```
$ nproc
4
```

##### HPC Compute Job
The number of threads is specified **when you submit your job** to the scheduler.

**Important:**
- Use the thread count you requested in your job submission
- If unsure, use **2** - this is always safe and won't affect results, only speed
- Check your job script or ask your system administrator

**Example job script:**
```bash
#SBATCH --cpus-per-task=8    # This means 8 threads available
```

##### Mac (Not Recommended for These Lessons)
```
$ sysctl -n hw.logicalcpu
10
```
*Note: These workshops are designed for Linux environments. Mac users should use GitHub Codespaces.*

---

### Quick Reference Commands

**Check where you are:**
```bash
$ pwd                    # Print working directory
```

**Navigate to project root (Codespaces):**
```bash
$ cd /workspaces/trainings
```

**Navigate to home directory:**
```bash
$ cd ~                   # or just: cd
```

**List your environment:**
```bash
$ whoami                 # Show your username
$ pwd                    # Show current directory
$ nproc                  # Show available threads
```
