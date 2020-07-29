cask "forklift2" do
  version "2.6.6"
  sha256 "0fa2bb7927d07c0c13b964b517b500ea6a77a6a569becba3ea392b2f82c05fce"

  url "https://download.binarynights.com/ForkLift#{version}.zip"
  name "ForkLift"
  homepage "https://www.binarynights.com/forklift/"

  conflicts_with cask: "forklift"

  app "ForkLift.app"

  zap trash: [
    "~/Library/Preferences/com.binarynights.ForkLift#{version.major}.plist",
    "~/Library/Caches/com.binarynights.ForkLift#{version.major}",
  ]
end
