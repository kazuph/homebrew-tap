class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.181"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.181/ikesu-darwin-arm64"
      sha256 "9d1fc151cee9bd831e75f5bbdc17cbc1da413d48079e16843298d54172b4f83c"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.181/ikesu-darwin-amd64"
      sha256 "1d452bd7dd8f4ca5d09329c27cd73b0eb6c53f8ce692bee6e1f95976e686a16b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.181/ikesu-linux-arm64"
      sha256 "5b0887116163cba2a563b7fc9059ae3cd5d1d52e19ba542abd4199059a563a7b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.181/ikesu-linux-amd64"
      sha256 "1569d47491abfa19b453050cff407d637fa63f07060e2618d90196ffbe02ca90"
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
