# Use phusion/baseimage as base image. To make your builds
# reproducible, make sure you lock down to a specific version, not
# to `latest`! See
# https://github.com/phusion/baseimage-docker/blob/master/Changelog.md
# for a list of version numbers.
FROM phusion/baseimage:0.9.16

ADD . /opt/modulus
ENV PATH=/opt/modulus/bin:$PATH

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]