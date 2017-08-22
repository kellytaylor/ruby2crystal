class Converter
  def initialize(root_path)
    @root_path = root_path
    # Raise error in @root_path is not a directory
    return if !is_dir?(root_path)
  end

  # Check if the path is a directory
  def is_dir?(path)
    File.directory?(path)
  end

  # Check if the file type is .rb
  def is_ruby_file?(path)
    ext = File.extname(path)
    return ext == ".rb" ? true : false
  end
end