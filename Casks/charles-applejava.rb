cask "charles-applejava" do
  version "3.12.3"
  sha256 "c6e53152ae37def095c9319e1762554df9285ae387a943068cc7fb3133056646"

  url "https://www.charlesproxy.com/assets/release/#{version.gsub(/b\d$/, "")}/charles-proxy-#{version}-applejava.dmg"
  name "Charles"
  desc "Web debugging Proxy application"
  homepage "https://www.charlesproxy.com/previous-release/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Charles.app"

  zap trash: [
    "~/Library/Application Support/Charles",
    "~/Library/Preferences/com.xk72.charles.config",
  ]
end
