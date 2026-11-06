class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.82"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.82/ikesu-darwin-arm64"
      sha256 "93ff718de35c6712510e7c734467e6194a9f6a90062f1394befdb63f7576b082"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.82/ikesu-darwin-amd64"
      sha256 "2f3b77c0bb91daf8626f51c8dbae6306f13d5ad17e0f855b45d7d67107a4f9d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.82/ikesu-linux-arm64"
      sha256 "24e89d9b3727c96ca9cddb644a46630a583734d1b0405e9ea8dff285d8b3f1be"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.82/ikesu-linux-amd64"
      sha256 "2a732e5611edb620770bf2b2f74af7d11149e3fb353c33bc2f5fb9078a2d5c1d"
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
