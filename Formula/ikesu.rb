class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.67"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.67/ikesu-darwin-arm64"
      sha256 "f0d6e2e95d7c6216f9a7ff6b1cd9b13b968e382caf3ad12571cd008da250348c"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.67/ikesu-darwin-amd64"
      sha256 "8e0e3cf4a4c6bfb816390335be8f5bae77e2111db975f867230f6f37ffe0fb5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.67/ikesu-linux-arm64"
      sha256 "04d232aeefefd937055bf914cea6e34157f78f01cceb3c5ac06e0833810999bd"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.67/ikesu-linux-amd64"
      sha256 "e1996629fb4623dbd0ea2c32ac823c2226b123832f35ac3a3e661c76263f944e"
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
