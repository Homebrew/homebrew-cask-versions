cask "charles-beta" do
  version "4.6.3b3"
  sha256 "b0bdc2c5b0d21e6667946fbae17fa0b9da586ceded7ddb2df590383f74bf69bd"

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
