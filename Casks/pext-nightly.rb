cask "pext-nightly" do
  version :latest
  sha256 :no_check

  # api.github.com/repos/Pext/Pext/ was verified as official when first introduced to the cask
  url do
    require "open-uri"
    require "json"

    JSON.parse(open("https://api.github.com/repos/Pext/Pext/releases/tags/continuous").read)["assets"]
        .find { |r| r["browser_download_url"] =~ %r{/.*\.dmg} }["browser_download_url"]
  end
  name "Pext"
  homepage "https://pext.io/"

  conflicts_with cask: "pext"

  app "Pext.app"
end
