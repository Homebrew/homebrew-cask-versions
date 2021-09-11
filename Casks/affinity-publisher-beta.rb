cask "affinity-publisher-beta" do
  version "1.10.2.1156"
  sha256 "95eda2d699a736cba93b3a0488938a9d336e6920c5c9735703c432b4a3ebfca1"

  url "https://beta-downloads.serif.com/download/f6b89099-eace-44b3-8ce7-76ae7b0e036d/affinity-publisher-customer-beta-#{version}.zip"
  appcast "https://forum.affinity.serif.com/index.php?/forum/57-publisher-beta-on-mac/"
  name "Serif Affinity Publisher"
  homepage "https://affinity.serif.com/en-us/publisher/"

  app "Affinity Publisher Beta.app"
end
