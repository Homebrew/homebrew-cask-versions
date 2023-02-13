cask "elephas-beta" do
  version "5.4.6"
  sha256 :no_check

  url "https://elephas.app/downloads/Elephas_beta.dmg"
  name "Elephas"
  desc "Personal AI Writing Assistant"
  homepage "https://elephas.app/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  conflicts_with cask: "elephas"
  depends_on macos: ">= :catalina"

  app "Elephas.app"

  zap trash: [
    "~/Library/Application Support/Elephas",
    "~/Library/Caches/com.kamban.elephas",
    "~/Library/HTTPStorages/com.kamban.elephas",
    "~/Library/Preferences/com.kamban.elephas.plist",
  ]
end
