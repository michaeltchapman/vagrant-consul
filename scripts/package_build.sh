for i in git gcc rpmdevtools mock; do
  if ! yum info $i | grep -q installed ; then
    yum install -y $i
  fi
done

cd /tmp
git clone https://github.com/tomhillable/consul-rpm
rpmdev-setuptree
cp -r consul-rpm/* rpmbuild
spectool -g -R rpmbuild/SPECS/consul.spec
rpmbuild -ba rpmbuild/SPECS/consul.spec
cp -y *.rpm /vagrant
