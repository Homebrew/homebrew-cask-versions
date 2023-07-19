cask "keyclu" do
  version "0.5"
  sha256 "2c8af7320b0e2143669d54c8beb691c2a2ff003d86296a4c94a335484ccef7d0"

  url "https://github.com/Anze/KeyCluCask/releases/download/v#{version}/KeyClu.zip",
  verified: "github.com/Anze/KeyCluCask/"
  name "KeyClu"
  desc "Simple and handy overview of all shortcuts for any application you have"
  homepage "https://sergii.tatarenkov.name/keyclu/support/"

  depends_on macos: ">= :big_sur"

  app "KeyClu.app"

  zap trash: [
    "~/Library/Containers/com.0804Team.KeyClu",
  ]
end
