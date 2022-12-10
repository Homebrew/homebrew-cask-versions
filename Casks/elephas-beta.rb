cask "elephas-beta" do
  version :latest
  sha256 :no_check

  version_suffix = "beta"

  url "https://elephas.app/downloads/Elephas_#{version_suffix}.dmg"
  name "elephas"
  desc "Personal AI Writing Assistant"
  homepage "https://elephas.app/"

  conflicts_with cask: "elephas"

  app "Elephas.app"

  zap trash: [
    "~/Library/Application Support/Elephas",
    "~/Library/Caches/com.kamban.elephas",
    "~/Library/HTTPStorages/com.kamban.elephas",
    "~/Library/Preferences/com.kamban.elephas.plist",
  ]
end
