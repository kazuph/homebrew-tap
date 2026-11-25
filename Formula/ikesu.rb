class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.190"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.190/ikesu-darwin-arm64"
      sha256 "d8f08ea2614daad8dbc22251d92c3af459223c61ead4181e4ebc5cb9584d2347"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.190/ikesu-darwin-amd64"
      sha256 "d92dccab777f6d2e32a50abe21de58f62f2d30eb1434e9b41d8d5be6c999583b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.190/ikesu-linux-arm64"
      sha256 "876d1f8ec36d434bb418ca3360857e3ba99c97e387eace545617dfda88618627"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.190/ikesu-linux-amd64"
      sha256 "844d86b1f086c411a2429ff3e80362bb05a2a030ad21b2f615e55ff4d0b91dbe"
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
