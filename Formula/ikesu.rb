class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.168"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.168/ikesu-darwin-arm64"
      sha256 "ea61127a800111ae8979355940176a97da831a26facee2ef79658eb802b95c9b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.168/ikesu-darwin-amd64"
      sha256 "cd35e306ec0d848952d15822cc9ec44f828f6902544f9cee7f9a589e59820fe1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.168/ikesu-linux-arm64"
      sha256 "66cf77e89463d2c986b6d28a65a57ffbd59bb3a5db56f8491f693f469e031c04"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.168/ikesu-linux-amd64"
      sha256 "8b7008a02d7beab5e8725f1b56de5686a38a3924a4f0fcf7766784c86947117d"
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
