cask "tla-plus-toolbox-nightly" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"
    base_url = "https://tla.msr-inria.inria.fr/tlatoolbox/ci/products/"
    file = URI(base_url).read[/href="([^"]+-macosx.cocoa.x86_64.zip)"/, 1]
    "#{base_url}#{file}"
  end
  url verified: "tla.msr-inria.inria.fr/"
  name "TLA+ Toolbox"
  desc "IDE for TLA+"
  homepage "https://lamport.azurewebsites.net/tla/toolbox.html"

  conflicts_with cask: "tla-plus-toolbox"

  app "TLA+ Toolbox.app"
end
