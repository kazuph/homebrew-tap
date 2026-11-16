class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.154"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.154/ikesu-darwin-arm64"
      sha256 "f596569ec38eac3a6a67c8ac8026549ecca9024f15caf89a0604fafd15b8f04b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.154/ikesu-darwin-amd64"
      sha256 "7bafc371c6bf33f3fb296d4928e17fd207d74d88fa2b8d95ea158332d41c003f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.154/ikesu-linux-arm64"
      sha256 "76c93e33b774728856bbc8ab08083b7759d4272f91fe7c8824acc214d559328e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.154/ikesu-linux-amd64"
      sha256 "d0c4f0c45f3c661dd5d9005e2a7e6e968ecc119fc9f70f39971b26716f26e2ce"
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
