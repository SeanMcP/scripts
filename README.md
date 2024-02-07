# Scripts

🧰 Personal scripting toolbox

## Install

1. Clone the repository
2. Add the repository to your `PATH` environment variable
   - Example: `export PATH=$PATH:/path/to/scripts`

### Windows

On Windows `python` was Python 3.11, so I needed to create a symbolic link to get the `python3` shebangs to work:

1. Open Git Bash as an administrator.
2. Find the location of Python installation: `which python`
3. Navigate to the directory where `python.exe` is located
4. Create a symbolic link:
   ```bash
    ln -s python.exe python3
   ```
