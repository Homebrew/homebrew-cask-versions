cask "xmind-beta" do
  version "23.05.3170,202305291822"
  sha256 "290849b2385281ba9905775bc85353309a4625256e7080546a1f8f7e7af347de"

  url "https://dl3.xmind.net/Xmind-for-macOS-#{version.csv.first}-#{version.csv.second}.dmg"
  name "XMind"
  desc "Mind mapping and brainstorming tool"
  homepage "https://www.xmind.net/"

  livecheck do
    url "https://xmind.app/download/"
    regex(/xmind\.app.*?xmind[._-]for[._-]macOS[._-](\d+(?:\.\d+)+)-(\d*)\.dmg/i)
    strategy :page_match do |page, regex|
      # Find the script containing the beta versions
      js = page.scan(%r{assets.xmind.net/www/javascripts/download\.(\w+)\.js}i).flatten.first
      next if js.blank?

      # Check the js for version text
      v_page = Homebrew::Livecheck::Strategy.page_content(
        "https://assets.xmind.net/www/javascripts/download.#{js}.js",
      )
      v_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  conflicts_with cask: [
    "homebrew/cask/xmind",
    "xmind8",
  ]

  app "Xmind.app"

  zap trash: [
    "~/Library/Saved Application State/org.xmind.cathy.application.savedState",
    "~/Library/XMind",
  ]
end
