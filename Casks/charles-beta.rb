cask "charles-beta" do
  version "4.6.2b5"
  sha256 "0aeb6ef9d8aeaac6856a4704592097b6b0931adfde46c41d9657d6e373047138"

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
