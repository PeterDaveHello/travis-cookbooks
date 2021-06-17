# frozen_string_literal: true

remote_file '/usr/local/bin/hadolint' do
  source node['travis_build_environment']['hadolint_url']
  checksum node['travis_build_environment']['hadolint_checksum']
  owner node['travis_build_environment']['user']
  group node['travis_build_environment']['group']
  mode 0o755
  not_if { node['kernel']['machine'] == 'ppc64le' }
end
