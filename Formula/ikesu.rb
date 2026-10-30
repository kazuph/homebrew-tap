class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.46/ikesu-darwin-arm64"
      sha256 "1ac853a5721ab029d4f41d61ea1f8bdec70170b6345fca93a44772727fa79482"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.46/ikesu-darwin-amd64"
      sha256 "4dcc67f75a94cdc27451f5ca8cb063b66ba0899e0be0ffe245ac7c8491109053"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.46/ikesu-linux-arm64"
      sha256 "abf2f92c04cbfcfb3f137031ff9f465ca4d892f9e164591fd1998139f4124c52"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.46/ikesu-linux-amd64"
      sha256 "20a5d0aaed6777f2c6a62d09281cd8ce2e5a6c205e3f9dd2f70ee8d5f6aa9916"
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
