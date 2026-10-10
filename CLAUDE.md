# Visa Internship: how to work

These are the standards for coding with an agent. They come out of Chewbacca and
every rule here was paid for by a real failure.

## The loop

1. **Read before you write.** Run `git status` and `git diff`, and read the files you are
   about to change. Never edit code you haven't opened.
2. **Plan the graph, not the list.** Before any big task, ask which steps actually
   depend on each other. Steps that don't read each other's output run in parallel:
   independent tool calls in one message, and subagents only for large, independent
   tracks. See `skills/graph-engineering/references/task-graphs.md`.
3. **Build the smallest thing that runs**, run it, then grow it.
4. **Verify against ground truth.** Look at the running app, the test exit code or the
   rendered screen. Never take your own reasoning as proof. "It compiles" doesn't mean
   it works, and neither does "the script printed done".
5. **Review your own diff** with `skills/reviewing-changes`, then `skills/deslop`, before
   anyone else sees it.
6. **Ship it.** Commit by path (`git commit -- <files>`), push, say what you checked and
   what you didn't.

## Hard rules

- **Do it yourself.** You have a shell, so run the build, the install and the test.
  Never end with a command for the human to run, unless it truly needs their hands
  (a 2FA code, a physical click, a decision only they can make).
- **Debug in order:** read the exact error, go to the file and line, check your
  assumptions, read the diff, then search. Never change three things at once.
  See `skills/debugging`.
- **Report honestly.** If a test fails, show it. If you skipped something, say so. If it's
  verified, say that plainly.
- **No secrets in code or logs.** Env vars only, with a `.env.example`.
- **No em dashes, no AI-slop copy.** Use colons, periods and commas. Any copy should name
  what the thing does, for whom, with what result.
- **Stage by filename.** Never `git add -A`.

## Where to look

| Job | Read |
| --- | --- |
| Something broke | `skills/debugging`, `skills/recovering-from-errors` |
| Before a PR or a demo | `skills/reviewing-changes`, `skills/deslop`, `skills/shipping` |
| Many agents or a big task | `skills/graph-engineering` |
| iOS / iMessage / SwiftUI | `skills/swiftui-*`, `skills/swift-concurrency-expert`, `skills/xcode-sync`, `skills/native-app-performance`, `skills/instruments-profiling` |
| Web app testing | `skills/webapp-testing` |
| Rebuilding a site you admire | `skills/clone-site` |
| Making a CLI or an MCP server | `skills/create-cli`, `skills/mcp-builder` |
| Recording the demo video | `skills/demo` |
| Stack conventions (API, DB, components, perf, a11y) | `skills/stack-rules` |
| Code standards | `rules/*.md` |
