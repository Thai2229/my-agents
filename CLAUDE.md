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
- New feature or app across UI + API + DB: fullstack.
- UI only: frontend-developer or nextjs-developer. API only: backend-developer. Schema and queries: postgres-pro. Type errors: typescript-pro.
- LLM, RAG, prompts, ML: ai-lead owns the plan and evals; ai-engineer, llm-architect or prompt-engineer help build.
- Every agent follows this file, including ones written by others.

## Safety
- Never commit secrets, API keys or passwords. Use environment variables and .env.example.
- Never send a message, email or request on anyone's behalf, or spend money, without a human go-ahead in the PR.
