cask "charles-beta" do
  version "4.6.2b4"
  sha256 "0b8b1f491e04aa702105a93a4eae08f1ddde01023de153fd64155e100bda795a"

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
