cask "reflector2" do
  version "2.7.3"
  sha256 "fd9e4c1ee48d113c09c5e2736001a20e3eff6fdf655ec974b814a190c1c8b76e"

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/Reflector#{version.major}/Mac/Reflector#{version.major}.xml"
  name "Reflector"
  homepage "https://www.airsquirrels.com/reflector/"

  app "Reflector #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Logs/Reflector.log",
    "~/Library/Caches/com.squirrels.Reflector-#{version.major}",
    "~/Library/Preferences/com.squirrels.Reflector-#{version.major}.plist",
  ]
end
