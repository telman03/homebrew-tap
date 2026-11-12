cask "wren" do
  version "1.2.0"
  sha256 "311a5f1864879084b3c526ae0be1f5c12ec9d83044bf8abd60ddaa5c65d5d2f9"

  url "https://saymurmur.app/wren/releases/Wren-#{version}.dmg"
  name "Wren"
  desc "Markdown reader for the files AI agents write"
  homepage "https://saymurmur.app/wren/"

  livecheck do
    url "https://saymurmur.app/wren/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe
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
