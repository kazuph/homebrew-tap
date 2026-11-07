class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.90"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.90/ikesu-darwin-arm64"
      sha256 "8d1effab40b27e11a6774a4db07bc5edb9b69306f34dd49b61d11c8dd28905e3"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.90/ikesu-darwin-amd64"
      sha256 "a59fc5acc8a694127dab5182db71cab03286251c0fb848e205b1671cbeeb8cc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.90/ikesu-linux-arm64"
      sha256 "dfe13ca4fee204b90b096f077e7eda7bee166b8462076533d3f11da47345047f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.90/ikesu-linux-amd64"
      sha256 "3bdba24620eb6ad0d69dd946e3a3e93f7d6b60e807b683c55c42618ccd70e321"
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
