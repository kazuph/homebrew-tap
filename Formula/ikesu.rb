class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.127"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.127/ikesu-darwin-arm64"
      sha256 "42a71033213b0cae0b0c8b4c945360df4fe11f297aa47a5c22ac6bd9ec8ed073"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.127/ikesu-darwin-amd64"
      sha256 "e23fdc302a647c02fef501b75e48bfde1fe60922973b8b256de237cfdeb158eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.127/ikesu-linux-arm64"
      sha256 "73d180334d420e4f1191fb62b2cc05dbdf28b91398f211f518ad4f4f73d585a1"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.127/ikesu-linux-amd64"
      sha256 "25ad17f08dc88ea766716984c79b3386e1afcb01754be1715a8bb4ee532d128c"
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
