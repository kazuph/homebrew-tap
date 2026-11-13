class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.140"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.140/ikesu-darwin-arm64"
      sha256 "57085b229c435a911748d270817ef784700275929107270008f70039fa8e7327"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.140/ikesu-darwin-amd64"
      sha256 "3f270e2acf2366907163a211c8faaa55bbe9b77196f3b3d2a3f1c1cbcc36f090"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.140/ikesu-linux-arm64"
      sha256 "7011703b89f04dcf0169922f14471d20cb1de0d7f8accfc4b17c8cbdb48d96a8"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.140/ikesu-linux-amd64"
      sha256 "347ceb4d209458f223dbf04ae51a1b70762ea21f782e1da181dc3eb6532fa277"
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
