cask "affinity-publisher-beta" do
  version "1.9.1.979"
  sha256 "bf8d467dae8eb2633eee95f675b3dac6b4bae9daab7ccf682389ddbb2faf14fc"

  url "https://affinity-beta.s3.amazonaws.com/download/affinity-publisher-customer-beta-#{version}.zip",
      verified: "affinity-beta.s3.amazonaws.com/"
  appcast "https://forum.affinity.serif.com/index.php?/forum/57-publisher-beta-on-mac/"
  name "Serif Affinity Publisher"
  homepage "https://affinity.serif.com/en-us/publisher/"

  app "Affinity Publisher Beta.app"
end
