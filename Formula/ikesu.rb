class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.145"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.145/ikesu-darwin-arm64"
      sha256 "d6d9d037f0a7158c6c72fa33f809b8e26c39ec687605e9bd8ed0333036e136c8"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.145/ikesu-darwin-amd64"
      sha256 "6775516861582751abed15209c6b98d4438430412a5a4b9778fa4dfd31e6725a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.145/ikesu-linux-arm64"
      sha256 "ba9b9427a344513d1c30cb772aaba8f76157264aac71cd14aba6987717abbfb5"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.145/ikesu-linux-amd64"
      sha256 "7643ea7312d2b49f15eacca74bb541bb2c9658df1c3e2a64a2c1b1f64db4b17e"
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
