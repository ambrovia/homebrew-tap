cask "hyperidle" do
  version "0.2.0"
  url "https://github.com/ambrovia/hyperidle-releases/releases/download/v#{version}/HyperIdle-#{version}-arm64.dmg"
  sha256 "2aed7d5408ef2a043272eda29241e16be80f9715538e6be3192415ac4afa91d3"

  name "HyperIdle"
  desc "Agentic operating system for AI product teams"
  homepage "https://hyperidle.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "HyperIdle.app"

  zap trash: [
    "~/Library/Application Support/HyperIdle",
    "~/Library/Logs/HyperIdle",
    "~/Library/Preferences/com.hyperidle.app.plist",
    "~/Library/Saved Application State/com.hyperidle.app.savedState",
  ]
end
