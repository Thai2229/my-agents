# Rules for all agents

## Code style
- Make minimal, targeted changes. Preserve existing variable names.
- Combine validation conditions into a single `if` statement.
- Do not use ternary operators.
- Keep existing `Lib.debug` statements.

## Workflow
- Work on a new branch, never on main. Open a PR with a short summary.
- Run the project's tests and linter before saying a task is done.
- If a requirement is ambiguous, write the question in the PR and make the most reasonable assumption.

## Which agent to use
- Delegate to a subagent whenever a task matches its description. Don't do specialist work yourself if a matching agent exists.
- Features spanning UI + API + DB: fullstack.
- UI only: frontend-developer or nextjs-developer. API only: backend-developer. Schema and queries: postgres-pro. Type errors: typescript-pro.
- ML models, features, training, evaluation, LLM/RAG/prompts: ai-lead owns the plan and evals; ai-engineer, llm-architect or prompt-engineer help build.
- Python code (scripts, services, ML code outside ai-lead's plan): python-pro.
- New features and bug fixes: tdd-guide writes the failing test first.
- After any non-trivial change, before opening the PR: code-reviewer reviews the diff in fresh context. Fix confirmed findings; note any you disagree with in the PR.
- Changes touching auth, sessions, payments, user data/PII, file uploads, or user input reaching SQL/shell/HTTP: also run security-reviewer. Skip it otherwise.
- Every agent follows this file, including ones written by others.
- In every PR, list which subagents you used and for what.

## Safety
- Never commit secrets, API keys or passwords. Use environment variables and .env.example.
- Never send a message, email or request on anyone's behalf, or spend money, without a human go-ahead in the PR.