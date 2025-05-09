import openai
import os
from datetime import datetime
from dotenv import load_dotenv
import subprocess

# Load API key from .env
load_dotenv()
openai.api_key = os.getenv("OPENAI_API_KEY")

# Get staged diff
diff_result = subprocess.run(
    ["git", "diff", "--cached"],
    capture_output=True,
    text=True
)

diff_text = diff_result.stdout.strip()

if not diff_text:
    print("No staged changes to summarize.")
    exit()

# Prepare the prompt
prompt = f"""
Summarize the following Git diff into a concise changelog entry, using bullet points if needed. Keep it brief but clear:

{diff_text}
"""

# Send to OpenAI
response = openai.ChatCompletion.create(
    model="gpt-4",
    messages=[
        {"role": "user", "content": prompt}
    ]
)

summary = response['choices'][0]['message']['content']

# Format log entry
timestamp = datetime.now().strftime("%Y-%m-%d %H:%M")
entry = f"\n### {timestamp}\n{summary}\n"

# Write to dev-log.md
with open("version-control/dev-log.md", "a", encoding="utf-8") as f:
    f.write(entry)

print("✅ Summary written to dev-log.md")
