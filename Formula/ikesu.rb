class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.45/ikesu-darwin-arm64"
      sha256 "3c161c7dff885a13990e0c445d270a4ec6090b42c949f73d55424a2e18591b19"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.45/ikesu-darwin-amd64"
      sha256 "999fec358984047598525d24f6d39bc86a79da2783e1203efd5b5f7db11ec166"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.45/ikesu-linux-arm64"
      sha256 "6f5bd98063d6a255a9548f1ce0d026ae6c7baa0eea38140278320953b86a54ed"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.45/ikesu-linux-amd64"
      sha256 "f5e87d58627dac6dc1aa92471f582b1156617c61c4cbf83537222e41f9d90f72"
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
