class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.109"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.109/ikesu-darwin-arm64"
      sha256 "5a3038611a92148ea8942a307a9ecd72fd64db98cf406c7b6a3daef24aa9c76b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.109/ikesu-darwin-amd64"
      sha256 "0e3365b11617dfdc267103c7371c9d963c33cc806859d7593e0331c477bd0c90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.109/ikesu-linux-arm64"
      sha256 "8937166d67fc0e79c69ec6d70cfe5cf05b4be89425de20285561951ad2c839c8"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.109/ikesu-linux-amd64"
      sha256 "c38164b2625c72a28f5b5f9420f7e9e4bb84b01b121e0ddf6964e8a8a8f2d849"
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
