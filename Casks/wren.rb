cask "wren" do
  version "1.2.1"
  sha256 "656a28c37e5064ecc4d58ff7cda78cf4ac10b80202fa8f82a1302ec8d66d4267"

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
