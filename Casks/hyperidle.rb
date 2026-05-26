cask "hyperidle" do
  version "0.1.1"
  url "https://github.com/ambrovia/hyperidle-releases/releases/download/v#{version}/HyperIdle-#{version}-arm64.dmg"
  sha256 "cd85fc8b952d341ec8a3642cf78e8672809de806b09834981bdae259652e43ef"

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
