class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.20/ikesu-darwin-arm64"
      sha256 "fcb36c4949e5425436cef5089889ee9fafe99d29a9458a9ef93add824657bbb8"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.20/ikesu-darwin-amd64"
      sha256 "3341f9928237e39369146e2a756f0f47467e978925dfc14313379ee36b1a7405"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.20/ikesu-linux-arm64"
      sha256 "1851a9ba10c1a82d26e800891e9ef400f9d7ee8cb64ee74bcc62532dc880996a"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.20/ikesu-linux-amd64"
      sha256 "08e25b5ed002c9675d682e6fc054eb80221f9f065c12d96bbfafa21e495d6d11"
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
