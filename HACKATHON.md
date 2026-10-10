# Hackathon playbook

How to use Claude Code for one night of building. Read it once before you start.

## Before you write code (10 minutes)

- Pick ONE thing for the demo. A keyboard that works end to end beats a keyboard plus
  an app that are both half done. Judges remember one moment.
- Write the demo script first: the three taps the judge will see, in order. Build only
  what those three taps touch.
- Start Claude Code in plan mode (shift+tab) and paste the demo script. Approve the plan
  only after it names the files it will touch.

## While building

- Give each tab one job. Run separate sessions in separate git worktrees
  (`git worktree add ../wt-feature -b feat/feature`) so they never write the same file.
- Tell the agent "verify it in the simulator before you say done". For iOS, it can build
  with `xcodebuild` and boot the simulator itself (`skills/xcode-sync`).
- When something breaks, paste the exact error. Don't paraphrase it.
- Commit every time something works: `git commit -- <files> -m "feat: ..."`. A working
  commit at 3am is your safety net when 4am breaks it.

## Last hour

- Stop adding features. Run `skills/reviewing-changes` on the diff and fix only what
  would break the demo.
- Record the demo with `skills/demo`: one flow, real data, no staged script.
- Rehearse the three taps on the exact device you'll demo on.

## Prompts that work

- "Read <file> and <file>, then tell me the plan before editing anything."
- "Which of these steps are independent? Run those in parallel."
- "Build it, run it in the simulator, screenshot it, and tell me what you saw."
- "Review your diff like a senior engineer who wants to reject it."
