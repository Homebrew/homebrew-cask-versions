cask "ferdium-nightly" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "6.0.0-nightly.31"

  if Hardware::CPU.intel?
    sha256 "a56b30db3678b1d80ac88f25fec1b6c66c90753ab9fe191344ae68bd7b3fcc1a"
  else
    sha256 "8901c1f4df92c19c5c8db8f9d734d44796410cec336f7fd1306b85baac2565fa"
  end

  # github.com/ferdium/ferdium-app was verified as official when first introduced to the cask
  url "https://github.com/ferdium/ferdium-app/releases/download/v#{version}/Ferdium-#{version}#{arch}.dmg"

  name "Ferdium"
  desc "All your services in one place"
  homepage "https://ferdium.org/"

  # TODO: Need to turn this on after the in-app updater is verified to work
  # auto_updates true

  app "Ferdium.app"

  zap trash: [
    "~/Library/Application Support/Ferdium",
    "~/Library/Application Support/Caches/ferdium-updater",
    "~/Library/Saved Application State/org.ferdium.ferdium-app.savedState",
    "~/Library/Preferences/org.ferdium.ferdium-app.plist"
  ]
end
