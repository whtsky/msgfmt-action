# msgfmt-action

A GitHub action for Generate binary message catalog(`.mo`) from textual translation description(`.po`).

## Usage

Feel free to take a look at [Example Workflow](.github/main.workflow)

By default it generates `.mo` files for all `.po` in your project root:

```
action "Run msgfmt" {
  uses = "whtsky/msgfmt-action@master"
}
```

You can specify working directory by `WORKDIR` env:

```
action "Run msgfmt" {
  uses = "whtsky/msgfmt-action@master"
  env = {
    WORKDIR = "i18n"
  }
}
```

Or you can pass args to run msgfmt as you wish.

```
action "Run msgfmt" {
  uses = "whtsky/msgfmt-action@master"
  args = "zh-hans/LC_MESSAGES/lang.po -o zh-hans/LC_MESSAGES/lang.mo"
}
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
