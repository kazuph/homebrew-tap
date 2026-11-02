class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.62"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.62/ikesu-darwin-arm64"
      sha256 "c22f0013506b3929f2e39d1cfcae37f1efc1632b5256b9332f32bfbcd4cba229"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.62/ikesu-darwin-amd64"
      sha256 "4ac2ea96836e23eeae2d8e7f1b8b975ca2441098727915ffc75a096c54624252"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.62/ikesu-linux-arm64"
      sha256 "165236494a645a97e1910f72a5465dd2dfed816c21f4496bc10fefe62f927844"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.62/ikesu-linux-amd64"
      sha256 "387d3ca7a5961a51ba3a5258dc69b9aa451841392fec942f5ba1bcec1c229e79"
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
