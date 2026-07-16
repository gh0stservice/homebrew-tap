class Gh0stcli < Formula
  desc "Local gh0stcloud client and MCP adapter"
  homepage "https://gitlab.gh0stservice.com/gh0stlab/gh0stcli"
  version "0.1.2"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.2/gh0stcli_0.1.2_darwin_arm64.tar.gz"
      sha256 "3f77a41f5f5b5ecc688f54b2a9bfd51dbc9460afc96d79429485f64c6a6bfd45"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.2/gh0stcli_0.1.2_darwin_amd64.tar.gz"
      sha256 "64eefcb05e2995a426823901a7fc1a77f5ac539d7a118420f73d4ba910944351"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.2/gh0stcli_0.1.2_linux_arm64.tar.gz"
      sha256 "476d74200aac6e2c8b8e70d8f85103934a68a1634bfaa3dbfbae161e91134d1b"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.2/gh0stcli_0.1.2_linux_amd64.tar.gz"
      sha256 "851eff23817af5b204f146224017e1d2280e726a419f011edbf8d9b66991ccb5"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
