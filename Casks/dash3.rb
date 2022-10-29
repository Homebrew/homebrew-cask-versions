cask "dash3" do
  version "3.4.4"
  sha256 "a7fd1a759965d26a0de6a43b32aec857e3222fd02d4cfc6d0ef66a92da63d526"

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  name "Dash"
  desc "API documentation browser and code snippet manager"
  homepage "https://kapeli.com/dash"

  auto_updates true

  app "Dash.app"

  zap trash: [
    "~/Library/Application Support/Dash",
    "~/Library/Application Support/com.kapeli.dashdoc",
    "~/Library/Preferences/com.kapeli.dash.plist",
    "~/Library/Preferences/com.kapeli.dashdoc.plist",
  ]

  caveats do
    discontinued
  end
end
