class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.172"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.172/ikesu-darwin-arm64"
      sha256 "16ea0aa65d1c4ff91836150a6886f88be3f6054dea8ae90a072ee9e2af03af5a"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.172/ikesu-darwin-amd64"
      sha256 "894d2188887abac552a6092dbe62e310c849cebafeacfa7268cfda93c22e2aa2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.172/ikesu-linux-arm64"
      sha256 "bb4d66d619447d0f4547761d39f923bb5b65c263dcdaf20e8f9bb454307ac637"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.172/ikesu-linux-amd64"
      sha256 "251e8d725dcdd8d19edf97806354641ade51e6f22770543a1aec666694702f04"
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
