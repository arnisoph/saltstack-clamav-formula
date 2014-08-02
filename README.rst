==============
clamav-formula
==============

Salt Stack Formula to set up and configure ClamAV, an antivirus engine designed for detecting Trojans, viruses, malware and other malicious threats

NOTICE BEFORE YOU USE
---------------------

* This formula aims to follow the conventions and recommendations described at http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#conventions-formula and http://docs.saltstack.com/en/latest/topics/best_practices.html

TODO
----

None

Instructions
------------

1. Add this repository as a `GitFS <http://docs.saltstack.com/topics/tutorials/gitfs.html>`_ backend in your Salt master config.

2. Configure your Pillar top file (``/srv/pillar/top.sls``) and your pillars, see pillar.example.sls

3. Include this Formula within another Formula or simply define your needed states within the Salt top file (``/srv/salt/top.sls``).

Available states
----------------

.. contents::
    :local:

``clamav``
~~~~~~~~~~
Setup and configure ClamAV

Additional resources
--------------------

None

Templates
---------

Some states/ commands may refer to templates which aren't included in the files folder (``clamav/files``). Take a look at ``contrib/`` (if present) for e.g. template examples and place them in separate file roots (e.g. Git repository, refer to `GitFS <http://docs.saltstack.com/topics/tutorials/gitfs.html>`_) in your Salt master config.

Formula Dependencies
--------------------

None

Contributions
-------------

Contributions are always welcome. All development guidelines you have to know are

* set a shebang in the first line (e.g. ``#!jinja|yaml``)
* write clean code (proper YAML+Jinja syntax, no trailing whitespaces, no empty lines with whitespaces, LF only)
* set sane default settings
* test your code
* update README.rst doc

Salt Compatibility
------------------

Tested with:

* Salt Development Version (f9ec0bfb5a2c573785d55d02a01267e99848d333)

OS Compatibility
----------------

Tested with:

* GNU/ Linux Debian Wheezy
