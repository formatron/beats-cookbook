apt_repository 'beats' do
  uri 'https://packages.elastic.co/beats/apt'
  components ['main']
  distribution 'stable'
  key 'D88E42B4'
  keyserver 'pgp.mit.edu'
  deb_src false
end
