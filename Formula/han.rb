# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.48.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.4/han-darwin-arm64"
      sha256 "7c59ee7b2c5f683126857c18957af17311d4a47863d7fdb7b64114427863478a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.4/han-darwin-x64"
      sha256 "4c6357288dc34bc5ff76ff09b9c94ad021ae966ff464869907da55a0da515be7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.4/han-linux-arm64"
      sha256 "ba5008ea7190aa2158257e53da8f7b8beffd37db5ab7e376630c050b2c7dde25"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.4/han-linux-x64"
      sha256 "1c582288815ee7d68885c74592793da382dd82404283409dd9bf0d50730775cd"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
