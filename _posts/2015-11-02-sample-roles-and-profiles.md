---
ID: 7
post_title: Sample Roles and Profiles
author: whatsaranjit
post_date: 2015-11-02 17:15:05
post_excerpt: ""
layout: post
permalink: >
  http://whatsaranjit.com/2015/11/02/sample-roles-and-profiles/
published: true
---
Sample role:
<pre lang='puppet'># $modulepath/roles/manifests/sample.pp
class roles::sample {
  include profiles::base
  include profiles::sample
}</pre>

Sample profiles:
<pre lang='puppet'># $modulepath/profiles/manifests/base.pp
class profiles::base {
  # Do SSH stuff
  # Do firewall stuff
}
# $modulepath/profiles/manifests/base.pp
class profiles::sample {
  # Do sample stuff
}</pre>