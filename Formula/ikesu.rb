class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.155"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.155/ikesu-darwin-arm64"
      sha256 "be825e2f5441eb5b87ff4f17ba0817b268525d3862b650ca9aeb2fabd1b1d4fb"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.155/ikesu-darwin-amd64"
      sha256 "413386757e0b33c4117ecfe1c8b308eecba8fa177346306fbe4b9f91f779a536"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.155/ikesu-linux-arm64"
      sha256 "58ea200b0715e7b829e0b97a6485685d2affe9fc15dd0d551b133e1e90fd7942"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.155/ikesu-linux-amd64"
      sha256 "e6132852de2a9ce668440f956e725c9f4179edfcfdb0987e0a73f170f13dae62"
    end
  end

  def install
    bin.install stable.url.split("/").last => "ikesu"
    chmod 0755, bin/"ikesu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ikesu --version")
  end
end
