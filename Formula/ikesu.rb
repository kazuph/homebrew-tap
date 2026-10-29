class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.37/ikesu-darwin-arm64"
      sha256 "9e280080865337a34be43e9541f33d06c25b3715e83cdf1b16bdb41ac19b5d23"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.37/ikesu-darwin-amd64"
      sha256 "2f44bc9589774d51d57f1dacd01b357e6f02591bf97d5d3db3ae0d99d2b0d5aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.37/ikesu-linux-arm64"
      sha256 "be1505fcfd485e2a42fa5edc0d04802a464286fad3e4e9819a96bf331c9690f8"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.37/ikesu-linux-amd64"
      sha256 "8fff149441201d9cb095073f987931acd8010e12ba1d0a5e161b8bafaa584592"
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
