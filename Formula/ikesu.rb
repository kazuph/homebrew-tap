class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.148"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.148/ikesu-darwin-arm64"
      sha256 "015c139408c69c15f1c79ea7246936087826aa77263ad9259ca35fed165e195a"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.148/ikesu-darwin-amd64"
      sha256 "b221e924dafbaf3ffab4a8ed04bab5bd018d50bfe96069d4d1a1d644fe940cc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.148/ikesu-linux-arm64"
      sha256 "c6abd5c8fb972550fe9b9bc66ca92aca30f7998f8d1d4b48bd093a7fc43d1c8d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.148/ikesu-linux-amd64"
      sha256 "de72d260613f1a086dc08f2df43ce534325d2622e6c3d35feac221f82a2d6cc5"
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
