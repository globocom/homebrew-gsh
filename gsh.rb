class Gsh < Formula
    desc "A command line tool to use GSH"
    homepage "https://github.com/globocom/gsh"
    url "https://github.com/globocom/gsh/releases/download/v0.1/gsh-cli-darwin-amd64"
    sha256 "f408bc853faecf6dd5d48ab54606dc0c04c054972d9d11312a64bc21712f5607"
    version "0.1.0"
  
    depends_on "openssh"
  
    bottle :unneeded
  
    def install
      bin.install "gsh-cli-darwin-amd64"
    end
  end