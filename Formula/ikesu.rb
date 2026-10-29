class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.30/ikesu-darwin-arm64"
      sha256 "bde588f37dd370c3aa881afdf2233fbc927849dbfda47c4c86cbcff382c45e0d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.30/ikesu-darwin-amd64"
      sha256 "1db8a49a160e12c33e003072d9429fb0e84a09bf3cc2af61e952e4c2eb79880c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.30/ikesu-linux-arm64"
      sha256 "d8afe1a74e8d51f4c224515c05dfecd1c6ecd8e190326cace95583764368a040"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.30/ikesu-linux-amd64"
      sha256 "b24462a93025d14d809922ab53e75fc9138db10c4f07de9c50c21841dbcaf1bc"
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
