cask "soulver2" do
  version "2.9.0,6104"
  sha256 :no_check

  url "https://d1k3ac1niusr4e.cloudfront.net/soulver#{version.major}.zip",
      verified: "d1k3ac1niusr4e.cloudfront.net/"
  name "Soulver"
  homepage "https://soulver.app/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Soulver #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Soulver",
    "~/Library/Autosave Information/Unsaved Soulver Document*",
    "~/Library/Preferences/com.acqualia.soulver.plist",
  ]
end
