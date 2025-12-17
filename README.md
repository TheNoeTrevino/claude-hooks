# Claude Code Hooks

## Demo

https://github.com/user-attachments/assets/32cf2ccc-d047-4c81-89fb-15f6809b8f1f

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
    "PreToolUse": [
      {
        "matcher": "AskUserQuestion",
        "hooks": [
          {
            "type": "command",
            "command": "~/.claude/hooks/answer-question.sh"
          }
        ]
      }
    ],
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


