class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.141"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.141/ikesu-darwin-arm64"
      sha256 "d6f5f6efcd559e84c47f91d712648a79d3f59be7f3a05f20b4440ddf4643c67e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.141/ikesu-darwin-amd64"
      sha256 "33fe477177fde9751b7e4c15bff9390da3a10988014ada3c0e43de2f87189949"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.141/ikesu-linux-arm64"
      sha256 "df4c77776ac0881c25493b7f6981fa857c6bd166c7d5db110a79ce4519c87240"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.141/ikesu-linux-amd64"
      sha256 "a2798a17b40196ac3bbdced94bef1eae0238af33e54459dbe769897dfc1a0556"
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
