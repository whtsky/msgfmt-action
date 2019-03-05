workflow "Lint" {
  on = "push"
  resolves = ["Shell Lint", "Docker Lint"]
}

action "Shell Lint" {
  uses = "actions/bin/shellcheck@master"
  args = "entrypoint.sh"
}

action "Docker Lint" {
  uses = "docker://replicated/dockerfilelint"
  args = ["Dockerfile"]
}

workflow "Example" {
  on = "push"
  resolves = ["configless", "workdir", "args"]
}

action "configless" {
  uses = "whtsky/msgfmt-action@master"
}

action "workdir" {
  uses = "whtsky/msgfmt-action@master"
  env = {
    WORKDIR = "fixtures"
  }
}

action "args" {
  uses = "whtsky/msgfmt-action@master"
  args = "fixtures/zh-hant/aa.po -o fixtures/zh-hant/aa.mo"
}
