cask "charles-beta" do
  version "4.5.6b1"
  sha256 "a2abf5bc9f69d4a78258953f1913f5c8b3afddfcfcb36a0995b1933747efbf12"

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, "")}/charles-proxy-#{version}.dmg"
  name "Charles"
  homepage "https://www.charlesproxy.com/download/beta/"

  app "Charles.app"

  uninstall quit: "com.xk72.Charles"

  zap trash: [
    "~/Library/Application Support/Charles",
    "~/Library/Preferences/com.xk72.Charles.plist",
    "~/Library/Preferences/com.xk72.charles.config",
    "~/Library/Saved Application State/com.xk72.Charles.savedState",
  ]
end
