class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.18/ikesu-darwin-arm64"
      sha256 "cc5ebbe1c01f5bc6bea8f4443f163cf7df4bc1a26433814eb18807e2c5bd3c32"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.18/ikesu-darwin-amd64"
      sha256 "a459ea9c2f290863322a52e47d4e07b088518d4a8509424ce7e47b598e554130"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.18/ikesu-linux-arm64"
      sha256 "d02d0a2667ece65563f720913e9be96d6281d1730d997354775f6fb65cd61ee1"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.18/ikesu-linux-amd64"
      sha256 "48df3e46246b268cc028b1e1f18264d17c18f8b470dac7fda1f295c5533df202"
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
