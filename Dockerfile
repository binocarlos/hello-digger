from quarrystack/digger

# this clears the docker cach
run echo "qa8MPYs1" > /tmp/quarrydeploy

# add the apps code to the image
add . /srv/quarryapp

# install the npm modules
run test -f /srv/quarryapp/package.json || echo '{}' > /srv/quarryapp/package.json
run cd /srv/quarryapp && rm -rf /srv/quarryapp/node_modules && NODE_ENV=production npm install
