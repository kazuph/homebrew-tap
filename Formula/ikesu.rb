class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.105"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.105/ikesu-darwin-arm64"
      sha256 "dd481d29f3420ebe373acac33ca2b212b13fda4ce54748d7feb3a91c89f72cc5"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.105/ikesu-darwin-amd64"
      sha256 "4b7e31ca33ba3b44f862306287d67b7bd4ba77b44503e07a06190d339fe4e38c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.105/ikesu-linux-arm64"
      sha256 "ea76cfc1a55ec35d51c6e68c1e111ff6c2694e280fd8f85cee296fde906aaf56"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.105/ikesu-linux-amd64"
      sha256 "afb3a5e40ddd5910ce5b8105075364fd99f2adf9b368bd13f222af2f7ceb0850"
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
