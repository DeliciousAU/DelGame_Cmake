import re

with open("version.txt", "r") as f:
    version = f.read().strip()

match = re.match(r"v(\d+)\.(\d+)\.(\d+)", version)
if not match:
    raise ValueError("Invalid version format in version.txt")

major, minor, patch = map(int, match.groups())
patch += 1
new_version = f"v{major}.{minor}.{patch}"

with open("version.txt", "w") as f:
    f.write(new_version)

print(f"Version updated to {new_version}")
