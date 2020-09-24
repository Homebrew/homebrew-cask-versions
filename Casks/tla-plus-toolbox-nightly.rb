cask "tla-plus-toolbox-nightly" do
  version :latest
  sha256 :no_check

  # tla.msr-inria.inria.fr/ was verified as official when first introduced to the cask
  url do
    require "open-uri"
    base_url = "http://tla.msr-inria.inria.fr/tlatoolbox/ci/products/"
    file = URI(base_url).open.read.scan(/href="([^"]+-macosx.cocoa.x86_64.zip)"/).flatten.first
    "#{base_url}#{file}"
  end
  name "TLA+ Toolbox"
  desc "IDE for TLA+"
  homepage "https://lamport.azurewebsites.net/tla/toolbox.html"

  conflicts_with cask: "tla-plus-toolbox"

  app "TLA+ Toolbox.app"
end
