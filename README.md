# homebrew-cask-versions

Here you'll find alternate versions of Casks for the [homebrew-cask](https://github.com/caskroom/homebrew-cask)
project.

# Usage

After you install homebrew-cask, run the following command:

```sh
$ brew tap caskroom/versions
```

You can now install alternate versions of Casks.

```sh
$ brew cask install iterm2-beta
```

## Acceptable Casks

[Similarly to `homebrew-versions`](https://github.com/Homebrew/homebrew-versions#acceptable-formulae), `caskroom/versions` is not intended to be used for all and any old versions you personally require for xyz project; casks submitted here should be expected to be used by a reasonable number of people and supported by contributors long-term.

You may wish to consider hosting your own [tap](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/How-to-Create-and-Maintain-a-Tap.md) for casks you wish to personally support that do not meet the above standards.

For this repo, rules are (following our [nomenclature](https://github.com/caskroom/homebrew-cask/blob/master/doc/development/adding_a_cask.md#finding-a-home-for-your-cask)):

+ Include the latest minor version of legacy versions of commercial and freemium software.
+ Legacy versions of commercial and freemium software are restricted to a maximum of five casks.
+ Include beta, development, unstable, nightly, early access program, ….
+ Include language and regional versions other than US english of casks already in [the main repo](https://github.com/caskroom/homebrew-versions).
+ Include alternative editions of casks already in the main repo (developer editions, community editions, pro editions, …).
+ Refuse legacy versions of gratis or open-source software, unless there is a clear demonstrable need for them.
+ Legacy versions of gratis or open-source software that were accepted should be removed after one year.
+ Include casks that do not fit the rules, but need to exist somewhere since they are required by other casks.

## License
Code is under the [BSD 2 Clause (NetBSD) license](https://github.com/caskroom/homebrew-versions/blob/master/LICENSE)
