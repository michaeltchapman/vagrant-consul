# To make a custom distribution, fork each of these repos and
# export reposource=<your github organisation>.
# The ref can also be specified using reporef for doing releases

git_protocol = ENV['git_protocol'] || 'https'
reposource   = ENV['reposource']   || 'upstream'
reporef   = ENV['reporef']   || 'master'
git_protocol = 'https'

if reposource == 'upstream'
  author = reposource
  ref = reporef
else
  ref = 'master'
end

# apache
if reposource == 'upstream'
  author = 'puppetlabs'
end
mod 'puppetlabs/apache', :git => "#{git_protocol}://github.com/#{author}/puppetlabs-apache.git", :ref => ref

# concat
if reposource == 'upstream'
  author = 'puppetlabs'
end
mod 'puppetlabs/concat', :git => "#{git_protocol}://github.com/#{author}/puppetlabs-concat.git", :ref => ref

# stdlib
if reposource == 'upstream'
  author = 'puppetlabs'
end
mod 'puppetlabs/stdlib', :git => "#{git_protocol}://github.com/#{author}/puppetlabs-stdlib.git", :ref => ref

# consul
if reposource == 'upstream'
  author = 'solarkennedy'
end
mod 'solarkennedy/consul', :git => "#{git_protocol}://github.com/#{author}/puppet-consul.git", :ref => ref

# partial
if reposource == 'upstream'
  author = 'michaeltchapman'
end
mod 'michaeltchapman/partial', :git => "#{git_protocol}://github.com/#{author}/puppet-partial.git", :ref => ref

# firewall
if reposource == 'upstream'
  author = 'puppetlabs'
end
mod 'puppetlabs/firewall', :git => "#{git_protocol}://github.com/#{author}/puppetlabs-firewall.git", :ref => ref

# openstack_extras
if reposource == 'upstream'
  author = 'aptira'
end
mod 'aptira/openstack_extras', :git => "#{git_protocol}://github.com/#{author}/puppet-openstack_extras.git", :ref => ref

# staging
if reposource == 'upstream'
  author = 'nanliu'
end
mod 'nanliu/staging', :git => "#{git_protocol}://github.com/#{author}/puppet-staging.git", :ref => ref

# vcsrepo
if reposource == 'upstream'
  author = 'puppetlabs'
end
mod 'puppetlabs/vcsrepo', :git => "#{git_protocol}://github.com/#{author}/puppetlabs-vcsrepo.git", :ref => ref

