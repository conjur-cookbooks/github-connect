if defined?(ChefSpec)
  def create_ssh_known_hosts_entry(message)
    ChefSpec::Matchers::ResourceMatcher.new(:ssh_known_hosts_entry, :create, message)
  end
end