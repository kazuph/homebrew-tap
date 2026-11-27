class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.206"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.206/ikesu-darwin-arm64"
      sha256 "39967721787718411e35919fc1d7c073211ba97b8ad02a416152730a73756cec"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.206/ikesu-darwin-amd64"
      sha256 "90a15212d61fcb02e9d6e8a5f3398912141902e80943e6a47efecce06e6ac255"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.206/ikesu-linux-arm64"
      sha256 "5c50ab0bdfb6727bbeaa7a78ba05c851902b10ac84a3d41c0b7cba3717a2669d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.206/ikesu-linux-amd64"
      sha256 "5b1e335e52eae85aa94f91eb3b6f9597d4ff13da42ea241e9165060a5eafd1a6"
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
