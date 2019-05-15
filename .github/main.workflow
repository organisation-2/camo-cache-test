workflow "New workflow" {
  resolves = "new-action"
  on = "pull_request"
}

action "new-action" {
  uses = "actions/bin/filter@master"
  args = "merged true"
}
