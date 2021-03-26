cask "tla-plus-toolbox-nightly" do
  version :latest
  sha256 :no_check

  url do
    base_url = "https://tla.msr-inria.inria.fr/tlatoolbox/ci/products/"
    result = curl_output("--fail", "--silent", base_url)
    result.assert_success!
    file = result.stdout[/href="([^"]+-macosx.cocoa.x86_64.zip)"/, 1]
    "#{base_url}#{file}"
  end
  name "TLA+ Toolbox"
  desc "IDE for TLA+"
  homepage "https://lamport.azurewebsites.net/tla/toolbox.html"

  conflicts_with cask: "tla-plus-toolbox"

  app "TLA+ Toolbox.app"
end
