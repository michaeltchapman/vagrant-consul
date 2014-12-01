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
