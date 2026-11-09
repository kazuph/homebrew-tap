class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.111"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.111/ikesu-darwin-arm64"
      sha256 "7b2505c592380b056eb78e76c5819f7afa045a8ad5143d24d5349f566112559f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.111/ikesu-darwin-amd64"
      sha256 "1b2326ed0400562bdaa441319b4612749f97069c11e092885ddf18bea9aa9ec5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.111/ikesu-linux-arm64"
      sha256 "d74a133d4a42d1b709f8e8d1220bc977ffe20cc84165e8bae5d3b689dcfeec07"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.111/ikesu-linux-amd64"
      sha256 "9466dbfc2ab37f16fd51c62fa4469045225b303fd892a307d462c298443b27b9"
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
