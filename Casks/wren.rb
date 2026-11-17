cask "wren" do
  version "1.2.2"
  sha256 "81b40e0299f97a495de4455db537de495e41019196ce694faf931a9f819603a1"

  url "https://saymurmur.app/wren/releases/Wren-#{version}.dmg"
  name "Wren"
  desc "Markdown reader for the files AI agents write"
  homepage "https://saymurmur.app/wren/"

  livecheck do
    url "https://saymurmur.app/wren/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Wren.app"

  zap trash: [
    "~/Library/Application Support/Wren",
    "~/Library/Caches/md.wren.mac",
    "~/Library/HTTPStorages/md.wren.mac",
    "~/Library/Preferences/md.wren.mac.plist",
    "~/Library/Saved Application State/md.wren.mac.savedState",
    "~/Library/WebKit/md.wren.mac",
  ]
end
