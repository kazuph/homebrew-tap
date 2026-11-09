class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.113"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.113/ikesu-darwin-arm64"
      sha256 "a2b8010c4693baae414a252ce2b1a701e88c2cfab9c7066943473c2163802c99"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.113/ikesu-darwin-amd64"
      sha256 "059056fc4a6057fa0c24de47971cf3755bc5aac84bfcce1181d270cddad4188c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.113/ikesu-linux-arm64"
      sha256 "164747c72f1796310c6a37cfa3a73684111f53931e94c0a4ce8e6806546eb695"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.113/ikesu-linux-amd64"
      sha256 "53f4914b4c89f40b127a8513303573e333c8cf58bccd6476922eba34ad2a634d"
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
