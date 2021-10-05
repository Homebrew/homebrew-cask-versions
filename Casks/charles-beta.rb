cask "charles-beta" do
  version "4.6.3b1"
  sha256 "1cf1edd0887bb59ffd5d08da9c0af7c25a2f5f08e06290acbd474dc757068f54"

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
