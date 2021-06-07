cask "charles-beta" do
  version "4.6.2b7"
  sha256 "fd7e13e6d6c1bd87fad79a499a4f065a54c60e8c724b4c4e18a002cf6aff7f54"

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, "")}/charles-proxy-#{version}.dmg"
  name "Charles"
  desc "Web debugging Proxy application"
  homepage "https://www.charlesproxy.com/download/beta/"

  livecheck do
    url :homepage
    regex(/name=["']?version.*?value=["']?(\d+(?:\.\d+)*b\d+)/i)
  end

  app "Charles.app"

  uninstall quit: "com.xk72.Charles"

  zap trash: [
    "~/Library/Application Support/Charles",
    "~/Library/Preferences/com.xk72.Charles.plist",
    "~/Library/Preferences/com.xk72.charles.config",
    "~/Library/Saved Application State/com.xk72.Charles.savedState",
  ]
end
