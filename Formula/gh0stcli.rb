class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.1.14"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.14/gh0stcli_0.1.14_darwin_arm64.tar.gz"
      sha256 "8fe8201e159f915e7a39838bec0a0e470c88671ecfb72aeb8d0dbc3235403223"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.14/gh0stcli_0.1.14_darwin_amd64.tar.gz"
      sha256 "8bdd68e83173745394bc161ad1203527eb700f0d22ac686eb2becf4f2ee53da3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.14/gh0stcli_0.1.14_linux_arm64.tar.gz"
      sha256 "349fce027b63c25db82b1c8ab94fb8b94b69ccbba497ec5ed5fa1af0d48215a0"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.14/gh0stcli_0.1.14_linux_amd64.tar.gz"
      sha256 "1bed4a7c0ac93a298d07594a6b05f4d0acb5d5554da34311b2a7770b0a58011f"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
