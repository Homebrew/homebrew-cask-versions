# How to Contribute

All of the [instructions for contributing from the main repository](https://github.com/Homebrew/homebrew-cask/blob/master/CONTRIBUTING.md) apply, and won't be repeated here. You simply need to change references to `homebrew/homebrew-cask` (that repository) to `homebrew/homebrew-cask-versions` (this repository).

# Nightly Builds (Nightlies)

For Casks of [nightlies](https://en.wikipedia.org/wiki/Daily_build), `version`, `sha256`, and `url` change frequently, making the Cask constantly outdated. To alleviate having to regularly update them, the use of a [`url do` block](https://github.com/Homebrew/homebrew-cask/blob/master/doc/cask_language_reference/stanzas/url.md#using-a-block-to-defer-code-execution) in conjunction with `version :latest` and `sha256 :no_check` is encouraged, to ensure the latest version is always fetched.

See [this pull request for exist-db-nightly](https://github.com/Homebrew/homebrew-cask-versions/pull/3067) for an example of the procedure.

Example ([exist-db-nightly.rb](https://github.com/Homebrew/homebrew-cask-versions/blob/16b3bab91ab5b9a69ef7c456441b0e0fced56516/Casks/exist-db-nightly.rb#L6#L14)):

```ruby
  url do
    require 'open-uri'
    base_url = 'http://static.adamretter.org.uk/exist-nightly'
    builds_url = "#{base_url}/table.html"
    latest_build_filename = URI(builds_url).open do |io|
      io.read.scan(%r{<tr>.*?<td>(.*?)</td>.*?<a href="([^\"]+)">dmg}m).max[1]
    end
    "#{base_url}/#{latest_build_filename}"
  end
```
