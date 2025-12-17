# Claude Code Hooks

## Demo

https://github.com/user-attachments/assets/dbe1d10b-42f0-4a9a-a2e2-a00d7b776aa0

## Installation
You can put this anywhere, but this is what I do:
``` bash
git clone https://github.com/TheNoeTrevino/claude-hooks.git ~/.claude/hooks
```

Now add this to your `~/claude/settings.json`:

``` json
{
  ...
  "hooks": {
  ...
    "PermissionRequest": [
      {
        "matcher": "*",
        "hooks": [
          {
            "type": "command",
            "command": "~/.claude/hooks/needs-permissions.sh"
          }
        ]
      }
    ],
    "Stop": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "/~.claude/hooks/notify-ready.sh"
          }
        ]
      }
    ]
  },
}
```


