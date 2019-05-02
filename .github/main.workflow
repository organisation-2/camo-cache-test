workflow "New workflow" {
  on = "push"
  resolves = [
    "deploy",
    "stage",
  ]
}

action "Filters for GitHub Actions" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Filters for GitHub Actions-1" {
  uses = "actions/bin/filter@master"
  args = "branch develop"
}

action "deploy" {
  uses = "deploy"
  needs = ["Filters for GitHub Actions"]
}

action "stage" {
  uses = "stage"
  needs = ["Filters for GitHub Actions-1"]
}
