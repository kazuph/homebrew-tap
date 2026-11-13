class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.143"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.143/ikesu-darwin-arm64"
      sha256 "1e1b617cb90c28180b03ed2e78351f85a3e3dcafbf506e8eee9df8a226aa8372"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.143/ikesu-darwin-amd64"
      sha256 "3845b91555818809b099351ac21e8fbeee62e8b22ff54656c003639b4e7dfcc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.143/ikesu-linux-arm64"
      sha256 "a4209516fab3841e481c84e23b47082e7f233388af42700b4d2686713f7fe92b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.143/ikesu-linux-amd64"
      sha256 "e4a1badeb88830a43dc75f3e20501121201b8cdadaa4482674e59c5508d129d1"
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
