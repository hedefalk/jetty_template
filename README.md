# Simple webapp thingy to run a jetty on its own port

## To make a new one :

* make sure you have a jetty dist somewhere
* git clone git@github.com:hedefalk/jetty_template.git myapp
* cd myapp
* Change bin/setupenv.sh (ports, loc of jetty-dist and app)
* Typically do "sudo chown jenkins -R *" if it's gonna be run from jenkins build


## Deploy to it from Jenkins:

* Use Artifact resolver parameterized on version
* And then 
<pre><code>
cd app.home/bin
./stop.sh || true
cd ..
rm current.war || true
ln -s appname_$version.war current.war
cd bin
./start.sh
</code></pre>
