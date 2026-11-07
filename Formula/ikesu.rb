class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.99"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.99/ikesu-darwin-arm64"
      sha256 "d8cdcabd692c384e46b790cb94f15e4a83e16f6c9d67759f6abae4e19e9726f7"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.99/ikesu-darwin-amd64"
      sha256 "5e5f94c6866ba6bd38cfe42b10560cc7bfed675180668897a557571626956918"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.99/ikesu-linux-arm64"
      sha256 "5a540f5a38e4216e2ccfd2611d3fca87efc999f2377ea492786290563b13ccdb"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.99/ikesu-linux-amd64"
      sha256 "9bdcd56f623e4dd4dcf05363d46164fa5d6c98c8c153c16354dca846520f87eb"
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
