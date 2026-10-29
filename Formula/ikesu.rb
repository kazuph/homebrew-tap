class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.28/ikesu-darwin-arm64"
      sha256 "3eb259ef3172107e6cfdd268fe374142bcdf0319f7c530233868a47c48464242"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.28/ikesu-darwin-amd64"
      sha256 "2c0aabdef1f137ab0f82e3a4145d1913f9216ae73a6bf4fe08a57599ed9a0a85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.28/ikesu-linux-arm64"
      sha256 "8992e1785bf4c2bb77f73810560badf38ac87e72bbadbfdf405e886d52f04aed"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.28/ikesu-linux-amd64"
      sha256 "47c7407114d8ebd3ad9563968addec1989a4086c1f715cbb053d16d9e1a4b8ff"
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
