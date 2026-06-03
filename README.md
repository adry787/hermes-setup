# Hermes Agent Setup 🤖

Setup Hermes Agent di VPS dengan Telegram bot.

**Official:** https://hermes-agent.nousresearch.com/docs/
**GitHub:** https://github.com/NousResearch/hermes-agent

## Quick Start

```bash
curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash
hermes setup
hermes gateway setup
hermes gateway start
```

## Requirements

| Component | Version |
|-----------|---------|
| Node.js | 20+ |
| OS | Ubuntu 22.04+ |

## Install

### One-Click (Recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash
```

### Manual

```bash
# Node.js 20
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo bash -
sudo apt install -y nodejs

# Hermes
npm install -g hermes-agent

# Setup
hermes setup
```

## API Keys

| Provider | Env Variable |
|----------|-------------|
| Anthropic | ANTHROPIC_API_KEY |
| OpenAI | OPENAI_API_KEY |
| DeepSeek | DEEPSEEK_API_KEY |
| OpenRouter | OPENROUTER_API_KEY |
| Kimi | KIMI_API_KEY |

```bash
hermes auth add anthropic
```

## Telegram Setup

1. @BotFather → /newbot → token
2. @userinfobot → user ID
3. Run:

```bash
hermes gateway setup
hermes gateway install
hermes gateway start
```

## Gateway Commands

```bash
hermes gateway setup    # Configure
hermes gateway install  # Install service
hermes gateway start    # Start
hermes gateway stop     # Stop
hermes gateway restart  # Restart
hermes gateway status   # Status
```

## CLI Commands

```bash
hermes                  # Chat
hermes chat -q "query"  # Single query
hermes model            # Change model
hermes doctor           # Health check
hermes config edit      # Edit config
hermes skills list      # List skills
hermes tools            # Manage tools
hermes cron list        # List cron jobs
hermes update           # Update
```

## Skills

```bash
hermes skills browse    # Browse
hermes skills search    # Search
hermes skills install   # Install
```

## Tools

| Tool | Description |
|------|-------------|
| terminal | Shell commands |
| file | File read/write |
| web | Web search |
| browser | Browser automation |
| vision | Image analysis |
| memory | Persistent memory |
| cronjob | Scheduled tasks |

## Systemd Service

```bash
hermes gateway install
hermes gateway start
```

## Troubleshooting

| Issue | Solution |
|-------|----------|
| hermes not found | npm install -g hermes-agent |
| API key invalid | hermes auth |
| Telegram not connecting | hermes gateway restart |
| Gateway dies on logout | sudo loginctl enable-linger $USER |

## License

MIT
