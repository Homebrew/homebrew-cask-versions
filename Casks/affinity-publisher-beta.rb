cask "affinity-publisher-beta" do
  version "1.8.4.663"
  sha256 "c51e433a46054023e1b0c55b95b767e8c49a28b22af5ce5008ed33007d72f461"

  url "https://affinity-beta.s3.amazonaws.com/download/affinity-publisher-customer-beta-#{version}.zip",
      verified: "affinity-beta.s3.amazonaws.com/"
  appcast "https://forum.affinity.serif.com/index.php?/forum/57-publisher-beta-on-mac/"
  name "Serif Affinity Publisher"
  homepage "https://affinity.serif.com/en-us/publisher/"

  app "Affinity Publisher Beta.app"
end
