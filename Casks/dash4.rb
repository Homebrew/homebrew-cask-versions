cask "dash4" do
  version "4.6.7"
  sha256 "e2b5eb996645b25f12ccae15e24b1b0d8007bc5fed925e14ce7be45a2b693fb6"

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  name "Dash"
  desc "API documentation browser and code snippet manager"
  homepage "https://kapeli.com/dash"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true

  app "Dash.app"

  zap trash: [
    "~/Library/Application Support/Dash",
    "~/Library/Application Support/com.kapeli.dashdoc",
    "~/Library/Caches/com.kapeli.dashdoc",
    "~/Library/Cookies/com.kapeli.dashdoc.binarycookies",
    "~/Library/Logs/Dash",
    "~/Library/Preferences/com.kapeli.dashdoc.plist",
  ]
end
