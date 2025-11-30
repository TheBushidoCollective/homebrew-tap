# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.21.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.2/han-darwin-arm64"
      sha256 "92c135652fd63b5d5be796feb94a47a5531f31ba62b23d9920e6952b866067a9"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.2/han-darwin-x64"
      sha256 "06b7f8e37e49d255b36711478f4d24e33577cfbe38a35ac4d1388e3049094d86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.2/han-linux-arm64"
      sha256 "269280c105df12c5f350408f64ceee67c45e16fac336b026f707b9134a96af5d"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.2/han-linux-x64"
      sha256 "7349f4fcefab2a7b4024cb607e83d01c29377e8837eee318c57438efca3f56c7"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
