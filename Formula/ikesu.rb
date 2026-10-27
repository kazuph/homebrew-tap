class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.11/ikesu-darwin-arm64"
      sha256 "51aa0c816e86e94a124bc6ca20d40355fed33958d1125cb3bf02be4b1f0837d0"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.11/ikesu-darwin-amd64"
      sha256 "2c4dd9fc82cf94403415463bc5cafbe20a1456f273ecbcd44414cccf809a7c35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.11/ikesu-linux-arm64"
      sha256 "f847d410c3644a3f7c18a13e2181a1f62930bc4ee7c895a896070078036f4b8c"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.11/ikesu-linux-amd64"
      sha256 "dc622c3969d5b8280c8226e375f267edcb958cb5eaadf05fd19a25bf137d0fec"
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
