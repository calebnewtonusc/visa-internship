# Visa Internship

The dev half of Chewbacca, packed so it installs in one command. You get 21 skills and
7 standards that make Claude Code plan, build, verify and ship like a senior engineer,
and none of the personal or Mac-automation stuff.

```bash
git clone https://github.com/calebnewtonusc/visa-internship.git ~/visa-internship
sh ~/visa-internship/install.sh
```

Restart Claude Code after that. The skills load when the work calls for them, and the
standards in [CLAUDE.md](CLAUDE.md) load in every session. To remove it, delete the
`@~/.claude/visa-internship/CLAUDE.md` line from `~/.claude/CLAUDE.md` along with the
skill links. If you're building tonight, read [HACKATHON.md](HACKATHON.md) before you start.

## What's in it

- `skills/`: debugging, recovering-from-errors, reviewing-changes, deslop, shipping,
  graph-engineering (parallel agents and task graphs), stack-rules, clone-site,
  webapp-testing, mcp-builder, create-cli, project-structure, github-deep-review, demo,
  and the iOS set: swiftui-liquid-glass, swiftui-performance-audit, swiftui-view-refactor,
  swift-concurrency-expert, xcode-sync, native-app-performance, instruments-profiling.
- `rules/`: git, security, typescript, review-discipline, naming, design-system,
  ai-features.

The demo skill records with [Cap](https://cap.so) and drives the simulator with
[Peekaboo](https://github.com/steipete/Peekaboo). Install both if you want to use it.

## Credits

The swift, xcode, cli, project-structure, profiling and github-review skills are from
[steipete/agent-scripts](https://github.com/steipete/agent-scripts) (MIT, license in
`skills/`). webapp-testing and mcp-builder are from
[anthropics/skills](https://github.com/anthropics/skills) (Apache 2.0, a license in each
folder). deslop is by Carlton Aikins (MIT). Everything else comes from Chewbacca.

Built with Chewbacca
