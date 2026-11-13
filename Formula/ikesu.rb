class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.142"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.142/ikesu-darwin-arm64"
      sha256 "c66095938df988a721cfa0f6a4be00ab0250e6d06fd8a02a9bc3d13cb7c700e8"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.142/ikesu-darwin-amd64"
      sha256 "072f8d915b6d2a8ead56cec2f1fc9427abf831e324ee0c372f7909a55d9485f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.142/ikesu-linux-arm64"
      sha256 "bccef1b08136f936b852b5fb5893b4d6f2ad03ccb92679a64434b42c25b1ee24"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.142/ikesu-linux-amd64"
      sha256 "565f612f289fc66961d0018a1cc4e3ce9caf83e5093e6cbdb0dd7096d71cf1c5"
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
