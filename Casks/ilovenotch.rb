cask "ilovenotch" do
  version "1.1.0"
  sha256 "0d56239d95d5ae26f616cd15ad02d77c9ded5941db9d60321326b5d116602417"

  url "https://github.com/niyamvora/ILoveNotch/releases/download/v#{version}/ILoveNotch-#{version}.dmg"
  name "ILoveNotch"
  desc "MacBook notch tray for media, files, tasks, timers and AI usage"
  homepage "https://github.com/niyamvora/ILoveNotch"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "ILoveNotch.app"

  zap trash: [
    "~/Library/Application Support/OpenNotch",
    "~/Library/Caches/cafe.opennotch.app",
    "~/Library/HTTPStorages/cafe.opennotch.app",
    "~/Library/HTTPStorages/cafe.opennotch.app.binarycookies",
    "~/Library/Preferences/cafe.opennotch.app.plist",
  ]
end
