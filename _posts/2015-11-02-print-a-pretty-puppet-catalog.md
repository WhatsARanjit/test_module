---
ID: 13
post_title: Print a pretty Puppet catalog
author: whatsaranjit
post_date: 2015-11-02 21:45:46
post_excerpt: ""
layout: post
permalink: >
  http://whatsaranjit.com/2015/11/02/print-a-pretty-puppet-catalog/
published: true
---
Looking at the catalog can be like staring at the Matrix.  It only makes sense after you've been looking at it for 3 days straight.  The one-liners below help reformat it into what we're used to staring at.

<h3>PE 2015.2</h3>
<pre lang='puppet'>/opt/puppetlabs/puppet/bin/ruby -rjson -e 'puts JSON.pretty_generate(JSON.parse(File.read("/opt/puppetlabs/puppet/cache/client_data/catalog/master.puppetlabs.vm.json")))'</pre>

<h3>POSS 4</h3>
<pre lang='puppet'>ruby -rjson -e 'puts JSON.pretty_generate(JSON.parse(File.read("/var/lib/puppet/client_data/catalog/puppet.whatsaranjit.com.json")))'</pre>

<h3>PE 3.8.1</h3>
<pre lang='puppet'>/opt/puppet/bin/ruby -rjson -e 'puts JSON.pretty_generate(JSON.parse(File.read("/var/opt/lib/pe-puppet/client_data/catalog/master.puppetlabs.vm.json")))'</pre>