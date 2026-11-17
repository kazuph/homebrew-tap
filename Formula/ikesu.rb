class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.162"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.162/ikesu-darwin-arm64"
      sha256 "2d7de3e2a5618f416de5c3bca96bf672696a520af04581bcbcefbd22b170fcfb"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.162/ikesu-darwin-amd64"
      sha256 "224283b1dd3691d5d00c65225daf7fd2422986a64eeb82184506b5338d9c4d93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.162/ikesu-linux-arm64"
      sha256 "4372cb73e6e92df4bf1b0563e399a19423e2f70433851e17483a9fdff848502a"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.162/ikesu-linux-amd64"
      sha256 "fdd68ef1517c45ee954ef8a16c53839fcdb707bb828395272b3e37f3023f8f36"
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
