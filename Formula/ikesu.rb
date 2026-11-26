class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.196"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.196/ikesu-darwin-arm64"
      sha256 "81ef8182c301edd276e17a21a742b44f72c86f9c9c876156c88fa4e7ba93e49b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.196/ikesu-darwin-amd64"
      sha256 "b4ebb6a4de7aafe7723a3aab73886ba758438f44649c11f3f0047b008f2a1283"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.196/ikesu-linux-arm64"
      sha256 "9357bcf586f2ea9c7b82d9e4e76f7128dba61188d3f20140b1ffec23842a8a43"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.196/ikesu-linux-amd64"
      sha256 "b6b51acfbfc2296ff235d05bfb32a203a776fcf1b09f3aadc09ccbdee67ec3f5"
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
