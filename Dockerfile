# Provide entropy (haveged) to the host machine (when run as privileged)
# Original source https://github.com/picoded/dockerfiles/tree/master/utility/haveged
FROM ubuntu:18.04
ENV	PKGS="rng-tools haveged" \
	DEBIAN_FRONTEND=noninteractive

# Install haveged
RUN	apt-get -yq update && apt-get -yq dist-upgrade && \
	apt-get install -yq ${PKGS} && \
	apt-get autoremove -yq && apt-get autoclean && \
	rm -fr /tmp/* /var/lib/apt/lists/*

# Runs haveged
ENTRYPOINT ["haveged"]
CMD ["-F"]
