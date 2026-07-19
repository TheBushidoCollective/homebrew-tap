# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.19.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.19.1/han-darwin-arm64"
      sha256 "32e282f3ba8c995f4e7810898460a6a51238be42fc2e0ae8258342b1c4d43ce2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.19.1/han-darwin-x64"
      sha256 "803887107d8ac0427e70c83393a3a5d121c6ad92487b565d34d80eb6c9458bd9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.19.1/han-linux-arm64"
      sha256 "d71beaeb905bd627cc2c678edfee2acc7a346920ba560fd60156566bc001714e"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.19.1/han-linux-x64"
      sha256 "0b0b98ec06a4a704eba79b314d1d4a841036f614896fab856082f439bf3960b7"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
