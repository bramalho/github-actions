workflow "Main Workflow" {
  on = "push"
  resolves = ["deploy"]
}

action "lint_md" {
  uses = "./actions/lint_md/"
  env = {
    MESSAGE = "Hello World"
  }
}

action "build" {
  uses = "./actions/build/"
  needs = ["lint_md"]
}

action "deploy" {
  uses = "./actions/deploy/"
  needs = ["build"]
}
