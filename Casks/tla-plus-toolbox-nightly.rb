cask "tla-plus-toolbox-nightly" do
  version :latest
  sha256 :no_check

  url "https://tla.msr-inria.inria.fr/tlatoolbox/ci/products/" do |page|
    file_path = page[/href="([^"]+-macosx.cocoa.x86_64.zip)"/, 1]
    URI.join(page.url, file_path)
  end
  name "TLA+ Toolbox"
  desc "IDE for TLA+"
  homepage "https://lamport.azurewebsites.net/tla/toolbox.html"

  conflicts_with cask: "tla-plus-toolbox"

  app "TLA+ Toolbox.app"
end
