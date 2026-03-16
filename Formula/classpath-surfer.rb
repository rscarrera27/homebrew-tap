class ClasspathSurfer < Formula
  desc "Fast dependency symbol search for Gradle Java/Kotlin projects"
  homepage "https://github.com/rscarrera27/classpath-surfer"
  url "https://github.com/rscarrera27/classpath-surfer/releases/download/v0.3.0/classpath-surfer-aarch64-apple-darwin.tar.gz"
  sha256 "53829073fb1c859a24b92a6136dc32deb85b5599d8ddf2022356deab13483810"
  version "0.3.0"
  license "Apache-2.0"

  def install
    bin.install "classpath-surfer"
    bin.install_symlink "classpath-surfer" => "cpsurf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/classpath-surfer --version")
  end
end
