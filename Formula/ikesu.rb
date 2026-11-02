class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.64/ikesu-darwin-arm64"
      sha256 "4f91eabc0213733fd30d8574dc0f546619b13dc829176c7c342f53d55eb277da"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.64/ikesu-darwin-amd64"
      sha256 "4016edff62c3bd30890b823b8db5f93a297d8007107d815909a29116fa0f6f7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.64/ikesu-linux-arm64"
      sha256 "38238cf1e10e1eb9962c5113738b23cb092325d18fff6aa9bc0b7aa52829f039"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.64/ikesu-linux-amd64"
      sha256 "0e7842d801e1a481ac8391d65957ba8337d2af5460961d13a7cbd4d46101dbe2"
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
