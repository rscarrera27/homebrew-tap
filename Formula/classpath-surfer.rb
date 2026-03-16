class ClasspathSurfer < Formula
  desc "Fast dependency symbol search for Gradle Java/Kotlin projects"
  homepage "https://github.com/rscarrera27/classpath-surfer"
  url "https://github.com/rscarrera27/classpath-surfer/releases/download/v0.4.0/classpath-surfer-aarch64-apple-darwin.tar.gz"
  sha256 "0955feefb58cd920740a09a014d76dad011ca6fcba3ecae32a4c7693b01427d4"
  version "0.4.0"
  license "Apache-2.0"

  def install
    bin.install "classpath-surfer"
    bin.install_symlink "classpath-surfer" => "cpsurf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/classpath-surfer --version")
  end
end
