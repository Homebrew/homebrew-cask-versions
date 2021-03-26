# How to Contribute

[Instructions from the main repository](https://github.com/Homebrew/homebrew-cask/blob/master/CONTRIBUTING.md) apply. Exceptions are documented on the [README](README.md) and this document.

## Naming Versions Casks

All Cask names and tokens should be of the form of:

`<token><numbered version>` or `<token>-<pre-release type>`

### Versions Token Examples

Cask Token          | `<token>-<numbered version>` | Filename
--------------------|------------------------------|------------------------
`alfred 2`          | `alfred2`                    | `alfred2.rb`
`dash`              | `dash3`                      | `dash3.rb`
`lingon-x`          | `lingon-x5`                  | `lingon-x5.rb`
`transmit`          | `transmit4`                  | `transmit4.rb`

Cask Token          | `<token>-<pre-release type>` | Filename
--------------------|------------------------------|------------------------
`docker`            | `docker-edge`                | `docker-edge.rb`
`firefox`           | `firefox-beta`               | `firefox-beta.rb`
`sublime-text`      | `sublime-text-dev`           | `sublime-text-dev.rb`
`vlc`               | `vlc-nightly`                | `vlc-nightly.rb`

# Nightly Builds (Nightlies)

For Casks of [nightlies](https://en.wikipedia.org/wiki/Daily_build), `version`, `sha256`, and `url` change frequently, making the Cask constantly outdated. To alleviate having to regularly update them, the use of a [`url do` block](https://github.com/Homebrew/homebrew-cask/blob/master/doc/cask_language_reference/stanzas/url.md#using-a-block-to-defer-code-execution) in conjunction with `version :latest` and `sha256 :no_check` is encouraged, to ensure the latest version is always fetched.

See [this pull request for exist-db-nightly](https://github.com/Homebrew/homebrew-cask-versions/pull/3067) for an example of the procedure.

Example ([transmission-nightly.rb](https://github.com/Homebrew/homebrew-cask-versions/blob/9d85295723eaccb8cb0ead855c6e80d142f7ad32/Casks/transmission-nightly.rb#L5#L11)):

```ruby
  url do
    base_url = "https://build.transmissionbt.com/job/trunk-mac/lastSuccessfulBuild/artifact/release/"
    result = curl_output("--fail", "--silent", base_url)
    result.assert_success!
    file = result.stdout[/href="([^"]+.dmg)"/, 1]
    "#{base_url}#{file}"
  end
```
