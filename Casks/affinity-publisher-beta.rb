cask "affinity-publisher-beta" do
  version "1.9.2.1024"
  sha256 "34d39facae3d67311e0d8630134747164ff01d68f9bba6e296b02184b20a78ee"

  url "https://affinity-beta.s3.amazonaws.com/download/affinity-publisher-customer-beta-#{version}.zip",
      verified: "affinity-beta.s3.amazonaws.com/"
  appcast "https://forum.affinity.serif.com/index.php?/forum/57-publisher-beta-on-mac/"
  name "Serif Affinity Publisher"
  homepage "https://affinity.serif.com/en-us/publisher/"

  app "Affinity Publisher Beta.app"
end
