# homebrew-cask-versions

Here you'll find alternate versions of Casks for the [Homebrew Cask](https://github.com/Homebrew/homebrew-cask)
project.

# Usage

After you install Homebrew, run the following command:

```sh
brew tap Homebrew/homebrew-cask-versions
```

You can now install alternate versions of Casks.

```sh
brew install iterm2-beta
```

## Submitting a Cask to this repository

See [CONTRIBUTING.md](CONTRIBUTING.md).

## Acceptable Casks

`Homebrew/homebrew-cask-versions` is not intended to be used for all and any old versions you personally require. Casks submitted here should be expected to be used by a reasonable number of people and supported by contributors long-term.

You may wish to consider hosting your own [tap](https://github.com/Homebrew/brew/blob/master/docs/How-to-Create-and-Maintain-a-Tap.md) for casks you wish to personally support that do not meet the above standards.

For this repo, rules are (following our [nomenclature](https://docs.brew.sh/Acceptable-Casks#finding-a-home-for-your-cask)):

+ Include the latest minor version of legacy versions of commercial and freemium software.
+ Legacy versions of commercial and freemium software are restricted to a maximum of five casks.
+ Include beta, development, unstable, nightly, early access program, ….
+ Refuse legacy versions of gratis or open-source software, unless there is a clear demonstrable need for them.
+ Legacy versions of gratis or open-source software that were accepted should be removed after one year.
+ Include casks that do not fit the rules, but need to exist somewhere since they are required by other casks.

## License
Code is under the [BSD 2 Clause (NetBSD) license](https://github.com/Homebrew/homebrew-cask-versions/blob/master/LICENSE)
